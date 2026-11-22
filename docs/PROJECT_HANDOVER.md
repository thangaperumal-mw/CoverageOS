# CoverageOS — Complete Project Handover

> **Purpose of this file**  
> This is the canonical handover for the CoverageOS hackathon prototype. It is intentionally written so another LLM, developer, designer, judge-prep assistant, or collaborator can understand the concept, business problem, product strategy, data model, five-phase architecture, demo logic, scoring models, real-vs-modeled data boundaries, UI direction, and current application structure without needing the original conversation.

---

## 1. Executive Summary

**CoverageOS** is a proposed Meltwater platform capability that turns content coverage from a reactive maintenance problem into a proactive, measurable, self-improving intelligence system.

### Core positioning

> **An AI-powered global coverage intelligence and self-healing layer for Meltwater’s entire content ecosystem.**

Alternative positioning:

> **A self-learning coverage intelligence and source-healing layer for every Meltwater product.**

### Strategic idea

Meltwater’s products are only as complete as the content Meltwater ingests. Missing, thin, stale, broken, or badly configured sources propagate downstream into incomplete search results, weak trend signals, missed mentions, lower-confidence AI answers, incomplete analysis, poor regional coverage, more support tickets, and weaker customer trust.

CoverageOS is designed to continuously answer:

> **Do we have the right content, from the right sources, in the right market, language, category, and channel — and are those sources healthy enough to continuously deliver it?**

It then closes the loop:

**Detect → Prioritize → Discover → Diagnose → Repair → Human Review → Verify → Measure Business Impact → Learn**

### Executive analogy

> **AWS monitors infrastructure. Datadog monitors applications. CoverageOS monitors Meltwater’s intelligence supply chain.**

### Important pitch lines

- **Content is Meltwater’s “god particle” — the fuel behind Explore, Trends, Analyze, Media Relations, GenAI Lens, MCP, alerts, reporting and AI workflows.**
- **Every insight we deliver is only as complete as the content we ingest.**
- **AI cannot reason over evidence Meltwater never captured.**
- **We don’t wait for customers to tell us what Meltwater missed. CoverageOS finds the blind spot first.**
- **One coverage improvement. Every Meltwater product gets smarter.**
- **CoverageOS changes coverage from a reactive maintenance problem into a proactive, measurable and continuously improving intelligence system.**

---

## 2. Why CoverageOS Exists

### Current problem

Meltwater processes very large volumes of content across multiple content types and channels, including:

- News and editorial content
- Press releases / PR sources
- Social media
- Reddit
- Forums / communities
- Podcasts
- Video / social channels
- Blogs / public web sources
- Other structured or public content sources

Coverage is strong in many markets, but it can be thin or unhealthy in specific combinations of:

- Country / region
- Language
- Channel
- Content type
- Category / vertical
- Individual source

Typical symptoms include:

- Missing source or missing article/post tickets
- Thin search results
- Zero-result categories
- Trend rankings distorted by incomplete coverage
- Existing sources silently stopping ingestion
- Bad metadata or wrong source mapping
- High-value premium-source requests
- External sources repeatedly cited by AI but absent from Meltwater
- Coverage problems discovered only after a customer notices them

### Current reactive pattern

Historically, many coverage gaps are discovered through support requests, operational monitoring, or ad-hoc analysis after expected content is missing.

CoverageOS changes the model from:

**Reactive support / manual investigation**

into:

**Predictive detection + commercial prioritization + AI-assisted discovery + diagnosis + governed repair + measurable product impact.**

---

## 3. Locked Five-Phase Architecture

The project is built around five locked phases. These names and responsibilities should remain stable unless the project owner explicitly changes them.

### Phase 1 — Coverage Intelligence

**Purpose:** Determine **where coverage is weak, unhealthy, or commercially important**.

Key question:

> **Where is Meltwater weak, why does it matter, and what should we fix first?**

### Phase 2 — SourceScout: AI Candidate Discovery & 7-Factor Ranking

**Purpose:** Determine **which real authoritative sources can close a known coverage gap**.

Key question:

> **Which source should Meltwater add, fix, watch, or reject to improve this blind spot?**

### Phase 3 — Source Doctor: 8-Cause Diagnostic Engine for Existing Sources

**Purpose:** Determine **what is wrong with an existing unhealthy source and whether the fix can be automated safely**.

Key question:

> **What failed in the source pipeline, what is the safest repair, and how do we verify recovery?**

### Phase 4 — Human-in-the-Loop: Structured Decisions Become AI Learning Data

**Purpose:** Govern cases that need human judgment, manual activation, or operational approval.

Key question:

> **Which cases require a human decision, what action should they take, and how does that decision become training data?**

### Phase 5 — Product & Revenue Impact: Strategic Platform Capability

**Purpose:** Translate coverage improvements into **product, customer, operational, AI/MCP, and financial outcomes**.

Key question:

> **What business value did improved coverage create?**

---

# 4. End-to-End Product Flow

The canonical flow is:

```text
Coverage Intelligence
        ↓
Known blind spot / Gap ID
        ↓
SourceScout
        ↓
 ┌───────────────┬────────────────────────┐
 │ Missing source│ Existing unhealthy source│
 │      ADD       │          FIX            │
 └───────┬────────┴───────────┬─────────────┘
         │                    │
         │                    ↓
         │              Source Doctor
         │                    ↓
         │       Auto-fix / HITL / Escalate
         │                    ↓
         └──────────────→ Human-in-the-Loop
                              ↓
                     Verified coverage recovery
                              ↓
                   Product & Revenue Impact
                              ↓
                        Learning feedback
```

### Persistent traceability

Every investigation should carry a persistent **Gap ID**.

Canonical demo Gap ID:

`GAP-IN-TAM-SOC-AUTO-0307`

This same identifier follows the journey across the five phases.

Example lifecycle:

```text
GAP-IN-TAM-SOC-AUTO-0307
India → Tamil → Social Media → Automotive
        ↓
Coverage Intelligence identifies high-priority blind spot
        ↓
SourceScout discovers/ranks authoritative candidates
        ↓
MotoWagon detected as existing-but-unhealthy → FIX
        ↓
Source Doctor diagnoses Article Discovery Failure
        ↓
HITL approves repair through Atlas + Nitro context
        ↓
Explore validates restored ingestion
        ↓
Coverage Health / product metrics improve
        ↓
Revenue / support / AI impact projected
```

---

# 5. Phase 1 — Coverage Intelligence

## 5.1 Purpose

Coverage Intelligence is the **homepage and centralized source-intelligence engine** for CoverageOS.

It brings together coverage health, customer demand, source health, AI citation evidence, and commercial importance to show:

- Which countries / markets are thin
- Which languages are under-covered
- Which channels / content types are weak
- Which sources are unhealthy
- Which issues affect high-value customers
- Where GenAI is citing sources Meltwater may not adequately cover
- Which gaps should be fixed first

## 5.2 Primary source systems / inputs

The prototype models the following upstream systems and signals:

### Crimson
Used for:

- Content Support tickets
- Customer-requested sources
- Missing source/content demand
- ARR-weighted demand signals

### Premium Customer Tickets
Used for:

- Premium source requests
- High-value source demand
- Commercially sensitive coverage needs

### Atlas
Used for:

- Source master inventory
- Existing source state
- Active / unhealthy / broken source status
- Source configuration / mapping context

### GenAI Lens
Used for:

- Cited-source evidence
- Sources repeatedly appearing in generative-AI outputs
- External authoritative-source gaps

### Explore / Ingestion Monitoring
Used for:

- Sources that normally ingest content but recently stop producing items
- Last-seen / ingestion-drop signals
- Downstream visibility verification

### Trends Center Analysis
Used for:

- Thin-result country evidence
- Average result count
- Number of low-result category/day combinations
- Zero-result categories

## 5.3 Coverage dimensions

Coverage can be analyzed across:

- Region
- Country
- Language
- Channel
- Content type
- Category
- Source

Primary content / channel groupings used in the prototype:

- News
- Press Releases
- Social Media
- Reddit
- Forums
- Podcasts

## 5.4 Coverage Health Score (CHS)

**Coverage Health Score** answers:

> **How healthy and complete is this market/channel/category/source coverage?**

Prototype CHS dimensions discussed during design:

- Source availability / breadth
- Source health
- Freshness
- Content volume
- Geographic / language diversity
- Source diversity
- Customer issue rate

An early illustrative weighting considered:

- 25% Source availability
- 20% Source health
- 15% Freshness
- 15% Content volume
- 10% Geography / language diversity
- 10% Source diversity
- 5% Customer issue rate

**Important:** This weighting is a prototype concept, not a production Meltwater formula. A production implementation should calibrate against real historical data.

## 5.5 Coverage Opportunity Score

Coverage Opportunity Score answers:

> **How urgently should Meltwater improve this coverage?**

The prototype separates technical health from business urgency.

A technically weak market should not automatically become top priority unless customer/product/commercial demand justifies it.

Prototype weighting used in the UI:

- **ARR-weighted customer demand — 30%**
- **Support ticket pressure — 16%**
- **Premium source demand — 8%**
- **Coverage gap severity — 20%**
- **Source health risk — 11%**
- **GenAI citation demand — 10%**
- **Thin-search / Trends gap — 5%**

Total = 100%

### Design principle

ARR increases **urgency**, not **source authority**.

A low-quality source should never rank highly only because a large account requested it.

## 5.6 Core Phase 1 KPIs

The Coverage Intelligence homepage surfaces:

- Coverage Health Score
- Coverage Opportunity Score
- Unhealthy Ingested Sources
- Zero / Thin Search Demand
- GenAI Cited Sources
- Customer ARR at Risk / Demand ARR

## 5.7 Coverage Genome Drill-Down

When a user selects a country or region, the interface shows:

- Coverage Health Score
- Opportunity Score
- Coverage by content type
- Number of sources
- Unhealthy sources
- Demand signal
- Language coverage
- Source-fix queue
- Country-level signal context

Example country path:

`India → Tamil → Social Media → Automotive`

## 5.8 Real Trends Center evidence supplied by project owner

The following values came directly from the user-provided Meltwater Trends Center analysis and should be preserved as the real evidence set used in the Phase 1 prototype:

| Country | Avg Result Count | Low (<50) | Zero-Result Categories |
|---|---:|---:|---:|
| Finland | 24.6 | 169 / 250 | 39 |
| Netherlands | 26.4 | 170 / 250 | 48 |
| Sweden | 35.9 | 162 / 250 | 38 |
| Canada | 48.3 | 149 / 250 | 36 |
| France | 61.7 | 119 / 250 | 33 |
| Germany | 67.7 | 142 / 250 | 12 |
| Australia | 78.8 | 141 / 250 | 9 |
| United Kingdom | 96.2 | 108 / 250 | 10 |
| Japan | 129.0 | 51 / 250 | 0 |
| United States | 140.2 | 52 / 250 | 1 |

South Asian markets were added with **prototype / speculative values** for demo continuity:

- India
- Pakistan
- Bangladesh
- Sri Lanka
- Nepal
- Bhutan
- Maldives
- Afghanistan

Do not present the South Asian demo values as measured production data unless replaced with verified numbers.

## 5.9 Map health legend

Prototype visual legend:

- **≥ 90** — Strong
- **70–89** — Good
- **50–69** — Moderate
- **30–49** — Thin
- **< 30** — Very Thin

## 5.10 Locked UI principles for Phase 1

- Meltwater-style light theme
- Fixed left navigation
- Main workspace scrolls independently
- Interactive world map
- Country selection drives all detail panels
- Compact in-map Coverage Health legend
- Avoid nested “box inside box” visual clutter
- Map is the hero surface
- Strong teal anchor with restrained brand accents
- Optimized for approximately 90% Windows browser zoom

---

# 6. Phase 2 — SourceScout

## 6.1 Purpose

SourceScout receives a known coverage gap from Coverage Intelligence and determines:

> **Which real authoritative source is the best source to close this gap?**

It is not a generic internet-search interface. It is a **gap-driven discovery and ranking engine**.

## 6.2 Phase 1 → Phase 2 handoff

A SourceScout investigation inherits a structured **Coverage Gap Brief** containing:

- Gap ID
- Region / country
- Language
- Channel
- Category
- Coverage Health Score
- Coverage Opportunity Score
- Unhealthy source count
- Thin-search signal
- GenAI cited-source signal
- Premium source demand
- ARR exposure

Canonical demo gap:

```text
GAP-IN-TAM-SOC-AUTO-0307
India / Tamil / Social Media / Automotive
CHS: 62
Opportunity: 92
Unhealthy: 445
Thin Search: 246
GenAI Cited: 318
Premium Requests: 12
Customer ARR: $780K
```

## 6.3 Candidate discovery principles

Candidate discovery must be **channel-aware** and **language-aware**.

Examples:

### News / Press
- National publishers
- Regional publishers
- Local news
- Trade / business publications
- PR / press release portals

### Social Media
- YouTube channels
- Facebook pages
- X accounts
- Instagram properties

### Reddit
- Relevant subreddits
- Regional communities
- Topic communities

### Forums
- Regional forums
- Industry communities
- Enthusiast forums

### Podcasts
- Shows
- Networks
- RSS feeds
- Podcast publishers

## 6.4 7-Factor SourceScout Ranking

SourceScout does **not** simply reuse Phase 1 KPIs.

Phase 1 KPIs explain **why the gap matters**. SourceScout factors explain **why Candidate A is better than Candidate B**.

Locked 7-factor model:

| Factor | Weight |
|---|---:|
| Authority & Credibility | **20%** |
| Coverage Gap Relevance | **18%** |
| Unique Content Value | **15%** |
| Customer & Commercial Demand | **15%** |
| GenAI / Product Evidence | **12%** |
| Content Volume & Freshness | **10%** |
| Ingestion Feasibility | **10%** |

Total = 100%

Each candidate receives:

- SourceScout Score / 100
- Confidence score
- Factor-by-factor explanation
- Evidence snapshot
- Atlas de-duplication state
- Recommended action
- Projected Coverage Health lift

## 6.5 Candidate actions

### ADD
High-value missing source. Candidate can proceed toward induction / governance.

### FIX
The source already exists in the source master / Atlas state but is unhealthy. Do **not** duplicate induction. Route to Source Doctor.

### WATCH
Potentially useful source, but evidence or technical feasibility is not strong enough yet.

### REJECT
Low authority, duplicate, low uniqueness, poor relevance, or unsuitable technical structure.

## 6.6 Critical de-duplication rule

SourceScout must always answer:

> **Is this truly a missing source, or is it already in Meltwater and simply unhealthy?**

If existing/unhealthy:

`FIX → Source Doctor`

This is the key architectural bridge between Phase 2 and Phase 3.

## 6.7 Projected Coverage Lift

SourceScout estimates the effect of adding / repairing selected candidates.

Example concept:

```text
Current CHS: 62
Projected CHS after candidate set: 79
```

Supporting projections can include:

- New articles/posts per month
- Reduction in thin searches
- Increase in source diversity
- Premium requests addressed
- ARR demand represented

These are **modeled projections**, not measured production outcomes.

## 6.8 Real public source identities used in demo

The prototype intentionally uses **real public properties** for source identities / URLs while keeping internal Meltwater metrics modeled.

Examples used across SourceScout scenarios include:

### Tamil / India / News
- Hindu Tamil Thisai — `hindutamil.in`
- Dinamalar — `dinamalar.com`
- Dinamani — `dinamani.com`
- Thanthi TV — `thanthitv.com`

### Tamil / India / Social Media / Automotive
- Auto Talks Tamil
- MotoWagon
- AutoTrend Tamil
- BiN's MoTor Tamil
- Thanthi TV Motor
- DriveVlog
- Tamil Automobiles
- Hindu Tamil Thisai — YouTube

### Netherlands / Dutch / Automotive
- AutoWeek
- Autoblog.nl

### India / Automotive community
- Team-BHP
- r/carIndia

### Other diagnostic examples used later
- Yle Uutiset
- Aftonbladet

## 6.9 Data integrity rule

**Real / public:**

- Source name
- Public URL/domain
- Public channel identity
- Country / language / topic fit when publicly evident

**Prototype / modeled:**

- Atlas state
- SourceScout score
- Confidence
- ARR
- Ticket demand
- GenAI signal count
- Projected lift
- Ingestion feasibility
- Internal evidence

Never present prototype internal values as verified Meltwater production data.

---

# 7. Phase 3 — Source Doctor

## 7.1 Purpose

Source Doctor receives `FIX` candidates from SourceScout and behaves as a **diagnostic engine + repair orchestrator**.

It answers:

> **What failed, why did it fail, what is the safest fix, and how do we prove recovery?**

## 7.2 Source Doctor input contract

A case should inherit:

- Doctor Case ID
- Gap ID
- Source ID
- Source name
- Domain/channel
- Country
- Language
- Channel
- Category
- SourceScout score
- ARR exposure
- Priority
- Atlas state
- Health history
- Last success
- Expected baseline
- Observed behavior

## 7.3 Locked 8-Cause Diagnostic Engine

| # | Cause | Meaning |
|---:|---|---|
| 1 | **Source Unreachable / Offline** | Domain dead, DNS/HTTP failure, redirect loop, sustained outage |
| 2 | **Access / Blocking Issue** | Anti-bot, login wall, geo restriction, robots, rate limit |
| 3 | **Article Discovery Failure** | Source is live but new article/post URLs are no longer discovered |
| 4 | **Extraction / Template Break** | URLs found but title/body/date extraction fails after template/site change |
| 5 | **Metadata Failure** | Wrong or missing date, author, language, headline, media type, category |
| 6 | **Source Configuration / Mapping Issue** | Wrong source URL, duplicate, wrong canonical/country/language/channel mapping |
| 7 | **Ingestion Pipeline Failure** | Extraction succeeds but content fails downstream / does not reach Explore |
| 8 | **Legitimate Low Activity / False Alarm** | Source simply publishes less; no actual technical break |

Cause #8 is strategically important because it prevents CoverageOS from “repairing” a source that is not broken.

## 7.4 Diagnosis evidence

A diagnosis should show evidence such as:

- Last successful item
- Expected publishing baseline
- Actual observed volume
- Reachability state
- Discovery state
- Extraction state
- Metadata quality
- Ingestion / downstream state
- Confidence
- Risk
- Recommended operational path

## 7.5 Auto-Fix Decision Engine

Locked routes:

### AUTO-FIX
High confidence + low operational risk.

### AUTO-FIX + VERIFY
CoverageOS can apply or simulate a repair, but recovery must be validated.

### HITL REQUIRED
Ambiguous, high-value, premium, medium/high-risk, or manually governed cases.

### ENGINEERING ESCALATION
Issue requires engineering / crawler / external system support.

### NO ACTION / WATCH
False positive or legitimate low activity.

### Important principle

Do **not** use confidence alone.

Automation eligibility should consider:

- Diagnostic confidence
- Fix risk
- Source importance
- Premium status
- ARR exposure
- Change type
- Potential blast radius

## 7.6 Repair lifecycle

```text
Diagnose
  ↓
Recommend
  ↓
Apply / Route
  ↓
Validate
  ↓
Observe
  ↓
Close as Recovered / Escalated / Watch
```

## 7.7 Tool-path concept

The prototype maps likely operational routes such as:

- `Atlas → Nitro → Explore`
- `Nitro → Explore`
- `Atlas → Ingestion → Explore`
- `Engineering / Wrapidity → Explore`

These are conceptual workflow routes based on the project context and should not be treated as a formally verified internal SOP unless independently confirmed.

## 7.8 Canonical demo Doctor case

### MotoWagon

- Case: `DOC-MWG-0307`
- Gap: `GAP-IN-TAM-SOC-AUTO-0307`
- Country: India
- Language: Tamil
- Channel: Social Media
- Category: Automotive
- SourceScout: 94
- ARR: $780K
- Priority: P0
- Root Cause: **Article Discovery Failure**
- Confidence: 88%
- Risk: Medium
- Route: **HITL REQUIRED**
- Tool path: `Atlas → Nitro → Explore`
- Last success: 18 Nov 2026
- Baseline: 18–25 posts/week
- Observed: 0 new items / 4 days
- Reachability: Healthy
- Extraction: Content accessible
- Ingestion: No recent items
- Recommended fix: Refresh latest-content discovery configuration, validate against recent posts, then confirm downstream visibility in Explore.
- Health before: 42
- Health after (modeled): 91

## 7.9 Other prototype Doctor cases

### Dinamalar
- Root cause: Extraction / Template Break
- Route: AUTO-FIX + VERIFY
- Health: 51 → 93 modeled

### Autoblog.nl
- Root cause: Ingestion Pipeline Failure
- Route: AUTO-FIX + VERIFY
- Health: 47 → 95 modeled

### Yle Uutiset
- Root cause: Metadata Failure
- Route: HITL REQUIRED
- Health: 58 → 90 modeled

### Aftonbladet
- Root cause: Access / Blocking Issue
- Route: ENGINEERING ESCALATION
- Health: 44 → 88 modeled

---

# 8. Phase 4 — Human-in-the-Loop (HITL)

## 8.1 Purpose

HITL is the governance layer for:

- Ambiguous diagnoses
- Manual source activation
- Premium / high-value sources
- Mapping review
- Risky configuration changes
- Cases that require operational judgment

HITL should **not** become a generic ticket list.

Its strategic value is:

> **Every human decision becomes structured learning data for CoverageOS.**

## 8.2 Queue inputs

Cases can come from:

- Source Doctor repair review
- SourceScout new-source activation review
- Premium / brand review
- Mapping review
- Engineering escalation context

## 8.3 Queue prioritization

The queue is business-impact-first, not simply FIFO.

Suggested priority inputs:

- Coverage Opportunity
- Customer ARR
- Premium status
- SourceScout importance
- Outage duration
- Affected markets/products
- AI confidence ambiguity
- Change risk

Priority levels used in demo:

- **P0 Critical**
- **P1 High**
- **P2 Normal**
- **P3 Watch**

## 8.4 Work types

- Repair Review
- Mapping Review
- Activation Review
- Premium / Brand Review
- Metadata Review
- Engineering Escalation
- False-Positive Review

## 8.5 Human decision actions

Locked action set:

- **Approve Fix**
- **Modify Fix**
- **Manual Activation**
- **Escalate**
- **Reject Diagnosis**
- **Watch**

## 8.6 Structured AI Learning Record

When a reviewer changes or confirms a decision, capture:

- AI diagnosis
- AI recommendation
- Human decision
- Human diagnosis (if changed)
- Override reason
- Tool/action performed
- Resolution
- Verified outcome

Example:

```text
AI diagnosis: Extraction Failure
Human diagnosis: Mapping Issue
Override reason: Wrong canonical source configured
Resolution: Atlas source URL corrected
Outcome: Recovered
```

This is the core learning-loop value of HITL.

## 8.7 Canonical HITL queue examples

### HITL-0421 — MotoWagon
- Work Type: Repair Review
- Priority: P0
- Confidence: 88%
- ARR: $780K
- Recommendation: Approve discovery repair
- Reason: Article Discovery Failure
- Route: Atlas + Nitro

### HITL-0418 — Yle Uutiset
- Work Type: Mapping Review
- Priority: P1
- Confidence: 82%
- ARR: $390K
- Recommendation: Review multilingual metadata mapping

### HITL-0415 — Auto Talks Tamil
- Work Type: Activation Review
- Priority: P1
- Confidence: 96%
- ARR: $780K
- Recommendation: Approve new-source induction

### HITL-0412 — AutoTrend Tamil
- Work Type: Activation Review
- Priority: P2
- Confidence: 95%

### HITL-0409 — Thanthi TV Motor
- Work Type: Premium / Brand Review
- Priority: P2
- Confidence: 90%

---

# 9. Phase 5 — Product & Revenue Impact

## 9.1 Purpose

This is the executive payoff of CoverageOS.

Phases 1–4 explain **how CoverageOS works**.

Phase 5 answers:

> **If Meltwater improves coverage, what measurable value do customers, products, AI systems, operations, and the business receive?**

For C-level judges, this is intentionally the most strategic and visually rich part of the prototype.

## 9.2 Core value chain

```text
More authoritative sources
        ↓
More quality content ingested
        ↓
More complete product intelligence
        ↓
Stronger AI / MCP evidence
        ↓
Fewer customer coverage issues
        ↓
Higher adoption / retention / expansion potential
```

## 9.3 Executive KPI strip — modeled portfolio

- **Coverage Improvement:** +17 pts
- **New Quality Content:** +41%
- **MCP Confidence:** +19 pts
- **Support Tickets:** −47%
- **ARR Protected:** $4.8M
- **Expansion Opportunity:** $1.6M

These values are **modeled prototype figures**, not production financial results.

## 9.4 Before → CoverageOS Action → After

Canonical selected gap:
`GAP-IN-TAM-SOC-AUTO-0307`

### Before CoverageOS

- Coverage Health: 62
- Monthly relevant content: 8,400
- Thin / zero-result demand: 246
- GenAI citation coverage: 61%
- MCP evidence confidence: 72%
- Support tickets / month: 34
- ARR exposure: $780K

### CoverageOS actions

- 6 sources added
- 2 sources repaired
- 1 HITL approval

### After CoverageOS — modeled

- Coverage Health: 79
- Monthly relevant content: 13,700
- Thin / zero-result demand: 118
- GenAI citation coverage: 89%
- MCP evidence confidence: 91%
- Support tickets / month: 18
- ARR addressed: $620K

## 9.5 Product Intelligence Impact Map

CoverageOS is represented as a central coverage-lift engine connected to downstream Meltwater products.

Products shown:

### Explore
- Metric: **+41% relevant content**
- Value story: Broader Tamil automotive coverage, fewer thin searches, stronger freshness.

### Trends
- Metric: **+23 pts regional confidence**
- Value story: More representative topic rankings and reduced coverage-driven low-volume distortion.

### Analyze
- Metric: **+18% dataset completeness**
- Value story: More complete share-of-voice, competitor, and regional datasets.

### Media Relations
- Metric: **+186 journalists discovered**
- Value story: New outlets create additional journalist, author, beat, and publisher intelligence.

### GenAI Lens
- Metric: **+28 pts citation coverage**
- Value story: More externally cited authoritative sources become available inside Meltwater coverage.

### MCP
- Metric: **+19 pts evidence confidence**
- Value story: More authoritative, local-language, and fresh evidence improves answer confidence.

### UI direction

The final tweaked prototype uses:

- CoverageOS as a central node
- Connected arrows / signal paths to each product
- Subtle professional animation
- Meltwater eye symbol as the common official identity element
- Product names retained as text
- No fabricated standalone product logos

## 9.6 MCP / AI evidence impact

Modeled selected-gap evidence shift:

| Metric | Before | After |
|---|---:|---:|
| Relevant evidence documents | 42 | 138 |
| Unique authoritative sources | 18 | 47 |
| Local-language sources | 7 | 31 |
| Evidence freshness | 74% | 95% |
| MCP confidence | 72% | 91% |

Core executive message:

> **AI cannot reason over evidence Meltwater never captured. CoverageOS strengthens the evidence foundation behind MCP.**

## 9.7 GenAI Lens closed loop

CoverageOS creates a strategic feedback cycle:

```text
GenAI Lens identifies external cited authoritative sources
        ↓
CoverageOS detects coverage gap
        ↓
SourceScout discovers / ranks source
        ↓
Source added or repaired
        ↓
Meltwater coverage improves
        ↓
GenAI Lens itself gains stronger source coverage
```

## 9.8 Media Relations compounding effect

Improved source coverage also enriches Meltwater’s media / journalist graph.

Modeled impact:

- +47 new authoritative outlets
- +186 journalist profiles discovered
- +324 existing journalist profiles enriched
- +73 new beats/topics mapped
- +21% regional journalist coverage

Strategic message:

> **Coverage investment compounds. One new source can improve monitoring, analysis, AI evidence, and journalist intelligence at the same time.**

## 9.9 Operational impact

Modeled portfolio values:

| Metric | Before | After |
|---|---:|---:|
| Content support tickets | 420 | 275 |
| Premium source requests | 86 | 39 |
| Manual investigation hours | 310 | 148 |
| Avg source-resolution time | 3.8 days | 1.4 days |
| Auto-resolved issues | 0% baseline concept | 58% modeled |

## 9.10 Revenue model

### ARR Protected

**$4.8M modeled**

Revenue associated with customers affected by coverage problems where improved coverage reduces risk or resolves high-value demand.

### Expansion Opportunity

**$1.6M modeled**

Potential expansion connected to:

- Better regional coverage
- Premium source value
- Additional product adoption
- MCP / GenAI usage
- Improved market completeness

### Operational Efficiency

**$400K modeled annualized efficiency**

Potential savings from reduced manual source investigation / support workload.

### Total Modeled Business Impact

**$6.8M**

Breakdown:

- $4.8M ARR protected
- $1.6M expansion opportunity
- $0.4M operational efficiency

### Modeled Coverage ROI

**8.4×**

Important: Always label these as **modeled / prototype** financial values unless replaced with verified finance data.

---

# 10. Source Journey Timeline — Cross-Phase Story

One of the strongest demo narratives is to show a single source journey across the entire system.

Canonical story:

```text
1. COVERAGE INTELLIGENCE
   Tamil automotive Social Media blind spot detected
   GAP-IN-TAM-SOC-AUTO-0307
   CHS 62 | Opportunity 92 | $780K ARR signal

2. SOURCESCOUT
   Real authoritative candidates discovered and ranked
   MotoWagon detected as existing/unhealthy → FIX

3. SOURCE DOCTOR
   Article Discovery Failure diagnosed
   Confidence 88%
   Recommended path: Atlas → Nitro → Explore

4. HITL
   P0 repair review
   Human approves / modifies repair
   Structured reason captured as learning data

5. VERIFY
   Ingestion restored / downstream visibility observed

6. PRODUCT & REVENUE IMPACT
   CHS 62 → 79 modeled
   MCP confidence 72 → 91 modeled
   Thin demand 246 → 118 modeled
   Tickets 34 → 18 modeled
   ARR addressed $620K modeled
```

This is the preferred judge demo journey because it makes the five phases feel like one coherent platform.

---

# 11. UI / Design System Direction

## 11.1 Brand principles

The prototype follows a Meltwater-style visual system using:

- Primary teal: `#28BBBB`
- Medium teal: `#00A7A5`
- Dark teal gray: `#1C7070`
- Neutral gray: `#F0F4F4`
- Black: `#1A1A1A`
- Accent Orange: `#FF6221`
- Accent Yellow: `#FFCC01`
- Accent Purple: `#B627A1`

Visual guidance:

- Clean, light, spacious, product-grade interface
- Teal as the main brand anchor
- Accent colors used selectively
- Avoid generic dark “AI dashboard” styling
- Avoid excessive glow / neon effects
- Avoid nested unnecessary cards
- Strong visual hierarchy
- Rich but restrained UI
- Executive-ready at approximately 90% Windows browser zoom

## 11.2 Navigation

All five phases use a consistent left-side phase navigation:

1. Coverage Intelligence
2. SourceScout
3. Source Doctor
4. Human-in-the-Loop
5. Product & Revenue Impact

The left panel should remain fixed while the main workspace scrolls.

## 11.3 Important UI lessons from iteration

The prototype was refined through several rounds. Future changes should preserve these lessons:

- Long KPI labels must wrap rather than overflow.
- Mission/context text must not overlap KPI strips.
- Fixed sidebar should not scroll with content.
- Maps should avoid “box inside box inside box” density.
- Tables should use their own scroll where needed rather than expanding page height.
- Bottom KPI / ROI cards must not crop content.
- Before / After comparisons should use restrained differentiated shading.
- Product Impact Map should feel like a connected ecosystem, not six disconnected boxes.
- Animation must be subtle and professional.

---

# 12. Data Discipline — Critical

This section is mandatory for any future LLM or developer.

## 12.1 Real / user-supplied evidence

The following are real inputs supplied by the project owner:

- Exact Trends Center country results listed in Section 5.8
- The existence and role of Crimson, Atlas, Nitro, Explore, GenAI Lens, Premium Customer Tickets in the intended workflow context
- The general operational concept of using content support demand, source master health, ingestion status, premium requests, and AI citations to drive coverage intelligence

## 12.2 Real public source identities

SourceScout intentionally uses real public source names / URLs / channels where possible.

These are not proof that the sources are or are not currently in Meltwater production.

## 12.3 Prototype / modeled values

Unless independently replaced with verified internal data, treat all of the following as **demo values**:

- Atlas source status
- ARR exposure
- Support ticket counts
- SourceScout scores
- Diagnostic confidence
- Root-cause evidence
- Expected publishing baselines
- Health recovery values
- Coverage lift
- MCP confidence lift
- Product impact percentages
- Journalist counts
- Ticket reduction
- Revenue figures
- ROI

## 12.4 Never do this

Do not tell judges or stakeholders:

> “CoverageOS already produced $6.8M impact.”

Correct framing:

> **“The prototype models how CoverageOS could quantify impact across ARR protection, expansion opportunity, and operational efficiency. In this demo scenario, the modeled total is $6.8M.”**

---

# 13. Application / Repository Structure

Current integrated prototype structure:

```text
CoverageOS_Complete_Prototype/
│
├── index.html
├── README.md
├── start_windows.bat
├── start_mac_linux.sh
│
├── data/
│   └── pipeline.json
│
├── shared/
│   ├── coverageos-logo.png
│   ├── meltwater-logo.png
│   └── meltwater-symbol.png
│
├── phase1/
│   ├── index.html
│   ├── styles.css
│   ├── app.js
│   ├── README.md
│   ├── data/
│   │   ├── country-data.json
│   │   └── world.geojson
│   └── assets/
│
├── phase2/
│   ├── index.html
│   ├── styles.css
│   ├── app.js
│   ├── README.md
│   ├── data/
│   │   ├── phase1-country-data.json
│   │   └── source-scout-candidates.json
│   └── assets/
│
├── phase3/
│   ├── index.html
│   ├── styles.css
│   └── app.js
│
├── phase4/
│   ├── index.html
│   ├── styles.css
│   └── app.js
│
└── phase5/
    ├── index.html
    ├── styles.css
    └── app.js
```

## Canonical pipeline file

`data/pipeline.json`

This is the preferred machine-readable handoff for:

- Selected gap
- Doctor cases
- Diagnostic causes
- HITL queue
- Product impact
- Revenue impact

When updating downstream phases, prefer modifying the canonical data contract instead of hard-coding disconnected values in the UI.

---

# 14. Running the Prototype Locally

From the integrated project root:

```bash
python -m http.server 8080
```

Then open:

```text
http://localhost:8080
```

Windows and macOS/Linux launcher files are also included in the project.

The project is designed to be GitHub-friendly and can be pushed to a repository for local/demo hosting.

---

# 15. Demo Narrative for Judges

Recommended presentation flow:

## Step 1 — Start with the business problem

> Meltwater’s products only know what Meltwater captures. A blind spot in content coverage becomes a blind spot in Explore, Trends, Analyze, Media Relations, GenAI Lens and MCP.

## Step 2 — Coverage Intelligence

Show the world map and country health differences.

Open the Tamil Automotive Social Media blind spot.

Emphasize:

- CHS 62
- Opportunity 92
- 246 thin-search signals
- 318 GenAI cited-source signals
- $780K customer ARR signal

## Step 3 — SourceScout

Show:

- Real authoritative candidates
- 7-factor ranking
- ADD vs FIX vs WATCH
- Atlas de-duplication logic

Select MotoWagon.

Explain:

> SourceScout does not blindly add sources. It detects that MotoWagon already exists but is unhealthy, so it routes the source to Source Doctor instead of creating a duplicate.

## Step 4 — Source Doctor

Show:

- 8-cause diagnostic engine
- Article Discovery Failure
- 88% confidence
- Suggested fix
- Atlas → Nitro → Explore validation path

Explain:

> CoverageOS automates only when confidence and risk allow it. This case requires human approval.

## Step 5 — HITL

Show:

- P0 queue
- $780K ARR exposure
- Approve / modify / escalate choices
- Structured learning record

Explain:

> Human decisions are not lost in Slack or tickets. They become labeled learning data for CoverageOS.

## Step 6 — Product & Revenue Impact

Show:

- Before vs After
- Product Intelligence Impact Map
- MCP evidence confidence
- Media Relations enrichment
- Ticket reduction
- ARR protected / expansion / ROI

Close with:

> **CoverageOS is not another source-maintenance tool. It is the intelligence layer that protects and continuously improves the content foundation behind every Meltwater product.**

---

# 16. Future Production Architecture — Suggested Direction

This is not implemented in the prototype, but it is the logical production path.

## Data layer

Potential normalized entities:

### `source_master`
- source_id
- source_name
- canonical_url/domain
- country
- language
- channel/content_type
- category
- active_status
- premium_flag
- current_health
- Atlas fields

### `customer_demand`
- source/domain
- anonymized account_id
- ARR / ARR band
- ticket_type
- timestamp
- premium_request
- requested geography/language/category

### `source_ingestion_health`
- source_id
- timestamp/day
- ingested_item_count
- baseline_expected_volume
- last_seen
- discovery_state
- extraction_state
- ingestion_state

### `ai_citations`
- source/domain
- citation_count
- GenAI Lens context
- category
- geography/language
- date

### `coverage_dimensions`
- region
- country
- language
- channel
- category

### `coverage_gap`
- gap_id
- health_score
- opportunity_score
- reason_codes
- commercial priority

### `source_candidate`
- gap_id
- candidate_id
- public source identity
- 7-factor scores
- action
- confidence

### `diagnostic_case`
- doctor_case_id
- gap_id
- source_id
- root cause
- confidence
- risk
- recommended repair
- route

### `hitl_decision`
- hitl_case_id
- AI recommendation
- human decision
- override reason
- final outcome

### `impact_measurement`
- gap_id
- before metrics
- actions
- after metrics
- product impact
- support impact
- revenue model

## Processing principles

- Canonicalize / deduplicate sources by source ID and domain.
- Distinguish publisher origin from target coverage geography.
- Separate measured data from modeled projections.
- Keep score explanations available for every decision.
- Preserve full source journey lineage.

---

# 17. CoverageOS Concepts Considered for Future Expansion

These ideas were discussed as valuable future capabilities but are not the primary current prototype scope.

### Coverage Diversity Index
Measures diversity across:

- Publisher
- Ownership
- Geography
- Language
- Editorial type
- Platform
- Unique vs syndicated content

### Source Value Score
Potential factors:

- Unique content
- Customer searches
- Mentions surfaced
- Trends contribution
- MCP contribution
- Geographic/language uniqueness
- Authority
- Number/value of customers benefited

### Content Black Holes
Detect areas with:

> **High customer/product demand + low content density**

### Source Twin
Build a baseline expected behavior profile for each source to detect abnormal drops.

### MCP Coverage Guard
Allow MCP to expose or use a coverage-confidence signal and send low-confidence evidence gaps back into CoverageOS.

### Trend Coverage Guard
Attach coverage confidence to trend rankings so weak regional coverage is visible.

### Live Event Coverage Booster
Temporarily prioritize regional/local sources during major events.

### Ticket-to-Signal Loop
Treat each customer support ticket as systemic coverage intelligence rather than only a one-off support issue.

---

# 18. What Is Locked vs Flexible

## Locked unless project owner changes it

- CoverageOS name
- Five-phase architecture
- Phase names
- Persistent Gap ID lineage
- Phase 2 7-factor model
- Phase 3 8-cause diagnostic model
- ADD / FIX / WATCH / REJECT routing
- HITL as governance + learning-data layer
- Phase 5 executive impact framing
- Real-source / modeled-metric separation
- Meltwater-style clean light UI
- Canonical selected demo gap: `GAP-IN-TAM-SOC-AUTO-0307`

## Flexible / expected to evolve

- Exact production score formulas
- Exact score weights after calibration
- Real internal database schemas
- Actual Atlas / Nitro APIs
- True ARR values
- Real ticket volumes
- Real post-fix impact measurement
- Production automation thresholds
- Final product naming conventions for internal components

---

# 19. Instructions for Another LLM Continuing This Project

If you are an LLM receiving this file, follow these rules:

1. **Do not redesign the five-phase architecture unless explicitly asked.**
2. **Treat `data/pipeline.json` as the canonical machine-readable story.**
3. **Preserve the Gap ID across phases.**
4. **Never claim prototype values are real Meltwater production metrics.**
5. **Do not fabricate Atlas/Nitro states, ARR, ticket data, or product impact as factual results.**
6. **Real public source identity does not imply a verified Meltwater source-master state.**
7. **Use the exact Trends Center evidence table when discussing the supplied real country analysis.**
8. **Phase 1 asks where/why. Phase 2 asks which source. Phase 3 asks what is broken. Phase 4 governs human exceptions. Phase 5 proves value.**
9. **Do not merge SourceScout and Source Doctor responsibilities.**
10. **Do not turn HITL into a generic ticketing system; retain structured learning-data capture.**
11. **When modifying UI, preserve the clean Meltwater brand style and avoid dense nested panels.**
12. **When building production logic, separate measured metrics from predicted / modeled impact.**
13. **For judge-facing language, emphasize platform value, product improvement, MCP confidence, operational efficiency, ARR protection, and expansion—not just source counts.**
14. **For any financial figure, use “modeled,” “prototype,” or “illustrative” unless real finance data is provided.**
15. **If internal workflow details are missing or unverified, state the gap instead of inventing SOPs.**

---

# 20. One-Paragraph Handover Prompt for Another LLM

Use the following if a very compact transfer is needed:

> I am building **CoverageOS**, a Meltwater hackathon prototype that acts as an AI-powered global coverage intelligence and self-healing layer for Meltwater’s content ecosystem. It has five locked phases: **Coverage Intelligence** (detect/prioritize blind spots using CHS, Opportunity Score, source health, thin search, GenAI citations, premium requests and ARR), **SourceScout** (discover real authoritative sources and rank them using a 7-factor model; ADD/FIX/WATCH/REJECT), **Source Doctor** (diagnose existing unhealthy sources using an 8-cause engine and route to auto-fix, HITL, engineering or watch), **Human-in-the-Loop** (business-impact-prioritized queue where Atlas/Nitro-related human decisions become structured AI learning data), and **Product & Revenue Impact** (show downstream improvement across Explore, Trends, Analyze, Media Relations, GenAI Lens, MCP, support operations and modeled revenue/ROI). The canonical demo journey is `GAP-IN-TAM-SOC-AUTO-0307` for India/Tamil/Social Media/Automotive, with MotoWagon as the FIX case. Public source identities are real, but Atlas status, ARR, scores, diagnostics, product lifts and financial values are prototype/modelled unless explicitly verified. Preserve the same Gap ID across all phases and treat `data/pipeline.json` as the canonical machine-readable contract.

---

# 21. Final Project Positioning

CoverageOS should ultimately be understood as:

> **The intelligence layer that continuously monitors, prioritizes, expands, repairs, validates and measures Meltwater’s global content coverage — so every downstream product and AI experience becomes more complete, more trustworthy and more commercially valuable.**

The strongest final executive framing is:

> **Content powers Meltwater. CoverageOS protects that fuel supply — making it broader, healthier and smarter so every product, every AI answer and every customer sees more of the world.**

---

## Canonical Prototype Package

The current integrated prototype contains all five phases and the canonical pipeline data.

Primary machine-readable contract:

`data/pipeline.json`

Primary local start command:

```bash
python -m http.server 8080
```

Then open:

`http://localhost:8080`

---

**End of CoverageOS handover.**