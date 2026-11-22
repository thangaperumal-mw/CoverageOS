# CoverageOS — SourceScout

SourceScout converts a prioritized Coverage Intelligence gap into an explainable candidate-source ranking.

The canonical demo uses `GAP-IN-TAM-SOC-AUTO-0307` (India → Tamil → Social Media → Automotive) and eight real public candidate identities. Public source identities/URLs are real; Atlas state, ARR, scores, confidence, feasibility and projected lift are hackathon-modeled values.

Decision classes: `ADD`, `FIX`, `WATCH`, `REJECT`. Existing unhealthy sources are always routed as `FIX` to Source Doctor rather than duplicated.

Run from the repository root with `python -m http.server 8080`, then open `phase2/index.html`.
