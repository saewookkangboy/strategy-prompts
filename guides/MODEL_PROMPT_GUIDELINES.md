# 모델별 공식 프롬프트 가이드라인 (v2.3.0)

ChatGPT **GPT-5.5**, Claude **Opus 4.8**, Gemini **3.5 Flash**의 공식 문서를 바탕으로, 이 레포 프롬프트를 **어떻게** 쓰면 좋은지 정리했어요.

| 모델 | 권장 ID | 공식 문서 |
|------|---------|----------|
| ChatGPT | `gpt-5.5` | [Prompting](https://developers.openai.com/api/docs/guides/prompting) · [Prompt engineering](https://developers.openai.com/api/docs/guides/prompt-engineering) |
| Claude | `claude-opus-4-8` | [Prompting best practices](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/claude-prompting-best-practices) · [Opus 4.8](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-opus-4-8) |
| Gemini | `gemini-3.5-flash` | [Prompt design strategies](https://ai.google.dev/gemini-api/docs/prompting-strategies) · [Gemini 3.5 Flash](https://ai.google.dev/gemini-api/docs/models/gemini-3.5-flash) |

카테고리별 한 줄 팁: [CATEGORY_MODEL_TIPS.md](CATEGORY_MODEL_TIPS.md)

---

## 공통 원칙 (3모델)

1. **한 블록 = 한 프레임워크** — 여러 Part를 한 메시지에 섞지 않기
2. **`[ ]`를 먼저 채우기** — 맥락·수치·기한이 있어야 공식 가이드의 "명확한 지시"에 해당
3. **역할·출력·제약 분리** — 모델마다 `instructions` / `system` / 본문 위치만 다름
4. **검증 루프** — Part 8 Fact Checker(8-x3)로 수치·사실 재확인

---

## ChatGPT (GPT-5.5)

### 공식 핵심

| 원칙 | 적용 |
|------|------|
| **instructions vs input** | 역할·톤·형식 → Custom Instructions / 시스템; 사업 데이터·`[ ]` 채운 본문 → 사용자 메시지 |
| **Outcome-first** | "표로 정리"보다 **무엇을 결정할지**를 프롬프트 맨 위 한 줄에 적기 |
| **구조화 출력** | 본문의 번호 목록(`다음 내용을 포함해 주세요`)을 그대로 유지 — GPT-5.5가 섹션 헤더로 따름 |
| **에이전트·도구** | Part 8 Agent(8-x2) 설계 시 Responses API·도구 호출은 **단계·중단 조건**을 명시 |

### API·앱 설정 예시

```
[Custom Instructions = instructions]
전략·마케팅·PR 실무 컨설턴트. 한국어 해요체. 요청한 번호 항목을 빠짐없이 표·불릿으로.

[채팅 입력 = input]
(프롬프트 블록 1개 + 채운 [ ])
```

### 카테고리별 추가 한 줄

| Part | GPT-5.5 팁 |
|------|------------|
| 1 전략 | 권고 전 **1-8 So What?**; 합성(1-12) 전 이전 답변을 input에 첨부 |
| 2 마케팅 | KPI·예산 숫자를 input 상단에; 채널별 **역할 한 줄**씩 |
| 3 커머스 | 퍼널 단계별 **이탈률** 있으면 필수 |
| 4 기획 | 아이디어(4-2)와 브리프(4-3) **메시지 분리** |
| 5 PR | 배포 전 **5-9** 별도 실행; 팩트는 input에만 |
| 6 데이터 | 원시 표를 input에; "없는 수치 생성 금지"를 instructions에 |
| 7 조직 | OKR KR에 **기한·측정식**을 input에 |
| 8 부록 | PE(8-x1)에 **실패한 출력 예시**를 함께 |

---

## Claude (Opus 4.8)

### 공식 핵심

| 원칙 | 적용 |
|------|------|
| **명시적·구체적 지시** | 모호한 "좋은 분석" 대신 본문의 번호 항목 그대로 |
| **XML 구조** | 긴 데이터는 `<context>`, `<data>`, `<task>` 로 감싸기 (아래 템플릿) |
| **Adaptive thinking** | 복잡 분석(1-12, 5-4, 6-2, 8-x2): API에서 `thinking: adaptive`, effort **high~xhigh** |
| **문자 그대로 따름** | 프롬프트에 있는 출력 형식·항목 수를 **변경하지 말 것** — Opus 4.8은 지시를 문자 단위로 따르는 편 |
| **긴 맥락** | 이전 단계 LLM 답변·CSV를 **user 메시지 앞부분**에 두고, 프롬프트 블록은 `<task>`에 |

### XML 래핑 템플릿 (복사용)

```xml
<context>
[회사·산업·의사결정 맥락]
</context>

<data>
[수치·표·이전 LLM 답변]
</data>

<task>
[프롬프트 블록 전체]
</task>
```

### Effort 가이드 (공식)

| 작업 | effort |
|------|--------|
| 1-12 전략 합성, 5-4 위기, 8-x2 Agent | `xhigh` |
| 1-5 가설, 6-2 A/B, 7-1 OKR | `high` |
| 4-2 아이디어, 2-1 채널 초안 | `medium` |

(채팅 UI에서는 "깊이 생각해 주세요" / Extended thinking ON)

### 카테고리별 추가 한 줄

| Part | Claude 팁 |
|------|-----------|
| 1 전략 | 경쟁·SWOT 데이터를 `<data>`에; **반론 1~2개** 요청은 1-8·1-12에 유리 |
| 2~3 | 채널·퍼널 표를 XML로; 추론 depth 높게 |
| 4 기획 | 4-2 **8~12안** 후 4-3에서 메시지 고정 — 체인 권장 |
| 5 PR | 5-6 Q&A는 **문자 그대로** 따르게; 위기는 effort xhigh |
| 6 데이터 | 수치 재계산·인과 검증에 강점; 8-18과 병행 |
| 7 조직 | RACI·이해관계자 맵 표 형식 명시 |
| 8 부록 | Agent 프롬프트에 **서브에이전트 역할·중단 조건** XML로 |

---

## Gemini (3.5 Flash)

### 공식 핵심

| 원칙 | 적용 |
|------|------|
| **직접·간결** | 서론 없이 역할+과제; 한 프롬프트 블록이 이미 이 형식 |
| **구조 일관** | `<role>`, `<context>`, `<task>`, `<constraints>` 또는 Markdown `##` — **한 형식만** |
| **System Instruction** | 페르소나·해요체·표 출력 → [custom-instructions/gemini.md](../custom-instructions/gemini.md) |
| **긴 맥락** | 문서·GA4 덤프는 **앞**, 프롬프트 블록·질문은 **맨 뒤** + "위 정보를 바탕으로…" |
| **Thinking** | 복잡 분석: thinking **medium~high**; 단순 초안: **low** |
| **Temperature** | API 기본 **1.0** 유지 (공식 권장) |
| **제약 위치** | 법·규제·금지 표현(5-9, PR)은 **지시문 맨 끝**에 다시 한 번 |

### 구조 템플릿 (복사용)

```markdown
## 역할
(시스템에 두었으면 생략 가능)

## 맥락
[채운 [ ] 요약]

## 과제
(프롬프트 블록)

## 제약
- 한국어 해요체
- 요청 항목 번호 순서 유지
- 표·불릿으로 출력
```

### 카테고리별 추가 한 줄

| Part | Gemini 팁 |
|------|-----------|
| 1 전략 | 빠른 MECE·SWOT 초안; 합성은 thinking high |
| 2 마케팅 | 채널·KPI **표** 출력 요청이 잘 맞음 |
| 3 커머스 | 퍼널·CRO **표 + 우선순위** |
| 4 기획 | 4-2 아이디어 **다량 생성**에 강점 |
| 5 PR | 보도자료 헤드라인 3안; 규제 문구는 제약 섹션 맨 끝 |
| 6 데이터 | 대용량 붙여넣기 → **맥락 앞 / 질문 뒤** |
| 7 조직 | OKR·90일 로드맵 **표** |
| 8 부록 | Agent(8-x2)·에이전틱 루프 설계에 최적화된 모델 |

---

## 3모델 빠른 선택

| 상황 | 우선 모델 |
|------|----------|
| 표·리포트·섹션 나누기 | ChatGPT 5.5 |
| 긴 문서·추론·위기·전략 합성 | Claude Opus 4.8 |
| 빠른 초안·아이디어·에이전트 설계 | Gemini 3.5 Flash |
| 산업·보도·벤치 (출처) | Perplexity — [perplexity/prompts.md](../perplexity/prompts.md) |

---

## 이 레포와 공식 가이드 매핑

| 레포 요소 | ChatGPT | Claude | Gemini |
|-----------|---------|--------|--------|
| `custom-instructions/` | instructions | 시스템 프롬프트 | System Instruction |
| `prompts.md` 블록 | input | user (또는 `<task>`) | user 맨 끝 |
| `workflows/` 체인 | 이전 output → 다음 input | `<data>`에 이전 답변 | 맥락 앞에 이전 답변 |
| Part 8 Fact Checker | 검증 후 재프롬프트 | XML + effort high | 제약 맨 끝 + thinking |

문서 버전: v2.3.0 · [STYLE_GUIDE.md](../STYLE_GUIDE.md) · [CHANGELOG.md](../CHANGELOG.md)
