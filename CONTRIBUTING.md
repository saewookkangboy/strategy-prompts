# 기여 가이드

## 원칙

1. **Part 1 (1-1 ~ 1-12) 전략 프레임워크**의 분석 항목·논리 구조는 훼손하지 않아요.
2. 문체는 `STYLE_GUIDE.md`의 **해요체** 규칙을 따릅니다.
3. 본문 수정은 `prompts/ko/body.md`(및 `body-perplexity.md`)에서 하고, `scripts/build-prompts.sh`로 4개 모델 파일을 재생성해요.

## 수정 절차

1. `prompts/ko/body.md` 수정
2. Perplexity 전용 문구가 필요하면 `prompts/ko/body-perplexity.md`도 수정
3. `./scripts/build-prompts.sh` 실행
4. `./scripts/verify.sh` 실행
5. `CHANGELOG.md`에 변경 내용 기록
6. `INDEX.md`에 신규 프레임워크 메타데이터 추가

## PR 체크리스트

- [ ] 해요체·한글 플레이스홀더 준수
- [ ] 4개 모델 파일 섹션 수 일치 (57개)
- [ ] 영문 지시문(`You are`, `Deliver:`) 잔존 없음
- [ ] verify 스크립트 통과
