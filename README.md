# 전략·마케팅·기획 프롬프트 라이브러리

**Copy-paste prompt library for strategy, digital marketing, commerce, and campaign planning—optimized for ChatGPT, Gemini, Perplexity, and Claude. For strategists, marketers, and content planners (1–10 yr)**

<img width="2752" height="1536" alt="prompt_thumbnail" src="https://github.com/user-attachments/assets/87d7239c-8900-4af1-ab58-6cde234a16b1" />

---

언어모델(ChatGPT, Gemini, Perplexity, Claude)에서 **복사/붙여넣기**로 바로 사용할 수 있는 전략·디지털 마케팅·커머스·기획 프레임워크 프롬프트 모음입니다.

---

## 활용 대상

| 대상 | 경력 | 활용 프레임워크 |
|------|------|-----------------|
| **전략가** | 1년 ~ 10년차 | 전략 프레임워크 전부, 디지털 마케팅·커머스·기획 일부 |
| **마케터** | 1년 ~ 10년차 | 디지털 마케팅 전략, 커머스 전략, 기획·아이디어 전략 |
| **콘텐츠 기획자·마케터** | 1년 ~ 10년차 | 콘텐츠/채널 전략, 기획 및 아이디어 전략 |

---

## 레포 구조 (모델별 선택)

```
strategy-prompts-repo/
├── README.md                 ← 사용법·타겟·구조 (현재 문서)
├── chatgpt/
│   └── prompts.md            ← ChatGPT용 전체 프롬프트
├── gemini/
│   └── prompts.md            ← Gemini용 전체 프롬프트
├── perplexity/
│   └── prompts.md            ← Perplexity용 전체 프롬프트
└── claude/
    └── prompts.md            ← Claude용 전체 프롬프트
```

- 사용하는 **언어모델에 맞는 폴더**의 `prompts.md`를 열고, 필요한 **섹션만 복사**해 해당 모델 채팅에 붙여넣으면 됩니다.
- 한 번에 하나의 프레임워크(한 개 블록)만 사용하는 것을 권장합니다.

---

## 프레임워크 구성

### 1. 전략 프레임워크 (기존 12개, 변경 없음)

- MECE 이슈 트리, 파이브 포스, 피라미드/SCQA, BCG 매트릭스, 가설 기반 분석  
- 경쟁 환경 요약, SWOT, So What 스트레스 테스트, 가치 사슬  
- 시나리오 플래닝, 운영 모델, 전략 합성 마스터  

### 2. 디지털 마케팅 전략 (확장)

- **채널 전략**: 채널 믹스, 오가닉 vs 유료, 채널별 KPI·예산 배분  
- **콘텐츠 전략**: 콘텐츠 퍼널, 포맷별 역할, 캘린더·시즌 플래닝, 성과 측정  
- **광고 운영 전략**: 캠페인 구조, 타깃팅·입찰, 크리에이티브·A/B 테스트, 예산·리포팅  

### 3. 커머스 전략 (확장)

- 상품·카탈로그 전략, 가격·프로모션 전략, 전환 퍼널·CRO  
- 채널 전략(몰/오픈마켓/소셜커머스), 재고·풀필먼트, 고객 생애가치(LTV)·리텐션  

### 4. 기획 및 아이디어 전략 (확장)

- 캠페인·프로모션 기획, 아이디어 브레인스토밍·선정  
- 콘셉트 정교화, 커뮤니케이션 방향, 크리에이티브 브리프  

---

## 사용 방법

1. **모델 선택**: 사용 중인 도구에 맞는 폴더(`chatgpt/`, `gemini/`, `perplexity/`, `claude/`)로 이동합니다.
2. **파일 열기**: 해당 폴더의 `prompts.md`를 엽니다.
3. **블록 복사**: 필요한 프레임워크의 코드 블록(```으로 감싸진 부분) 전체를 복사합니다.
4. **대괄호 채우기**: `[DESCRIBE YOUR BUSINESS PROBLEM]`, `[YOUR INDUSTRY]` 등 `[ ]` 안을 본인 상황에 맞게 구체적으로 채웁니다.
5. **붙여넣기·실행**: 언어모델 채팅창에 붙여넣고 실행합니다.

---

## 모델별 특징

| 모델 | 파일 | 특징 |
|------|------|------|
| **ChatGPT** | `chatgpt/prompts.md` | Deliver/요청 항목 명시, 구조화된 출력에 강함 |
| **Gemini** | `gemini/prompts.md` | 표·불릿·제목 구조화 요청 포함, 한글 역할 설명 |
| **Perplexity** | `perplexity/prompts.md` | 검색·출처·최신 데이터 활용 문구 포함 |
| **Claude** | `claude/prompts.md` | 명확한 단계·출력 형식, 전략가·마케터 공통 활용 |

---

## 라이선스·기여

- 본 라이브러리는 내부/팀 활용을 전제로 구성되었습니다.  
- 수정·추가 시 기존 전략 프레임워크(12개) 문구는 훼손하지 않는 것을 원칙으로 합니다.
