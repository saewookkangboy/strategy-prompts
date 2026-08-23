#!/usr/bin/env bash
# 저장소 무결성 검증
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
EXPECTED_SECTIONS=57
EXPECTED_FENCES=114
ERRORS=0

fail() {
  echo "✗ $1"
  ERRORS=$((ERRORS + 1))
}

pass() {
  echo "✓ $1"
}

echo "=== strategy-prompts 검증 (v2.4.0) ==="
echo ""

# 1. 프레임워크 섹션 수 일치 (## N-N. 패턴만 카운트)
for model in chatgpt claude gemini perplexity; do
  count=$(grep -cE '^## [0-9]+-[0-9]+\.' "$ROOT/$model/prompts.md" || true)
  if [ "$count" -eq "$EXPECTED_SECTIONS" ]; then
    pass "$model/prompts.md: 프레임워크 ${count}개"
  else
    fail "$model/prompts.md: 프레임워크 ${count}개 (기대: ${EXPECTED_SECTIONS})"
  fi
done

# 2. body.md 섹션 수
body_count=$(grep -cE '^## [0-9]+-[0-9]+\.' "$ROOT/prompts/ko/body.md" || true)
if [ "$body_count" -eq "$EXPECTED_SECTIONS" ]; then
  pass "prompts/ko/body.md: 프레임워크 ${body_count}개"
else
  fail "prompts/ko/body.md: 프레임워크 ${body_count}개 (기대: ${EXPECTED_SECTIONS})"
fi

# 3. 영문 지시문 잔존 검사
for f in "$ROOT/prompts/ko/body.md" "$ROOT"/{chatgpt,claude,gemini,perplexity}/prompts.md; do
  if grep -qE 'You are a|Deliver:|^Format:' "$f" 2>/dev/null; then
    fail "$(basename "$(dirname "$f")")/$(basename "$f"): 영문 지시문 잔존"
  fi
done
pass "영문 지시문(You are/Deliver/Format) 없음"

# 4. 코드 블록 수
for model in chatgpt claude gemini perplexity; do
  fences=$(grep -c '^```' "$ROOT/$model/prompts.md" || true)
  if [ "$fences" -eq "$EXPECTED_FENCES" ]; then
    pass "$model: 코드 펜스 ${fences}개 (${EXPECTED_SECTIONS}블록)"
  else
    fail "$model: 코드 펜스 ${fences}개 (기대: ${EXPECTED_FENCES})"
  fi
done

# 5. Part 5~7 핵심 섹션 존재
for model in chatgpt claude gemini perplexity; do
  for marker in '^## 5-9\. 커뮤니케이션 규제' '^## 6-3\. 대시보드' '^## 7-3\. 변화관리' '^## 8-21\. \[부록·조직\] Fact Checker'; do
    if ! grep -qE "$marker" "$ROOT/$model/prompts.md"; then
      fail "$model: $(echo "$marker" | sed 's/\^//g') 누락"
    fi
  done
  pass "$model: Part 5-9·6·7·8 부록 섹션 확인"
done

# 6. 필수 문서 존재
for doc in STYLE_GUIDE.md LICENSE CHANGELOG.md INDEX.md CONTRIBUTING.md; do
  if [ -f "$ROOT/$doc" ]; then
    pass "$doc 존재"
  else
    fail "$doc 누락"
  fi
done

for doc in \
  workflows/WORKFLOWS.md \
  examples/sample-input.md \
  examples/before-after.md \
  presets/INDUSTRY_PRESETS.md \
  guides/INPUT_CHECKLIST.md \
  guides/NOTION_OBSIDIAN.md \
  guides/MODEL_PROMPT_GUIDELINES.md \
  guides/CATEGORY_MODEL_TIPS.md \
  testing/GOLDEN_SAMPLES.md \
  custom-instructions/README.md; do
  if [ -f "$ROOT/$doc" ]; then
    pass "$doc 존재"
  else
    fail "$doc 누락"
  fi
done

# 7. Perplexity 검색 안내
ppl_notes=$(grep -c '검색 안내:' "$ROOT/perplexity/prompts.md" || true)
if [ "$ppl_notes" -eq "$EXPECTED_SECTIONS" ]; then
  pass "perplexity: 검색 안내 ${ppl_notes}개"
else
  fail "perplexity: 검색 안내 ${ppl_notes}개 (기대: ${EXPECTED_SECTIONS})"
fi

# 8. 모델 헤더 공식 가이드 링크
for model in chatgpt claude gemini; do
  if grep -q 'MODEL_PROMPT_GUIDELINES' "$ROOT/$model/prompts.md"; then
    pass "$model: 공식 가이드 링크 포함"
  else
    fail "$model: MODEL_PROMPT_GUIDELINES 링크 누락"
  fi
done

# 9. 카테고리별 추천 표 (3모델)
for model in chatgpt claude gemini; do
  if grep -q '카테고리별 추천' "$ROOT/$model/prompts.md"; then
    pass "$model: 카테고리별 추천 표"
  else
    fail "$model: 카테고리별 추천 표 누락"
  fi
done

echo ""
if [ "$ERRORS" -eq 0 ]; then
  echo "=== 검증 통과 ==="
  exit 0
else
  echo "=== 검증 실패: ${ERRORS}건 ==="
  exit 1
fi
