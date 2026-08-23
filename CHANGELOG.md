# Changelog

## [2.4.0] - 2026-08-23

### Changed
- **2026년 8월 기준 3모델 갱신**
  - ChatGPT: `gpt-5.5` → **GPT-5.6** (`gpt-5.6-sol` / Terra / Luna)
  - Claude: `claude-opus-4-8` → **`claude-opus-5`** (+ Sonnet 5 병행 가이드)
  - Gemini: `gemini-3.5-flash` → **`gemini-3.7-flash`**
- `prompts/ko/body.md` — Part 8 LLM 플레이스홀더·기준일 예시 갱신
- `custom-instructions/` — 3모델 공식 원칙 반영 (Think 슬라이더, Extended thinking, Antigravity)
- `guides/MODEL_PROMPT_GUIDELINES.md` · `guides/CATEGORY_MODEL_TIPS.md` — v2.4.0 전면 개정
- `chatgpt|claude|gemini/prompts.md` 상단 — 티어 선택 표·카테고리별 추천 갱신
- README · INDEX · STYLE_GUIDE · GOLDEN_SAMPLES — 모델명·추천 용도 갱신
- `assets/readme/` — [beautify-github-readme](https://github.com/oil-oil/beautify-github-readme) 스킬 반영 SVG 히어로·워크플로·섹션 헤더
- README 전면 재구성 — Value → Proof → 시작 가이드 → Part 맵 → 모델 표

## [2.3.0] - 2026-06-09

### Added
- `guides/MODEL_PROMPT_GUIDELINES.md` — ChatGPT 5.5 · Claude Opus 4.8 · Gemini 3.5 Flash 공식 프롬프트 가이드
- `guides/CATEGORY_MODEL_TIPS.md` — Part 1~8 카테고리별 3모델 최적화 표

### Changed
- `chatgpt|claude|gemini/prompts.md` 상단: 공식 문서 링크, instructions/input 분리, **카테고리별 추천 표**
- `custom-instructions/` — 3모델 공식 원칙 반영 (outcome-first, XML, System Instruction, effort/thinking)
- `scripts/verify.sh` — 가이드 문서·헤더 검증 항목 추가

## [2.2.0] - 2026-06-09

Merged via [PR #1](https://github.com/saewookkangboy/strategy-prompts/pull/1) into `main` (`850467b`). Release: [v2.2.0](https://github.com/saewookkangboy/strategy-prompts/releases/tag/v2.2.0).

### Added
- **Part 8 부록** 21개 — 7도메인 × (프롬프트 엔지니어링 / AI 에이전트 / Fact Checker)
  - 전략 8-1~8-3, 마케팅 8-4~8-6, 커머스 8-7~8-9, 기획 8-10~8-12
  - PR 8-13~8-15, 데이터 8-16~8-18, 조직 8-19~8-21
- INDEX Part 8 도메인별 매트릭스·활용 패턴
- README 부록 안내·빠른 선택 가이드 확장

### Changed
- 프레임워크 총 **36개 → 57개** (부록 21)
- verify.sh: 57섹션·114 코드펜스·Part 8 검증

## [2.1.0] - 2026-06-09

### Added
- **Part 6** 데이터·분석 3개 (6-1 GA4, 6-2 A/B, 6-3 대시보드 스토리텔링)
- **Part 7** 조직·실행 3개 (7-1 OKR, 7-2 스테이크홀더, 7-3 변화관리)
- **5-9** 커뮤니케이션 규제·컴플라이언스 체크 (표시광고법·개인정보·업종별)
- `custom-instructions/` — 모델별 시스템 프롬프트 4종
- `guides/INPUT_CHECKLIST.md` — Part별 입력 품질 체크리스트
- `guides/NOTION_OBSIDIAN.md` — Notion/Obsidian 임포트 가이드
- `examples/before-after.md` — 입력 Before/After 예시
- `testing/GOLDEN_SAMPLES.md` — 4모델 골든 샘플 테스트·루브릭
- 워크플로: 데이터 인사이트 체인, OKR·실행 체인, PR 규제 체크 단계

### Changed
- 프레임워크 총 **29개 → 36개**
- README 빠른 선택 가이드·활용 대상 확장
- verify.sh: Part 6·7·5-9 검증, 신규 문서 체크

## [2.0.0] - 2026-06-09

### Added
- Part 5 PR 커뮤니케이션 프레임워크 8개 (5-1 ~ 5-8)
- 단일 소스 본문: `prompts/ko/body.md`, `prompts/ko/body-perplexity.md`
- 빌드·검증 스크립트: `scripts/build-prompts.sh`, `scripts/verify.sh`
- `STYLE_GUIDE.md`, `INDEX.md`, `CONTRIBUTING.md`, `LICENSE`
- `workflows/WORKFLOWS.md` (프롬프트 체인·출력 검증)
- `examples/sample-input.md` (채워진 입력 예시)
- `presets/INDUSTRY_PRESETS.md` (업종 프리셋)

### Changed
- 전체 프롬프트 **한국어 해요체**로 전환
- 플레이스홀더 **한글화**
- 권장 모델 업데이트: GPT-5.5, Claude Opus 4.8, Gemini 3.5 Flash, Perplexity Pro
- README 전면 개편 (PR 도메인, v2 구조, 빠른 선택 가이드)
- ChatGPT·Claude 본문 중복 → 단일 소스 + 모델별 가이드만 분리

### Fixed
- README 폴더명 불일치 (`strategy-prompts-repo` → `strategy-prompts`)
- LICENSE 파일 누락

## [1.0.0] - 2026-03-10

### Added
- Part 1~4 프롬프트 21개 (ChatGPT, Gemini, Perplexity, Claude)
- README (한·영)
