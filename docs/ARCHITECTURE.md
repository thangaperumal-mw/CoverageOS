# CoverageOS Architecture

## Architecture principle

CoverageOS is one closed-loop source-intelligence system, not five independent dashboards.

```text
DETECT → PRIORITIZE → DISCOVER → DIAGNOSE → REPAIR → GOVERN → VERIFY → MEASURE → LEARN
```

The persistent object across the system is a **Coverage Gap** identified by a `Gap ID`. The canonical demo gap is `GAP-IN-TAM-SOC-AUTO-0307`.

## Phase contracts

### 1. Coverage Intelligence

**Input signals**
- Crimson content-support demand, ARR-weighted where available
- Premium source requests
- Atlas source master / unhealthy-source state
- GenAI Lens cited-source signals
- Explore ingestion monitoring
- Trends thin/zero-result evidence
- Geography, language, channel and content-type dimensions

**Outputs**
- Coverage Health Score
- Coverage Opportunity Score
- ranked coverage blind spot
- source-health evidence
- persistent Gap ID

### 2. SourceScout

Receives the Gap ID and inherited evidence. It discovers real public source candidates and evaluates whether a source is missing or already present.

**7-factor ranking**
1. Authority & Credibility — 20%
2. Coverage Gap Relevance — 18%
3. Unique Content Value — 15%
4. Customer & Commercial Demand — 15%
5. GenAI / Product Evidence — 12%
6. Content Volume & Freshness — 10%
7. Ingestion Feasibility — 10%

**Routing**
- `ADD` — missing high-value source
- `FIX` — existing but unhealthy; route to Source Doctor
- `WATCH` — insufficient evidence / lower urgency
- `REJECT` — duplicate, unsuitable or low-value

### 3. Source Doctor

Existing unhealthy sources enter an **8-Cause Diagnostic Engine**:

1. Source Unreachable / Offline
2. Access / Blocking Issue
3. Article Discovery Failure
4. Extraction / Template Break
5. Metadata Failure
6. Source Configuration / Mapping Issue
7. Ingestion Pipeline Failure
8. Legitimate Low Activity / False Alarm

Each diagnosis produces evidence, confidence, recommended repair and operational route.

**Decision classes**
- AUTO-FIX
- AUTO-FIX + VERIFY
- HITL REQUIRED
- ENGINEERING / EXTERNAL ESCALATION
- WATCH / NO ACTION

Automation eligibility should consider diagnostic confidence, fix risk, source importance, premium status, ARR exposure and change type — not confidence alone.

### 4. Human-in-the-Loop

HITL receives ambiguous, high-risk, premium or manual cases.

**Queue types**
- Activation Review
- Repair Review
- Metadata Review
- Mapping Review
- Premium Source Review
- Engineering Escalation
- False-Positive Review

**Human decisions**
- Approve Fix
- Modify Fix
- Manual Activation
- Escalate
- Reject Diagnosis
- Watch

Every override is structured as learning data:

```text
AI diagnosis → human diagnosis → reason code → action → verified outcome
```

### 5. Product & Revenue Impact

The final phase translates verified coverage recovery into product and business outcomes.

**Product impact**
- Explore
- Trends
- Analyze
- Media Relations
- GenAI Lens
- MCP

**Operational impact**
- support-ticket reduction
- premium-request reduction
- manual-investigation reduction
- faster source resolution
- automation rate

**Business impact**
- ARR protected
- expansion opportunity
- operational efficiency
- modeled Coverage ROI

## Canonical source journey

```text
GAP-IN-TAM-SOC-AUTO-0307
India → Tamil → Social Media → Automotive
    ↓
Coverage Intelligence: high-priority gap
    ↓
SourceScout: MotoWagon detected as existing but unhealthy
    ↓
Source Doctor: Article Discovery Failure
    ↓
HITL: governed repair approval
    ↓
Atlas/Nitro operational context + Explore verification
    ↓
Coverage restored
    ↓
Product / MCP / customer / revenue impact
```

## Application architecture

The prototype is intentionally framework-light:

- HTML
- CSS
- vanilla JavaScript
- local JSON
- GeoJSON for Phase 1 map data

`data/pipeline.json` is the canonical cross-phase contract used by the integrated demo.

## Production evolution

A production implementation would replace local prototype data with governed integrations to:

- source master / Atlas
- Crimson support signals
- premium source requests
- ingestion/extraction health
- Explore validation
- GenAI Lens citation evidence
- Trends demand/coverage evidence
- customer/account-value systems
- Nitro/HITL operational workflows

Production scoring must be calibrated on historical outcomes and permissioned data rather than using demo constants.
