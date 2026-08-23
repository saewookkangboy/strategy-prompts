<p align="center">
  <img src="./assets/readme/hero.svg" width="100%" alt="strategy-prompts — 전략부터 슬라이드까지 복사해서 바로 쓰는 한국어 업무 프레임워크 63개, ChatGPT GPT-5.6 · Claude Opus 5 · Gemini 3.7 Flash">
</p>

<p align="center">
  <strong>v2.5.0</strong> · 한국어 해요체 · 프롬프트 <strong>63개</strong> (본 42 + 부록 21) · 2026년 8월
</p>

<p align="center">
  ChatGPT <strong>GPT-5.6</strong> · Claude <strong>Opus 5</strong> · Gemini <strong>3.7 Flash</strong>에서<br/>
  그대로 복사해 쓰는 전략·마케팅·기획·PR·리서치·보고서 프롬프트 모음
</p>

---

## 이 레포가 하는 일

"전략 좀 짜줘"만 던지면 읽을 때는 그럴듯한데, 회의에 가져가면 바로 걸리는 답이 나오는 경우가 많아요. 모델 탓이라기보다 **뭘 알려줘야 하는지, 어떤 형태로 받을지**를 안 적어준 경우가 대부분이에요.

이 레포는 MECE·SWOT·채널 전략·보도자료·리서치·슬라이드처럼 **현장에서 쓰는 틀**을 한국어 해요체 프롬프트로 박아 둔 라이브러리예요. 틀을 매번 새로 짜는 시간을 줄이고, LLM에게 넘기는 **업무 브리프**를 바로 복사하게 합니다.

| 잘 썼을 때 | 대충 썼을 때 |
|-----------|-------------|
| 표·우선순위·보고서·덱 골격이 잡힌 초안을 팀에 넘길 수 있어요 | "좀 더 구체적으로요"만 쌓이고 결국 사람이 처음부터 다시 씁니다 |

<p align="center">
  <img src="./assets/readme/chain-proof.svg" width="100%" alt="전략 덱 체인: 6-4 리서치 → 6-5 마이닝 → 8-18 Fact Check → 6-6 보고서 → 6-7·6-8·6-9 덱·디자인·도식">
</p>

---

## 바로 시작하기

<p align="center">
  <img src="./assets/readme/workflow.svg" width="100%" alt="5단계: 시스템 프롬프트 → 블록 복사 → [ ] 채우기 → LLM 실행 → Fact Checker 검증">
</p>

1. (선택) [custom-instructions/](custom-instructions/)에서 모델 시스템 프롬프트를 저장해요.
2. [INDEX.md](INDEX.md)에서 ID 하나를 고릅니다.
3. [chatgpt/prompts.md](chatgpt/prompts.md) · [claude/prompts.md](claude/prompts.md) · [gemini/prompts.md](gemini/prompts.md)에서 **블록 하나만** 복사해요.
4. `[ ]`에 회사명·숫자·기한·제약을 채웁니다. [presets/](presets/) · [examples/](examples/) 참고.
5. 실행 후 같은 도메인 **Fact Checker**(8-x3)로 한 번 더 봅니다.

| 상황 | 시작 ID |
|------|---------|
| 문제가 뒤죽박죽 | **1-1** MECE |
| 이사회·경영 보고 | **1-3** → **1-12** |
| 채널·예산 | **2-1** |
| 보도자료 | **5-2** → **5-9** → **8-15** |
| 위기 대응 | **5-5** → **5-4** → **5-6** |
| GA4만 있음 | **6-1** → **8-18** → **6-3** |
| 전략 리서치부터 | **6-4** → **6-5** → **8-18** |
| 데이터 → 전략 보고서 | **6-5** → **6-6** |
| 슬라이드 덱·디자인 | **6-7** → **6-8** → **6-9** |
| 분기 OKR | **7-1** |
| 프롬프트 손보기 | **8-x1** PE |
| 에이전트 설계 | **8-x2** Agent |

체인 전체: [workflows/WORKFLOWS.md](workflows/WORKFLOWS.md)

---

<p align="center">
  <img src="./assets/readme/section-parts.svg" width="100%" alt="8개 도메인: 전략, 마케팅, 커머스, 기획, PR, 리서치·덱, 조직, 부록 — 총 63개 프롬프트">
</p>

## Part 한눈에 보기

| 지금 필요한 것 | Part | 대표 ID | 나오는 것 |
|-------------|------|---------|----------|
| 문제 정리·의사결정 | 1 전략 | 1-1 · 1-7 · 1-12 | 이슈 트리, SWOT, 이사회용 합성 |
| 채널·콘텐츠·광고 | 2 마케팅 | 2-1 · 2-3 | 채널 맵, 광고 운영안 |
| 매출·전환·재구매 | 3 커머스 | 3-1 · 3-2 | 가격·프로모, CRO |
| 캠페인·브리프 | 4 기획 | 4-2 · 4-3 · 4-1 | 아이디어 → 메시지 → 브리프 |
| 보도·위기·평판 | 5 PR | 5-2 · 5-4 · 5-9 | 보도자료, 위기 Q&A, 규제 체크 |
| 리서치·보고서·덱 | 6 데이터·리서치 | 6-4 · 6-6 · 6-7 · 6-9 | 마이닝, 전략 보고서, 템플릿·도식 |
| 실행·조직 | 7 조직 | 7-1 · 7-3 | OKR, 90일 로드맵 |
| PE · Agent · 검증 | 8 부록 | 8-x1 · 8-x2 · 8-x3 | 프롬프트 개선, 에이전트, Fact Checker |

난이도·소요 시간·전체 ID: [INDEX.md](INDEX.md)

**자주 쓰는 체인**

- 전략: `1-1 → 1-7 → 1-12`
- 보도: `5-2 → 5-9 → 8-15`
- 웹·그로스: `6-1 → 8-18 → 6-3`
- 전략 덱: `6-4 → 6-5 → 8-18 → 6-6 → 6-7 → 6-8 → 6-9`

---

## 모델 선택 (2026년 8월)

| 모델 | API ID | 파일 | 잘 맞는 일 |
|------|--------|------|-----------|
| **ChatGPT** | `gpt-5.6-sol` (Sol / Terra / Luna) | [chatgpt/prompts.md](chatgpt/prompts.md) | 표·리포트·덱 골격, Think 슬라이더 |
| **Claude** | `claude-opus-5` (Sonnet 5 병행) | [claude/prompts.md](claude/prompts.md) | 긴 맥락·리서치·마이닝, 위기·합성 |
| **Gemini** | `gemini-3.7-flash` | [gemini/prompts.md](gemini/prompts.md) | 빠른 초안, 아이디어, 에이전트 |
| Perplexity | Pro | [perplexity/prompts.md](perplexity/prompts.md) | 산업·보도·벤치 (출처) |

| Part | ChatGPT | Claude | Gemini |
|------|---------|--------|--------|
| 1 전략 | Sol · 1-12 | Opus 5 · high~xhigh | 1-1, 1-7 초안 |
| 2~3 | Terra/Sol · KPI 표 | Opus 5 · CRO | 채널·퍼널 표 |
| 4 기획 | Luna→Sol | Sonnet → Opus | 4-2 아이디어 |
| 5 PR | Sol · 5-2 | Opus 5 · 5-4 xhigh | 헤드라인 3안 |
| 6 리서치·덱 | Sol · 6-6·6-7 | Opus 5 · 6-4·6-5·6-8·6-9 | 6-1·6-5 EDA |
| 7 조직 | Terra · 7-1 | Opus 5 · RACI | 7-3 로드맵 |
| 8 부록 | Sol · Agent | Opus 5 · xhigh | 8-x2 |

가이드: [MODEL_PROMPT_GUIDELINES.md](guides/MODEL_PROMPT_GUIDELINES.md) · [CATEGORY_MODEL_TIPS.md](guides/CATEGORY_MODEL_TIPS.md)

---

## v2.5에서 바뀐 것

Part 6를 **데이터·분석·리서치·보고서**로 확장했습니다.

| ID | 내용 |
|----|------|
| **6-4** | 전략 리서치 설계·실행 |
| **6-5** | 데이터 분석·마이닝 |
| **6-6** | 데이터 기반 전략 보고서 |
| **6-7** | 전략 슬라이드 덱·템플릿 |
| **6-8** | 슬라이드 디자인 가이드 |
| **6-9** | 인포그래픽·도식화 스펙 |

상세: [CHANGELOG.md](CHANGELOG.md)

---

## 구조

| | |
|---|---|
| 프롬프트 | 63개 (업무 42 + 부록 21) |
| 문체 | 한국어 해요체 (`~해요`, `~해 주세요`) |
| 수정 | `prompts/ko/body.md` → `./scripts/build-prompts.sh` |
| 검증 | `./scripts/verify.sh` · Part 8 Fact Checker |

```
strategy-prompts/
├── prompts/ko/body.md          ← 내용 수정은 여기
├── assets/readme/              ← README SVG (hero · chain · workflow · parts)
├── chatgpt/ claude/ gemini/    ← 복사할 prompts.md
├── custom-instructions/        ← 모델별 시스템 프롬프트
└── INDEX.md, workflows/, examples/, guides/, presets/
```

| 필요할 때 | |
|----------|--|
| 전체 목차 | [INDEX.md](INDEX.md) |
| 입력 체크 | [guides/INPUT_CHECKLIST.md](guides/INPUT_CHECKLIST.md) |
| 채운 예시 | [examples/sample-input.md](examples/sample-input.md) · [before-after.md](examples/before-after.md) |
| 업종 문장 | [presets/INDUSTRY_PRESETS.md](presets/INDUSTRY_PRESETS.md) |
| 워크플로 | [workflows/WORKFLOWS.md](workflows/WORKFLOWS.md) |
| 기여 | [STYLE_GUIDE.md](STYLE_GUIDE.md) · [CONTRIBUTING.md](CONTRIBUTING.md) |

## 기여

```bash
./scripts/build-prompts.sh
./scripts/verify.sh
```

Part 1의 12개 전략 프레임워크 **항목 구조**는 원본 의도대로 유지해 주시면 됩니다.

## 라이선스

[MIT License](LICENSE) — 자유롭게 쓰고 고치셔도 됩니다.
