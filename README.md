# CoverageOS

> **An AI-powered global coverage intelligence and self-healing layer for Meltwater’s entire content ecosystem.**

CoverageOS is a Meltwater Hackathon XXXVI prototype that explores how coverage can evolve from a reactive source-maintenance workflow into a proactive, measurable and continuously improving intelligence system.

**Core idea:** content is the foundation behind Explore, Trends, Analyze, Media Relations, GenAI Lens, MCP, alerts and reporting. When coverage is thin, stale, broken or missing, that blind spot propagates into every downstream product.

> **AI cannot reason over evidence Meltwater never captured.**

---

## What CoverageOS Does

CoverageOS closes the loop across five connected capabilities:

| Phase | Capability | Core question |
|---|---|---|
| 1 | **Coverage Intelligence** | Where is coverage weak, unhealthy or commercially important? |
| 2 | **SourceScout** | Which authoritative source should we add, fix, watch or reject? |
| 3 | **Source Doctor** | What failed, what is the safest repair, and how do we verify recovery? |
| 4 | **Human-in-the-Loop** | Which cases require human judgment, and how does that decision become learning data? |
| 5 | **Product & Revenue Impact** | What measurable product, customer, operational and business value did better coverage create? |

```text
DETECT → PRIORITIZE → DISCOVER → DIAGNOSE → REPAIR → GOVERN → VERIFY → MEASURE → LEARN
```

---

## Canonical Demo Journey

The prototype intentionally follows one traceable Gap ID across all five phases:

`GAP-IN-TAM-SOC-AUTO-0307`

**India → Tamil → Social Media → Automotive**

```text
Coverage Intelligence
Health 62 | Opportunity 92
        ↓
SourceScout
real public candidates ranked
        ↓
MotoWagon detected as existing/unhealthy → FIX
        ↓
Source Doctor
Article Discovery Failure · 88% confidence
        ↓
HITL
governed repair decision + structured learning record
        ↓
Explore-style verification
        ↓
Product & Revenue Impact
coverage, product, AI/MCP and business outcomes
```

This shared lineage is the architectural backbone of CoverageOS.

---

## Phase 1 — Coverage Intelligence

Coverage Intelligence combines coverage and demand evidence from the types of systems represented in the concept:

- Crimson content-support demand
- Premium source requests
- Atlas source-master / unhealthy-source state
- GenAI Lens cited-source signals
- Explore ingestion monitoring
- Trends thin / zero-result evidence
- Geography, language, channel and content-type dimensions

Two concepts remain deliberately separate:

**Coverage Health Score (CHS)** — how healthy / complete coverage is.

**Coverage Opportunity Score** — how urgently Meltwater should act after considering business and product demand.

The prototype Opportunity model uses:

- ARR-weighted customer demand — 30%
- Support ticket pressure — 16%
- Premium source demand — 8%
- Coverage gap severity — 20%
- Source health risk — 11%
- GenAI citation demand — 10%
- Thin-search / Trends gap — 5%

### Trends Center evidence used in the prototype

The following values were supplied directly for the project:

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

South Asia values in the demo are illustrative unless separately verified.

---

## Phase 2 — SourceScout

Coverage Intelligence decides **where and why** the blind spot matters.

SourceScout decides **which real authoritative source best closes it**.

### 7-factor ranking

| Factor | Weight |
|---|---:|
| Authority & Credibility | 20% |
| Coverage Gap Relevance | 18% |
| Unique Content Value | 15% |
| Customer & Commercial Demand | 15% |
| GenAI / Product Evidence | 12% |
| Content Volume & Freshness | 10% |
| Ingestion Feasibility | 10% |

Decision classes:

- **ADD** — high-value missing source
- **FIX** — source already exists but is unhealthy; route to Source Doctor
- **WATCH** — promising but evidence / feasibility is incomplete
- **REJECT** — duplicate, unsuitable or low-value candidate

A key principle is that **ARR can increase urgency, but it cannot manufacture source authority**.

The canonical Tamil Automotive demo uses real public candidate identities such as Auto Talks Tamil, MotoWagon, AutoTrend Tamil, BiN's MoTor Tamil, Thanthi TV Motor, DriveVlog, Tamil Automobiles and Hindu Tamil Thisai — YouTube.

---

## Phase 3 — Source Doctor

Source Doctor is a diagnostic and repair-orchestration layer for existing sources.

### 8-Cause Diagnostic Engine

1. Source Unreachable / Offline
2. Access / Blocking Issue
3. Article Discovery Failure
4. Extraction / Template Break
5. Metadata Failure
6. Source Configuration / Mapping Issue
7. Ingestion Pipeline Failure
8. Legitimate Low Activity / False Alarm

Possible routes:

- AUTO-FIX
- AUTO-FIX + VERIFY
- HITL REQUIRED
- ENGINEERING / EXTERNAL ESCALATION
- NO ACTION / WATCH

Automation is not based on confidence alone. Repair risk, source importance, premium sensitivity, ARR exposure, change type and reversibility also matter.

---

## Phase 4 — Human-in-the-Loop

HITL is intentionally more than a ticket queue.

Each reviewer decision becomes structured learning data:

```text
AI diagnosis
   ↓
human decision / diagnosis
   ↓
override reason
   ↓
operational action
   ↓
verified outcome
   ↓
future model / routing improvement
```

Reviewer choices include:

- Approve Fix
- Modify Fix
- Manual Activation
- Escalate
- Reject Diagnosis
- Watch

---

## Phase 5 — Product & Revenue Impact

Coverage improvement is valuable only if it improves the downstream intelligence system.

The prototype connects coverage lift to:

- **Explore**
- **Trends**
- **Analyze**
- **Media Relations**
- **GenAI Lens**
- **MCP**

### Selected-gap modeled before / after

| Metric | Before | After |
|---|---:|---:|
| Coverage Health | 62 | 79 |
| Relevant monthly content | 8.4K | 13.7K |
| Thin demand | 246 | 118 |
| GenAI citation coverage | 61% | 89% |
| MCP confidence | 72% | 91% |
| Support tickets / month | 34 | 18 |

### Portfolio-level modeled impact

- Coverage Improvement: **+17 pts**
- New Quality Content: **+41%**
- MCP Confidence: **+19 pts**
- Support Tickets: **−47%**
- ARR Protected: **$4.8M**
- Expansion Opportunity: **$1.6M**
- Operational Efficiency: **$0.4M**
- Total Modeled Business Impact: **$6.8M**
- Modeled Coverage ROI: **8.4×**

These are **hackathon model values, not reported Meltwater financial results**.

---

## Data Discipline

This distinction is critical when reviewing the prototype.

### Real / supplied evidence

- Exact Trends Center values listed above
- Real public source identities / URLs used in SourceScout
- The intended workflow roles of Crimson, Atlas, Nitro, Explore, GenAI Lens and premium/source-support signals as supplied for the project

### Prototype / modeled values

Unless independently replaced with verified internal data, treat these as illustrative:

- Atlas state
- ARR exposure
- support-ticket counts
- SourceScout scores
- diagnostic confidence
- root-cause evidence
- source-health recovery
- product lifts
- MCP confidence lift
- journalist counts
- ticket reduction
- financial impact
- ROI

**A public source appearing in this demo does not prove its real current Meltwater source-master state.**

---

## Repository

```text
CoverageOS/
├── README.md
├── index.html
├── data/
│   └── pipeline.json
├── docs/
│   ├── ARCHITECTURE.md
│   ├── DATA_AND_SCORING.md
│   ├── DEMO_GUIDE.md
│   ├── PROJECT_HANDOVER.md
│   └── PROJECT_STRUCTURE.md
├── phase1/   # Coverage Intelligence
├── phase2/   # SourceScout
├── phase3/   # Source Doctor
├── phase4/   # HITL
├── phase5/   # Product & Revenue Impact
└── shared/
```

### Canonical machine-readable contract

`data/pipeline.json`

Use this file as the cross-phase source of truth for the canonical Gap, Source Doctor cases, HITL queue and impact story.

### Full project context

`docs/PROJECT_HANDOVER.md`

This is the long-form canonical project handover for another developer, designer or LLM.

---

## Run Locally

No build process is required.

```bash
python -m http.server 8080
```

Open:

`http://localhost:8080`

Windows and macOS/Linux launch scripts are also included.

Phase 1 uses published browser modules from D3, TopoJSON and world-atlas to render authentic world geometry; the CoverageOS-specific evidence and logic live in this repository.

---

## Documentation

- [Architecture](docs/ARCHITECTURE.md)
- [Data & Scoring](docs/DATA_AND_SCORING.md)
- [Judge Demo Guide](docs/DEMO_GUIDE.md)
- [Complete Project Handover](docs/PROJECT_HANDOVER.md)
- [Repository Structure](docs/PROJECT_STRUCTURE.md)

---

## Design Direction

The prototype follows Meltwater's clean light visual direction with:

- Brand Teal — `#28BBBB`
- Medium Teal — `#00A7A5`
- Dark Teal Gray — `#1C7070`
- Neutral Gray — `#F0F4F4`
- Black — `#1A1A1A`
- selective Orange / Yellow / Purple accents

The experience keeps a fixed five-phase navigation and uses restrained animation only where it communicates information.

---

## Final Positioning

> **CoverageOS is the intelligence layer that continuously monitors, prioritizes, expands, repairs, validates and measures Meltwater's global content coverage — so every downstream product and AI experience becomes more complete, more trustworthy and more commercially valuable.**

And the simplest version:

> **One coverage improvement. Every Meltwater product gets smarter.**
