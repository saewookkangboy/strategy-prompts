# Notion · Obsidian 호환 가이드

이 레포의 마크다운을 **Notion** 또는 **Obsidian** 위키에 임포트할 때 참고해 주세요.

---

## 공통 규칙

| 항목 | 권장 |
|------|------|
| 파일 단위 | Part별 또는 프레임워크 ID별로 분할 임포트 |
| 제목 계층 | `# Part` → `## N-N. 제목` → 프롬프트 코드 블록 |
| 태그 | `#전략` `#마케팅` `#PR` `#데이터` `#조직` + 난이도 |
| 링크 | `INDEX.md`의 ID를 내부 링크 앵커로 사용 |

---

## Notion

1. **전체 임포트**: `chatgpt/prompts.md` 등을 Notion Import(Markdown)로 가져옵니다.
2. **DB 구성**: Notion 데이터베이스 컬럼 예시
   - `ID` (텍스트): 1-1, 5-2 …
   - `Part` (선택): 전략 / 마케팅 / 커머스 / 기획 / PR / 데이터 / 조직
   - `난이도` (선택): 초급 / 중급 / 고급
   - `소요` (숫자): 분
   - `프롬프트` (코드 블록 속성 또는 페이지 본문)
3. **토글**: 긴 프롬프트는 토글 블록 안에 코드 블록으로 넣으면 스크롤이 줄어듭니다.
4. **연결**: `workflows/WORKFLOWS.md` 체인을 Notion 링크드 DB Relation으로 연결할 수 있어요.

---

## Obsidian

1. **Vault 구조 예시**

```
strategy-prompts/
├── 00-Index.md          ← INDEX.md 복사
├── Part1-전략/
│   ├── 1-1 MECE.md
│   └── ...
├── Part5-PR/
├── Workflows.md
└── Templates/
    └── 출력검증.md
```

2. **프론트매터 템플릿** (각 노트 상단)

```yaml
---
id: 1-1
part: 전략
level: 초급
minutes: 15
tags: [전략, MECE, 문제정의]
---
```

3. **Dataview** (플러그인 사용 시): `part`, `level`로 필터링한 목록 뷰 생성
4. **템플릿**: `examples/sample-input.md`를 Templater 스니펫으로 등록

---

## 분할 스크립트 (선택)

프레임워크별 개별 파일이 필요하면:

```bash
# 예: body.md에서 ## 헤더 기준 분할 (수동 검수 권장)
csplit -f framework- prompts/ko/body.md '/^## /' '{*}'
```

분할 후 Obsidian 노트로 일괄 임포트하는 방식을 권장해요.
