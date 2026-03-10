# Claude용 프롬프트 — 전략·마케팅·기획

아래 블록 중 **필요한 하나만** 복사해 Claude에 붙여넣고, `[ ]` 안을 본인 상황으로 채워 사용하세요.  
Claude는 **역할 + 명확한 출력 요청** 형식을 잘 따릅니다. 필요하면 답변 마지막에 "표나 불릿으로 요약해 줘"를 추가해도 됩니다.

---

# Part 1. 전략 프레임워크 (기존 12개)

## 1-1. MECE 이슈 트리

```
You are a strategy consultant. Break down my business problem into a MECE (Mutually Exclusive, Collectively Exhaustive) issue tree.

Deliver:
1. Problem statement: One clear sentence (no vague or emotional language).
2. MECE explanation: What it means, why breaking it hurts analysis, how to check each branch.
3. Level 1: 2–4 top-level categories covering 100% with zero overlap.
4. Level 2: Under each Level 1, 2–4 sub-issues that are also MECE.
5. Level 3: For the most important Level 2 items, one more level (root causes or key questions).
6. Overlap check: Any overlapping branches and how to fix.
7. Gap check: What the tree misses and where to add it.
8. Priority: Which branch most likely holds the root cause or biggest opportunity, and why.
9. Hypothesis per Level 1 branch: One clear guess per branch.
10. Visual layout: Description clear enough to rebuild in PowerPoint or Miro.

My messy problem: [DESCRIBE YOUR BUSINESS PROBLEM]
```

## 1-2. 파이브 포스 산업 분석

```
You are a strategy consultant. Run a full Porter's Five Forces analysis for this industry.

For each force (New Entrants, Supplier Power, Buyer Power, Substitutes, Competitive Rivalry):
- Rate High / Medium / Low with evidence.
- Give one specific action a smart company would take.

Also provide:
- Industry attractiveness score (1–10) and what it means for profit.
- The single force that matters most for margins and why.
- The most defensible and profitable position in this market.

Format as a consulting-style report with force ratings, evidence, and ranked recommendations.

Industry: [YOUR INDUSTRY OR MARKET]
My position: [ENTERING AS / COMPETING AS]
```

## 1-3. 피라미드 원칙 / SCQA

```
You are a communications expert using the Pyramid Principle (Barbara Minto). Turn my raw data into a boardroom-ready narrative.

Deliver:
1. Main message: One sentence a CEO would act on immediately.
2. SCQA: Situation, Complication, Question, Answer.
3. Pyramid: Three groups of supporting arguments, each with three data points or sub-arguments.
4. Logic checks: Horizontal (same type of story per group) and vertical (every argument supports the one above).
5. Executive summary: One polished SCQA paragraph for the opening.
6. Slide 1: Headline, supporting points, and data highlights.

My raw data and findings: [PASTE YOUR DATA, BULLET POINTS, OR ANALYSIS]
Audience: [WHO WILL RECEIVE THIS]
```

## 1-4. BCG 매트릭스

```
You are a corporate strategy consultant. Build a BCG Growth-Share Matrix for my product portfolio.

Deliver:
- What each quadrant means (Stars, Cash Cows, Question Marks, Dogs) and the strategy logic.
- How to set high/low growth cutoff and how to calculate relative market share for this industry.
- Quadrant placement for each product with reasoning.
- For each quadrant: who belongs, investment/cash implications, and what to do next.
- Portfolio balance: Is the mix too heavy in one quadrant? What would better balance look like?
- Where to move cash: From Cash Cows to fund which Stars and Question Marks.

My product portfolio: [LIST PRODUCTS WITH REVENUE, MARKET SHARE, AND MARKET GROWTH DATA]
```

## 1-5. 가설 기반 분석

```
You are a strategy consultant on Day 1 of a new project. Set up a hypothesis-driven analysis.

Deliver:
- One clear, testable starting hypothesis and why it's the best starting point.
- The 5 key questions that would prove or kill the hypothesis.
- For each question: analyses needed and data sources.
- A 3-week work plan (week-by-week).
- Two backup hypotheses and what would make you switch.
- Early signals that support or challenge the hypothesis.
- Presentation outline (slide titles only) if the hypothesis holds.
- What result would disprove the hypothesis and force a restart.

Business situation: [DESCRIBE WHAT YOU KNOW SO FAR]
Decision to be made: [WHAT THE ANALYSIS MUST ANSWER]
```

## 1-6. 경쟁 환경 요약

```
You are a strategy analyst. Compress a competitive intelligence view into one executive-ready slide.

Deliver:
- Top 8 competitors ranked by relevance to my situation.
- 6–8 comparison dimensions (pricing, target customer, distribution, type of advantage, growth direction, etc.).
- Competitor grid: short rating and note per dimension.
- Clusters: who is fighting the same fight vs. different game.
- Open space: positions nobody owns.
- Who is gaining, stuck, or losing.
- Biggest threat in the next 18 months and how.
- One-slide layout: what goes where.
- Three-sentence CEO summary.

My company or product: [DESCRIBE YOUR OFFERING AND MARKET POSITION]
Key competitors: [LIST WHO YOU CONSIDER COMPETITION]
```

## 1-7. 실행 가능한 SWOT

```
You are a strategy consultant. Produce a specific, evidence-based SWOT—no vague or generic items.

Deliver:
- Strengths: 4–5 real advantages with proof (measurable, hard to copy).
- Weaknesses: 4–5 honest internal problems and how hard each is to fix.
- Opportunities: 4–5 specific external conditions with timing.
- Threats: 4–5 external forces with probability and impact.
- Interaction analysis: 4 key combinations (S+O, S+T, W+O, W+T) and the strategic move each suggests.
- Top priorities: one strength to lean into, one weakness to fix first, one opportunity to chase, one threat to address now.
- Three concrete strategic actions from this SWOT.
- "So what?" test: every item must lead to a clear action; otherwise remove.
- One-slide 2x2 layout for the boardroom.

My business: [COMPANY, PRODUCT, OR INITIATIVE]
Context: [WHAT DECISION THIS SWOT IS HELPING WITH]
```

## 1-8. "So What?" 스트레스 테스트

```
You are a senior strategy partner. Stress-test my recommendations by asking "So what?" until they are concrete and actionable.

Deliver:
- For each recommendation: "So what?" three times, down to a concrete, actionable insight.
- Flag vague language ("improve efficiency," "drive growth," "optimize") and rewrite in specific, measurable terms.
- Logic chain: Data → Insight → Implication → Recommendation → Action; flag broken links.
- Specificity: what exactly, by how much, by when, owned by whom.
- Pushback: what a skeptical CFO or board member would say and how to respond.
- Priority order by impact and ease; correct sequence and dependencies.
- Confidence: strong evidence vs. educated guess.
- Slide title test: would each recommendation work as a slide headline that people can act on?

My recommendations: [PASTE YOUR CURRENT RECOMMENDATIONS OR ANALYSIS]
```

## 1-9. 가치 사슬

```
You are a strategy analyst. Map the value chain to find where we create, capture, and lose value.

Deliver:
- Primary activities: list and performance (inbound, operations, outbound, marketing/sales, service).
- Support activities: systems, people, technology, purchasing; how they help or hinder primary.
- Where we create value vs. competitors.
- Where we lose value (margin leak to suppliers, middlemen, waste).
- Cost structure: which activities consume most cost vs. value.
- Competitor comparison: how our chain differs and what that means.
- Make vs. buy: what could be outsourced without losing strategic control.
- Integration: forward or backward moves that could improve margins or position.
- Biggest lever: one activity where a 20% improvement would have the largest effect.

My business: [DESCRIBE YOUR COMPANY AND INDUSTRY]
My biggest cost or margin concern: [WHERE YOU FEEL THE MOST PRESSURE]
```

## 1-10. 시나리오 플래닝

```
You are a strategy partner running scenario planning for a leadership team facing major uncertainty.

Deliver:
- Two key uncertainties (high impact, high uncertainty) as the two axes.
- 2x2 scenario grid with four internally consistent scenarios.
- For each scenario: 5–7 sentence story of the world in 3–5 years; a short name; 3 specific effects on our strategy, product, pricing, or operations.
- Strategic options: safe bets (work across scenarios) vs. gambles (pay off in one).
- Early warning signs: 3 signals per scenario to watch.
- Protection plan: how to survive the worst scenario and win in the best.
- Decision triggers: when to switch from one approach to another.

My business context: [DESCRIBE YOUR INDUSTRY AND SITUATION]
The uncertainty I worry about most: [BIGGEST UNKNOWN YOU FACE]
```

## 1-11. 운영 모델

```
You are an organization design consultant. Design an operating model that turns strategy into execution.

Deliver:
- How the stated strategy should shape each part of the operating model.
- Structure options: functional, divisional, matrix, network—pros and cons for my situation.
- Recommended structure and why.
- Decision rights: for the 10 most important recurring decisions, who decides, who is consulted, who is informed (RACI).
- Five critical processes, current gaps, and what must run well.
- Performance tracking: what to measure, how often, what behavior to encourage.
- 3–5 critical roles for competitive advantage and what "great" looks like.
- 3–4 behaviors the model must encourage and how to make them stick.
- Coordination: how teams stay aligned without excess meetings or approvals.
- Rollout order to minimize disruption and get early wins.

My business: [DESCRIBE COMPANY, STRATEGY, AND CURRENT SETUP]
Biggest execution challenge: [WHERE STRATEGY IS NOT TURNING INTO RESULTS]
```

## 1-12. 전략 합성 마스터

```
You are a senior strategy partner presenting final recommendations to the CEO and board. Synthesize everything into one strategy document.

Deliver:
- Where we stand: current state (market position, competition, financials, team capability).
- The core question this analysis set out to answer.
- Top 5 findings as sharp, evidence-backed insights.
- Pyramid narrative: main message, three supporting arguments, nine data points.
- Three strategic options: expected value, risk, capabilities needed, time to results.
- My recommendation with reasoning for a skeptical board member.
- Five success requirements for the recommended strategy.
- 30-60-90 day plan: actions at 30 days, check at 60, turning point at 90.
- Top 5 risks: probability, impact, mitigation.
- One-page board summary: headline, three key findings, recommendation, next steps.

My business: [FULL CONTEXT: COMPANY, MARKET, STAGE, TEAM, REVENUE, BIGGEST CHALLENGE]
Decision to make: [THE STRATEGIC CHOICE THAT NEEDS TO BE RESOLVED]
Timeline: [WHEN A DECISION MUST BE MADE]
```

---

# Part 2. 디지털 마케팅 전략

## 2-1. 채널 전략 (채널 믹스·오가닉 vs 유료·예산)

```
You are a digital marketing strategist. Design a channel strategy that fits my business goals and budget.

Deliver:
- Channel mix: Which channels (owned, earned, paid—e.g. SEO, social, email, paid search, display, affiliates, influencers) to use and why, given my objectives.
- Organic vs paid: For each relevant channel, recommend the balance (organic vs paid) and the reasoning.
- Role per channel: Awareness vs consideration vs conversion vs retention—which channel does what in the funnel.
- KPIs per channel: 2–3 metrics per channel (e.g. reach, CTR, CPA, ROAS, LTV) and how they ladder to business goals.
- Budget allocation: How to split budget across channels (%), and how to reallocate if one underperforms.
- Dependencies: Which channels depend on others (e.g. paid feeding retargeting, organic feeding email) and sequencing.
- One-page channel map: A single visual description (or table) of channels, roles, and budget share.

Format as a clear strategy memo with recommendations and a one-page channel map.

My business / brand: [COMPANY, PRODUCT, OR BRAND]
Marketing objective: [AWARENESS / LEADS / SALES / RETENTION / OTHER]
Budget level: [BUDGET RANGE OR RELATIVE: LIMITED / MODERATE / LARGE]
Current channels in use: [LIST CURRENT CHANNELS AND ROUGH PERFORMANCE IF ANY]
```

## 2-2. 콘텐츠 전략 (퍼널·포맷·캘린더·성과)

```
You are a content strategist. Build a content strategy that supports my marketing and business goals.

Deliver:
- Content funnel: What content we need at each stage (awareness, consideration, conversion, loyalty) and the job it does.
- Format mix: Which formats (blog, video, short-form, podcast, newsletter, UGC, etc.) for which stages and channels, with rationale.
- Content pillars: 3–5 thematic pillars that align with brand and search/audience needs; 3–5 topic ideas per pillar.
- Calendar approach: How to plan by season, campaign, and always-on; cadence per channel and format.
- Production feasibility: What we can realistically produce with my team/resources; what to prioritize or simplify.
- Performance measurement: What to track (traffic, engagement, leads, conversions, shares) and how to attribute content to outcomes.
- Quick wins: 3–5 content moves that can show results in the next 4–8 weeks.

Give me a content strategy summary, pillar/topic table, and a simple calendar template description.

My business / brand: [COMPANY, PRODUCT, OR BRAND]
Target audience: [WHO WE WANT TO REACH]
Goals: [BRAND AWARENESS / LEADS / SALES / COMMUNITY / OTHER]
Current content: [WHAT WE ALREADY PUBLISH AND WHERE]
Resources: [TEAM SIZE, BUDGET, FREQUENCY WE CAN COMMIT]
```

## 2-3. 광고 운영 전략 (캠페인·타깃팅·크리에이티브·예산·리포팅)

```
You are a paid media strategist. Design an advertising operations strategy for my campaigns.

Deliver:
- Campaign structure: How to organize campaigns and ad sets (by objective, audience, creative, or product) for the platforms I use; naming convention.
- Targeting approach: Audience segments (demographics, interests, lookalike, retargeting), and how to test and narrow without over-restricting.
- Bidding and budget: Recommended bid strategy (e.g. lowest cost, target CPA/ROAS, manual) and budget pacing (daily vs lifetime, by campaign); when to scale or cut.
- Creative and testing: How many creatives/copies to test per ad set; A/B test plan (what to test first, sample size, decision rule); refresh cadence.
- Tracking and attribution: What events to track, how to use UTM and conversion APIs; attribution model choice and limitations.
- Reporting: Key metrics per objective (impressions, CTR, CPC, CPA, ROAS, etc.); report frequency and one-page dashboard outline.
- Platform-specific notes: Any must-dos for the platforms I use (e.g. Meta, Google, TikTok, LinkedIn).

Format as an ad ops playbook with clear sections and a one-page reporting template description.

Platforms: [META / GOOGLE / TIKTOK / LINKEDIN / OTHER]
Primary objective: [AWARENESS / TRAFFIC / LEADS / SALES / APP INSTALLS]
Budget: [DAILY OR MONTHLY RANGE]
Current setup: [WHAT WE HAVE RUNNING NOW, IF ANY]
```

---

# Part 3. 커머스 전략

## 3-1. 상품·카탈로그 및 가격·프로모션 전략

```
You are an e-commerce strategist. Help me define product/catalog and pricing/promotion strategy.

Deliver:
- Product and catalog strategy: What to emphasize (hero products, bundles, categories); how to organize the catalog for discovery and conversion; any gaps or opportunities in the current lineup.
- Pricing strategy: How to position on price (premium, value, penetration); price elasticity considerations; psychological pricing or discount framing if relevant.
- Promotion strategy: Types of promotions (flash sales, BOGO, % off, bundles, loyalty) and when to use each; calendar approach for key seasons and events.
- Channel-specific pricing/promo: If we sell on multiple channels (own site, marketplaces, social), how to keep consistency or where to differentiate.
- Metrics: KPIs to track (ASP, margin, sell-through, promo lift, discount depth) and how to evaluate promo effectiveness.

Give me a concise strategy memo and a simple promo calendar outline.

My business: [BRAND / CATEGORY / TYPE OF PRODUCTS]
Sales channels: [OWN SITE / MARKETPLACES / SOCIAL COMMERCE / OTHER]
Current pricing and promo: [BRIEF DESCRIPTION]
Goals: [VOLUME / MARGIN / NEW CUSTOMERS / CLEARANCE / OTHER]
```

## 3-2. 전환 퍼널·CRO 및 채널 전략 (몰/오픈마켓/소셜커머스)

```
You are an e-commerce strategist. Design conversion funnel, CRO, and channel strategy for my business.

Deliver:
- Funnel map: Steps from first touch to purchase (and repeat); where we lose people and biggest drop-off points.
- CRO priorities: 3–5 levers to improve conversion (e.g. product page, cart/checkout, trust, mobile, speed); quick wins vs longer tests.
- Channel role: For each sales channel (own site, marketplaces, social commerce), define role (volume, margin, acquisition, brand) and how they support each other.
- Cross-channel: How to drive traffic and loyalty across channels (e.g. social to site, marketplace to email); attribution and measurement approach.
- One-page funnel + channel view: Single summary of funnel stages, key metrics per stage, and channel roles.

Format as a strategy note with funnel, CRO actions, and channel roles.

My business: [BRAND / CATEGORY]
Sales channels: [OWN SITE / WHICH MARKETPLACES / SOCIAL COMMERCE]
Current conversion / traffic: [KEY NUMBERS IF ANY]
Biggest conversion concern: [WHERE WE FEEL WE LOSE CUSTOMERS]
```

## 3-3. 재고·풀필먼트 및 LTV·리텐션 전략

```
You are an e-commerce and retention strategist. Advise on inventory/fulfillment and LTV/retention.

Deliver:
- Inventory strategy: How to balance stock levels (best sellers vs long tail); when to reorder; how to avoid overstock and stockouts; any seasonal or event-driven plan.
- Fulfillment: Options (in-house vs 3PL, same-day/next-day); cost vs speed vs control; how fulfillment affects conversion and returns.
- LTV view: How to define and measure LTV; what drives LTV in our category (repeat rate, AOV, tenure); segment (e.g. high vs low LTV) and how to treat each.
- Retention tactics: Post-purchase flow (email, SMS, loyalty, reviews); win-back; subscription or repeat incentives if relevant.
- Metrics: KPIs for inventory (turn, fill rate, days of stock), fulfillment (delivery time, return rate), and retention (repeat rate, LTV, churn).

Give me a concise strategy with clear recommendations and a short list of metrics to track.

My business: [BRAND / CATEGORY]
Fulfillment today: [IN-HOUSE / 3PL / MARKETPLACE FULFILLMENT]
Repeat purchase rate / LTV: [CURRENT NUMBERS OR ESTIMATE]
Retention goal: [MORE REPEAT / REDUCE CHURN / GROW LTV / OTHER]
```

---

# Part 4. 기획 및 아이디어 전략

## 4-1. 캠페인·프로모션 기획

```
You are a campaign and promotion planner. Help me plan a campaign or promotion from brief to execution outline.

Deliver:
- Objective and success criteria: One clear objective (awareness, consideration, conversion, retention) and 2–3 measurable success metrics.
- Target audience: Who we are targeting; one-sentence persona or segment description; where they are (channels, touchpoints).
- Concept and message: One campaign idea or theme; key message and proof points; tone and manner.
- Channel and tactic plan: Which channels and tactics (paid, organic, email, PR, events, etc.) and what each does in the campaign.
- Timeline: Phases (pre-launch, launch, sustain, wrap); key dates and milestones.
- Budget and resource: How to split budget across channels/tactics; any resource or dependency (creative, tech, partners).
- Risks and contingencies: What could go wrong and one mitigation per risk.
- One-page campaign brief: Headline, objective, audience, concept, channels, timeline, and success metrics.

Campaign or promotion name: [NAME]
Business context: [PRODUCT / BRAND / SEASON / EVENT]
Budget and timeline: [BUDGET RANGE, START AND END]
Target audience: [WHO]
Current idea or constraint: [ANY EXISTING CREATIVE OR LIMITATION]
```

## 4-2. 아이디어 브레인스토밍·선정 및 콘셉트 정교화

```
You are a creative strategist. Run an idea-generation and concept-sharpening process for my project.

Deliver:
- Idea generation: 8–12 distinct ideas (campaign ideas, angles, hooks, or formats) that fit the brief; mix of safe and bold options.
- Selection criteria: 3–5 criteria to score ideas (e.g. fit to objective, memorability, feasibility, differentiation); apply them and rank or shortlist.
- Top 3 concepts: For the top 3 ideas, one paragraph each: what it is, why it works, what we need to make it (assets, channels, timeline).
- Concept refinement: For the chosen concept, sharpen the big idea, key message, and one-liner; suggest visual or tone directions.
- "So what?" check: For the chosen concept, why would the audience care and what action we want; one objection and how we answer it.

Give me the idea list, shortlist with scores, top 3 one-pagers, and refined concept.

Project / campaign: [NAME OR BRIEF DESCRIPTION]
Objective: [WHAT WE WANT TO ACHIEVE]
Target audience: [WHO]
Constraints: [BUDGET, CHANNELS, BRAND GUIDELINES, ETC.]
```

## 4-3. 커뮤니케이션 방향 및 크리에이티브 브리프

```
You are a creative strategist. Turn my campaign or product context into a clear communication direction and creative brief.

Deliver:
- Communication strategy: What we want to say and why; single-minded takeaway; proof points or reasons to believe.
- Audience insight: One insight that unlocks the message or creative (need, desire, barrier, or behavior).
- Tone and manner: How we want to sound and look (e.g. bold, warm, expert, playful); what to avoid.
- Channel adaptation: How the core message adapts by channel (e.g. short-form vs long-form, visual vs copy-led) without losing the idea.
- Creative brief (one page): Objective, audience, insight, key message, tone, mandatories (do's and don'ts), deliverables, and success metrics.
- Reference direction: 2–3 reference styles or benchmarks (mood, format, or brand) that illustrate the direction (describe in text if no images).

Output: Communication direction summary and a one-page creative brief.

Project: [CAMPAIGN / PRODUCT / LAUNCH]
Context: [BACKGROUND, COMPETITION, OPPORTUNITY]
Target audience: [WHO]
Current draft message or idea: [ANY EXISTING COPY OR CONCEPT]
Deliverables needed: [E.G. VIDEO, STATIC ADS, SOCIAL, EMAIL]
```
