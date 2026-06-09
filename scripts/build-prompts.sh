#!/usr/bin/env bash
# 4개 모델 prompts.md 생성: 헤더 + 한국어 본문
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
BODY="$ROOT/prompts/ko/body.md"
BODY_PPL="$ROOT/prompts/ko/body-perplexity.md"

# Perplexity 본문 생성 (검색·출처 안내 삽입)
perl -pe 'if (/^형식: /) { $_ .= "\n\n검색 안내: 가능하면 최신 산업 데이터·보도·리포트를 참고해 주세요. 외부 자료를 사용했다면 출처를 함께 알려 주세요.\n" }' \
  "$BODY" > "$BODY_PPL"

write_prompt() {
  local model="$1"
  local header="$2"
  local body_file="$3"
  local out="$ROOT/$model/prompts.md"

  {
    printf '%s\n\n' "$header"
    cat "$body_file"
  } > "$out"

  echo "✓ $out"
}

CHATGPT_HEADER='# ChatGPT용 프롬프트 — 전략·마케팅·기획·PR

> **권장 모델**: GPT-5.5 · **버전**: v2.2.0

아래 블록 중 **필요한 하나만** 복사해 ChatGPT에 붙여넣고, `[ ]` 안을 본인 상황으로 채워 사용해 주세요.

### 사용 가이드
- 한 번에 **프레임워크 1개**만 사용하는 것을 권장해요.
- `[ ]` 플레이스홀더를 먼저 채운 뒤 실행하면 결과가 좋아요.
- 답변이 길면 마지막에 "각 항목을 표로 정리해 주세요"를 추가해 보세요.
- 연속 분석은 `workflows/WORKFLOWS.md`의 워크플로를 참고해 주세요.

---'

CLAUDE_HEADER='# Claude용 프롬프트 — 전략·마케팅·기획·PR

> **권장 모델**: Claude Opus 4.8 · **버전**: v2.2.0

아래 블록 중 **필요한 하나만** 복사해 Claude에 붙여넣고, `[ ]` 안을 본인 상황으로 채워 사용해 주세요.

### 사용 가이드
- 긴 맥락(데이터, 분석 결과)을 함께 붙여넣으면 추론 품질이 높아져요.
- 역할 + 출력 항목 형식을 잘 따르니, 프롬프트를 그대로 쓰는 것을 권장해요.
- 필요하면 답변 후 "표나 불릿으로 요약해 주세요"를 추가해 주세요.
- 연속 분석은 `workflows/WORKFLOWS.md`의 워크플로를 참고해 주세요.

---'

GEMINI_HEADER='# Gemini용 프롬프트 — 전략·마케팅·기획·PR

> **권장 모델**: Gemini 3.5 Flash · **버전**: v2.2.0

아래 블록 중 **필요한 하나만** 복사해 Gemini에 붙여넣고, `[ ]` 안을 본인 상황으로 채워 사용해 주세요.

### 사용 가이드
- 빠른 초안이 필요할 때 활용하기 좋아요.
- 답변 시 **"표와 불릿으로 정리해 줘"**를 추가하면 활용도가 높아져요.
- 복잡한 분석은 Thinking 모드를 권장해요.
- 연속 분석은 `workflows/WORKFLOWS.md`의 워크플로를 참고해 주세요.

---'

PERPLEXITY_HEADER='# Perplexity용 프롬프트 — 전략·마케팅·기획·PR

> **권장 모델**: Perplexity Pro (Research) · **버전**: v2.2.0

아래 블록 중 **필요한 하나만** 복사해 Perplexity에 붙여넣고, `[ ]` 안을 본인 상황으로 채워 사용해 주세요.

### 사용 가이드
- 산업명·회사명·시장을 **구체적으로** 넣어 주세요.
- 각 프롬프트에 검색·출처 안내가 포함되어 있어요. Pro/Research 모드 사용을 권장해요.
- 연속 분석은 `workflows/WORKFLOWS.md`의 워크플로를 참고해 주세요.

---'

write_prompt "chatgpt" "$CHATGPT_HEADER" "$BODY"
write_prompt "claude"  "$CLAUDE_HEADER"  "$BODY"
write_prompt "gemini"  "$GEMINI_HEADER"  "$BODY"
write_prompt "perplexity" "$PERPLEXITY_HEADER" "$BODY_PPL"

echo ""
echo "빌드 완료: 4개 모델 prompts.md 생성됨"
