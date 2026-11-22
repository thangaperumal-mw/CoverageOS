# CoverageOS — Phase 1 Coverage Intelligence

Final Coverage Intelligence prototype.

Key points:
- Thin-Result Country Ranking prioritizes the exact Trends Center evidence set supplied for Finland, Netherlands, Sweden, Canada, France, Germany, Australia, United Kingdom, Japan and United States.
- South Asia demo rows include India, Pakistan, Bangladesh, Sri Lanka, Nepal, Bhutan, Maldives and Afghanistan.
- Ranking includes Avg Result Count, Low (<50), and Zero-Result Categories so downstream phases can trace fixes back to the original coverage signal.
- All other countries use deterministic prototype values generated client-side from the world geography dataset.

Run from the repository root with `python -m http.server 8080`, then open `phase1/index.html`.
