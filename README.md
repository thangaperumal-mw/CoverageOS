# CoverageOS Complete Prototype

Five-phase hackathon demo:

1. Coverage Intelligence — global coverage health, demand and opportunity intelligence.
2. SourceScout — real public source discovery with 7-factor ranking and ADD/FIX/WATCH/REJECT routing.
3. Source Doctor — 8-cause diagnostic engine, safe repair routing and verification plan.
4. Human-in-the-Loop — prioritized governance queue, Atlas/Nitro action context and structured learning records.
5. Product & Revenue Impact — product intelligence, MCP/GenAI confidence, operational outcomes and modeled revenue/ROI.

## Run locally

From this folder:

```bash
python -m http.server 8080
```

Then open http://localhost:8080

## Data discipline

Public source identities in SourceScout / Source Doctor are real public properties already used in the approved prototype. Atlas/Nitro states, ARR, diagnostic evidence, confidence, projected coverage lift, product impact, ticket reduction and financial figures are prototype/modelled values for the hackathon demonstration.

## Pipeline contract

The canonical pipeline data is `data/pipeline.json`. The selected demo journey keeps `GAP-IN-TAM-SOC-AUTO-0307` across all downstream phases.

## Final UI tweak pass
- HITL: increased header breathing room; prevented inherited-signal/KPI overlap; aligned long KPI supporting copy.
- Product & Revenue Impact: fixed top-strip/KPI overlap and KPI text alignment.
- Before/After: removed metric cropping and added restrained brand-consistent before/after surface differentiation.
- Product Intelligence Impact Map: replaced plain boxes with a connected, subtly animated CoverageOS-to-products signal network. Product cards use the official Meltwater eye symbol with the real product names rather than fabricated standalone product logos.
- Revenue & Coverage ROI: increased panel/ROI space so the 8.4x modeled ROI remains fully visible.
