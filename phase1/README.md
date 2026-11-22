# CoverageOS — Phase 1 Coverage Intelligence (V6 Final)

Final Phase 1 prototype build.

Key final changes:
- Thin-Result Country Ranking prioritizes the exact Trend Center evidence set supplied by the user: Finland, Netherlands, Sweden, Canada, France, Germany, Australia, United Kingdom, Japan, United States.
- Adds South Asia evidence rows: India, Pakistan, Bangladesh, Sri Lanka, Nepal, Bhutan, Maldives, Afghanistan.
- Ranking now includes Avg Result Count, Low (<50), and Zero-Result Categories so later SourceScout / Source Doctor phases can trace fixes back to the original coverage signal.
- World map is larger and the Coverage Health Score legend is placed inside a second inner map boundary.
- Existing Phase 1 interactions and score logic remain intact.

Run locally with `python -m http.server 8080` from this folder.
