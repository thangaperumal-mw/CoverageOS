# CoverageOS Repository Structure

```text
CoverageOS/
├── README.md
├── index.html
├── .gitignore
├── data/
│   └── pipeline.json
├── docs/
│   ├── ARCHITECTURE.md
│   ├── DATA_AND_SCORING.md
│   ├── DEMO_GUIDE.md
│   ├── PROJECT_HANDOVER.md
│   └── PROJECT_STRUCTURE.md
├── phase1/
│   ├── index.html
│   ├── app.js
│   ├── styles.css
│   └── README.md
├── phase2/
│   ├── index.html
│   ├── app.js
│   ├── styles.css
│   ├── README.md
│   └── data/
│       └── source-scout-candidates.json
├── phase3/
│   ├── index.html
│   ├── app.js
│   └── styles.css
├── phase4/
│   ├── index.html
│   ├── app.js
│   └── styles.css
├── phase5/
│   ├── index.html
│   ├── app.js
│   └── styles.css
├── shared/
│   ├── coverageos-logo.png
│   ├── meltwater-logo.png
│   └── meltwater-symbol.png
├── start_mac_linux.sh
└── start_windows.bat
```

## Source of truth

`data/pipeline.json` is the canonical cross-phase machine-readable contract for:
- selected Gap
- Source Doctor cases
- diagnostic causes
- HITL queue
- Product & Revenue impact

The full strategic / product context is in `docs/PROJECT_HANDOVER.md`.

## Runtime

No build tool is required.

From the repository root:

```bash
python -m http.server 8080
```

Open:

`http://localhost:8080`

The root `index.html` redirects into Coverage Intelligence.

## External dependency

Phase 1 loads published D3 / TopoJSON / world-atlas browser modules from jsDelivr to render the authentic clickable world map. All CoverageOS-specific evidence, scoring logic, phase logic and demo data remain in this repository.

## Development rules

1. Preserve the five-phase architecture.
2. Preserve the same Gap ID across the journey.
3. Prefer `data/pipeline.json` over disconnected hard-coded values.
4. Distinguish measured evidence from modeled values.
5. Do not fabricate production Atlas / Nitro / ARR facts.
6. Keep the left navigation consistent.
7. Maintain Meltwater's clean light visual treatment.
8. Validate layout around 90% Windows browser zoom.
