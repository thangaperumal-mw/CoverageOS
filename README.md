# CoverageOS

<p align="center">
  <img src="shared/coverageos-logo.png" alt="CoverageOS logo" width="210" />
</p>

<p align="center"><strong>AI-powered global coverage intelligence and self-healing for Meltwater's content ecosystem.</strong></p>

CoverageOS is a five-phase hackathon prototype that turns content coverage from a reactive source-maintenance problem into a proactive, measurable and continuously improving intelligence workflow.

> **Core idea:** Every Meltwater insight is only as complete as the content Meltwater captures. CoverageOS detects blind spots, discovers authoritative missing sources, diagnoses unhealthy existing sources, governs uncertain fixes with human review, and translates coverage recovery into product and business impact.

## Why it matters

A coverage gap in a country, language, channel or source can propagate into thin Explore results, weaker Trends signals, incomplete Analyze outputs, missed media-relations intelligence, lower-confidence GenAI/MCP evidence, and recurring support tickets. CoverageOS treats those symptoms as one connected coverage-supply-chain problem.

## Five-phase pipeline

| Phase | Purpose | Output |
|---|---|---|
| **Coverage Intelligence** | Detect and prioritize weak coverage using health, demand and commercial signals | Persistent Gap ID + priority |
| **SourceScout** | Discover and rank real authoritative candidate sources | ADD / FIX / WATCH / REJECT |
| **Source Doctor** | Diagnose unhealthy existing sources with an 8-cause engine | Auto-fix / HITL / escalation |
| **Human-in-the-Loop** | Govern ambiguous or manual actions and capture structured decisions | Verified action + AI learning record |
| **Product & Revenue Impact** | Translate coverage recovery into product, AI, operational and financial outcomes | Executive impact model |

The canonical demo journey follows `GAP-IN-TAM-SOC-AUTO-0307` across all five phases.

## Demo storyline

```text
Coverage Intelligence
        ↓
India · Tamil · Social Media · Automotive blind spot
        ↓
SourceScout ranks real public candidates
        ↓
Existing unhealthy source → Source Doctor
        ↓
8-cause diagnosis + recommended repair
        ↓
HITL approval / Atlas + Nitro operational context
        ↓
Verified recovery
        ↓
Explore · Trends · Analyze · Media Relations · GenAI Lens · MCP impact
        ↓
Support reduction · ARR protection · expansion opportunity · modeled ROI
```

## Run the prototype

The app uses local JSON, so serve the repository with a small HTTP server instead of opening the HTML files directly.

```bash
python -m http.server 8080
```

Then open:

```text
http://localhost:8080
```

Convenience launchers are also included:

- Windows: `start_windows.bat`
- macOS/Linux: `start_mac_linux.sh`

## Repository map

```text
CoverageOS/
├── index.html                    # Entry point → Coverage Intelligence
├── phase1/                       # Coverage Intelligence
├── phase2/                       # SourceScout
├── phase3/                       # Source Doctor
├── phase4/                       # Human-in-the-Loop
├── phase5/                       # Product & Revenue Impact
├── data/
│   └── pipeline.json             # Canonical cross-phase demo contract
├── shared/                       # CoverageOS + Meltwater visual assets
├── docs/
│   ├── PROJECT_HANDOVER.md       # Complete LLM/developer handover
│   ├── ARCHITECTURE.md           # Technical/product architecture
│   ├── DATA_AND_SCORING.md       # Scoring and data discipline
│   ├── DEMO_GUIDE.md             # Judge walkthrough
│   └── PROJECT_STRUCTURE.md      # File and continuation guide
└── README.md
```

## Data discipline

The prototype intentionally separates public facts from modeled Meltwater intelligence.

**Real/public:** source names, domains/URLs, public channels, languages and geographies used in SourceScout/Source Doctor.

**Prototype/modelled:** Atlas/Nitro states, ARR exposure, internal ticket counts, diagnostic evidence, confidence, projected coverage lift, downstream product impact, operational savings and revenue/ROI figures.

No credentials, customer-identifying raw data or production exports are stored in this repository.

## Executive outcome model

The final phase demonstrates how targeted coverage improvement can compound across Meltwater products:

- **Explore:** more relevant content and fewer thin-result experiences
- **Trends:** stronger regional/topic confidence
- **Analyze:** greater dataset completeness
- **Media Relations:** richer outlet/journalist intelligence
- **GenAI Lens:** stronger cited-source coverage
- **MCP:** broader, fresher and more authoritative evidence
- **Operations:** fewer content/premium-source tickets and less manual investigation
- **Business:** modeled ARR protection, expansion opportunity and operational efficiency

Prototype portfolio illustration: **$6.8M modeled business impact** and **8.4× modeled Coverage ROI**. These are demo projections, not reported Meltwater financial results.

## Documentation

Start with:

1. [Project handover](docs/PROJECT_HANDOVER.md) — the complete project context.
2. [Architecture](docs/ARCHITECTURE.md) — how the five phases connect.
3. [Data & scoring](docs/DATA_AND_SCORING.md) — scoring models and evidence boundaries.
4. [Judge demo guide](docs/DEMO_GUIDE.md) — concise presentation path.
5. [Project structure](docs/PROJECT_STRUCTURE.md) — implementation and continuation notes.

## Status

**Hackathon prototype — complete five-phase integrated demo.**

The current build is intentionally optimized for stakeholder demonstration rather than production deployment. Productionization would require governed connectors to internal source master, support/ticket, ingestion, GenAI citation and customer-value systems, plus calibrated scoring and authorization controls.
