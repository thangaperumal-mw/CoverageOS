# CoverageOS Data & Scoring Guide

This file explains the prototype scoring logic and the boundary between verified evidence and modeled hackathon data.

## Coverage Health Score (CHS)

Coverage Health asks: **How healthy and complete is coverage in this market / language / channel / category?**

Illustrative dimensions discussed for the prototype:
- Source availability / breadth — 25%
- Source health — 20%
- Freshness — 15%
- Content volume — 15%
- Geography / language diversity — 10%
- Source diversity — 10%
- Customer issue rate — 5%

These weights are **not a production Meltwater formula**. Production scoring should be calibrated using historical coverage outcomes.

## Coverage Opportunity Score

Opportunity asks: **How urgently should Meltwater act?**

Prototype weighting:
- ARR-weighted customer demand — 30%
- Support ticket pressure — 16%
- Premium source demand — 8%
- Coverage gap severity — 20%
- Source health risk — 11%
- GenAI citation demand — 10%
- Thin-search / Trends gap — 5%

A low Health Score does not automatically mean top priority. Opportunity combines technical weakness with customer, product and commercial urgency.

## SourceScout 7-Factor Ranking

| Factor | Weight |
|---|---:|
| Authority & Credibility | 20% |
| Coverage Gap Relevance | 18% |
| Unique Content Value | 15% |
| Customer & Commercial Demand | 15% |
| GenAI / Product Evidence | 12% |
| Content Volume & Freshness | 10% |
| Ingestion Feasibility | 10% |

ARR increases **urgency**, not source authority.

Decision classes:
- **ADD** — high-value missing source
- **FIX** — already exists / unhealthy; route to Source Doctor
- **WATCH** — evidence or feasibility incomplete
- **REJECT** — duplicate, unsuitable or low value

## Source Doctor 8-Cause Model

1. Source Unreachable / Offline
2. Access / Blocking Issue
3. Article Discovery Failure
4. Extraction / Template Break
5. Metadata Failure
6. Source Configuration / Mapping Issue
7. Ingestion Pipeline Failure
8. Legitimate Low Activity / False Alarm

Routing combines confidence, risk, source importance, premium status, ARR exposure and change type:
- AUTO-FIX
- AUTO-FIX + VERIFY
- HITL REQUIRED
- ENGINEERING / EXTERNAL ESCALATION
- NO ACTION / WATCH

## Real evidence in this prototype

The following Trends Center values were supplied by the project owner and should be treated as the real evidence set used in the prototype:

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

South Asia values and all financial / product-impact figures are demo values unless independently verified.

## Public-source identity vs internal state

**Real public facts**
- public source name
- public URL / domain / channel identity
- evident language / market / topical fit

**Prototype modeled fields**
- Atlas state
- ARR exposure
- ticket counts
- SourceScout score / confidence
- ingestion feasibility
- Source Doctor diagnosis and confidence
- projected lift
- support-ticket reduction
- MCP confidence lift
- revenue / ROI

Never infer a real Meltwater source-master state from the fact that a source is used in the demo.
