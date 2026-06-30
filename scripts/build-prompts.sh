#!/usr/bin/env bash
# 4개 모델 prompts.md 생성: 헤더 + 한국어 본문
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
BODY="$ROOT/prompts/ko/body.md"
BODY_PPL="$ROOT/prompts/ko/body-perplexity.md"

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

> **권장 모델**: `gpt-5.5` · **라이브러리**: v2.3.0  
> 공식: [OpenAI Prompting](https://developers.openai.com/api/docs/guides/prompting)

아래 블록 중 **필요한 하나만** 복사해 ChatGPT에 붙여넣고, `[ ]` 안을 채워 사용해 주세요.

### 사용 가이드 (GPT-5.5 공식 최적화)

| 구분 | 넣는 위치 |
|------|----------|
| **역할·톤·형식** | [custom-instructions/chatgpt.md](../custom-instructions/chatgpt.md) → Custom Instructions |
| **프롬프트 블록 + 채운 `[ ]`** | 채팅 입력(input) |
| **수치·표·이전 LLM 답변** | input **맨 위**에 붙이기 |

- **Outcome-first**: 블록 위에 "이번에 결정할 것: …" 한 줄을 적어 주세요.
- **한 번에 프레임워크 1개**만 — 여러 Part 섞지 않기.
- 답변 후 **Part 8 Fact Checker**(같은 도메인 8-x3) 권장.

### 카테고리별 추천 (GPT-5.5)

| Part | 추천 ID | 팁 |
|------|---------|-----|
| 1 전략 | 1-1, 1-7, **1-12** | 이전 단계 output → 다음 input |
| 2 마케팅 | 2-1, 2-3 | KPI·예산 숫자를 input 첫 단락 |
| 3 커머스 | 3-1, 3-2 | 채널 비중·전환율 필수 |
| 4 기획 | 4-1 | 4-2→4-3은 **메시지 분리** |
| 5 PR | 5-2, 5-9 | 팩트만 input; 규제는 별도 턴 |
| 6 데이터 | 6-1, 6-3 | "없는 수치 생성 금지"를 Instructions에 |
| 7 조직 | 7-1 | KR 측정식·기한 명시 |
| 8 부록 | 8-x1, 8-x2 | Agent는 단계·중단 조건 명시 |

상세: [guides/MODEL_PROMPT_GUIDELINES.md](../guides/MODEL_PROMPT_GUIDELINES.md) · [guides/CATEGORY_MODEL_TIPS.md](../guides/CATEGORY_MODEL_TIPS.md)

---'

CLAUDE_HEADER='# Claude용 프롬프트 — 전략·마케팅·기획·PR

> **권장 모델**: `claude-opus-4-8` · **라이브러리**: v2.3.0  
> 공식: [Claude Prompting](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/claude-prompting-best-practices) · [Opus 4.8](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-opus-4-8)

아래 블록 중 **필요한 하나만** 복사해 Claude에 붙여넣고, `[ ]` 안을 채워 사용해 주세요.

### 사용 가이드 (Opus 4.8 공식 최적화)

| 구분 | 넣는 위치 |
|------|----------|
| **역할·톤** | [custom-instructions/claude.md](../custom-instructions/claude.md) → 시스템 프롬프트 |
| **긴 데이터·이전 답변** | `<data>…</data>` 또는 메시지 **앞부분** |
| **프롬프트 블록** | `<task>…</task>` 또는 user 메시지 |

- **Adaptive thinking** ON · 복잡 작업(1-12, 5-4, 6-2, 8-x2)은 effort **high~xhigh**.
- 지시의 **번호 항목·형식을 문자 그대로** 따르게 — 블록을 수정하지 말고 그대로.
- 체인 시 이전 답변 전체를 `<data>`에 포함.

### XML 래핑 예시

    <context>[회사·의사결정 맥락]</context>
    <data>[수치·표·이전 LLM 답변]</data>
    <task>(프롬프트 블록)</task>

### 카테고리별 추천 (Opus 4.8)

| Part | 추천 ID | effort |
|------|---------|--------|
| 1 전략 | 1-5, 1-10, **1-12** | high~xhigh |
| 2~3 | 2-1~3, 3-2 | high |
| 4 기획 | 4-3 브리프 | medium~high |
| 5 PR | **5-4** 위기, 5-6 Q&A | xhigh |
| 6 데이터 | 6-2 A/B, 6-1 | high |
| 7 조직 | 7-2, 7-3 | high |
| 8 부록 | 8-x2 Agent | xhigh |

상세: [guides/MODEL_PROMPT_GUIDELINES.md](../guides/MODEL_PROMPT_GUIDELINES.md) · [guides/CATEGORY_MODEL_TIPS.md](../guides/CATEGORY_MODEL_TIPS.md)

---'

GEMINI_HEADER='# Gemini용 프롬프트 — 전략·마케팅·기획·PR

> **권장 모델**: `gemini-3.5-flash` · **라이브러리**: v2.3.0  
> 공식: [Prompt design strategies](https://ai.google.dev/gemini-api/docs/prompting-strategies) · [Gemini 3.5 Flash](https://ai.google.dev/gemini-api/docs/models/gemini-3.5-flash)

아래 블록 중 **필요한 하나만** 복사해 Gemini에 붙여넣고, `[ ]` 안을 채워 사용해 주세요.

### 사용 가이드 (Gemini 3.5 Flash 공식 최적화)

| 구분 | 넣는 위치 |
|------|----------|
| **페르소나·해요체·표 출력** | [custom-instructions/gemini.md](../custom-instructions/gemini.md) → System Instruction |
| **긴 문서·GA4·표** | user 메시지 **앞** |
| **프롬프트 블록** | user 메시지 **맨 뒤** + "위 정보를 바탕으로…" |

- **Thinking**: 단순 초안 low · 분석·합성 medium~high.
- **Temperature**: API 사용 시 기본 **1.0** 유지 (공식 권장).
- PR·규제(5-9): **제약·금지 표현**을 지시문 **맨 끝**에 한 번 더.
- 표·불릿 출력을 명시하면 Gemini에 특히 잘 맞아요.

### 구조 예시

    ## 맥락
    [채운 [ ] 요약]

    ## 과제
    (프롬프트 블록)

    ## 제약
    - 해요체, 번호 항목 순서 유지, 표·불릿 출력

### 카테고리별 추천 (Gemini 3.5 Flash)

| Part | 추천 ID | 팁 |
|------|---------|-----|
| 1 전략 | 1-1, 1-7 | 빠른 초안 · thinking medium |
| 2 마케팅 | 2-1, 2-2 | 채널·KPI **표** |
| 3 커머스 | 3-1~3 | 퍼널 표 |
| 4 기획 | **4-2** | 아이디어 8~12안 |
| 5 PR | 5-2 | 헤드라인 3안 · 제약 맨 끝 |
| 6 데이터 | 6-1 | 데이터 앞 / 질문 뒤 |
| 7 조직 | 7-1, 7-3 | OKR·로드맵 표 |
| 8 부록 | **8-x2** Agent | 에이전틱 설계 최적 |

상세: [guides/MODEL_PROMPT_GUIDELINES.md](../guides/MODEL_PROMPT_GUIDELINES.md) · [guides/CATEGORY_MODEL_TIPS.md](../guides/CATEGORY_MODEL_TIPS.md)

---'

PERPLEXITY_HEADER='# Perplexity용 프롬프트 — 전략·마케팅·기획·PR

> **권장 모델**: Perplexity Pro (Research) · **라이브러리**: v2.3.0

아래 블록 중 **필요한 하나만** 복사해 Perplexity에 붙여넣고, `[ ]` 안을 채워 사용해 주세요.

### 사용 가이드
- 산업명·회사명·시장을 **구체적으로** — 검색 품질에 직결.
- 각 블록에 **검색·출처 안내**가 포함되어 있어요.
- 산업·보도·벤치가 필요한 Part: **1-2, 1-6, 2-1, 5-x, 6-1**.
- ChatGPT·Claude·Gemini 가이드: [guides/MODEL_PROMPT_GUIDELINES.md](../guides/MODEL_PROMPT_GUIDELINES.md)

---'

write_prompt "chatgpt" "$CHATGPT_HEADER" "$BODY"
write_prompt "claude"  "$CLAUDE_HEADER"  "$BODY"
write_prompt "gemini"  "$GEMINI_HEADER"  "$BODY"
write_prompt "perplexity" "$PERPLEXITY_HEADER" "$BODY_PPL"

echo ""
echo "빌드 완료: 4개 모델 prompts.md 생성됨"
