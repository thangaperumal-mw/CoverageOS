# CoverageOS — Phase 2 SourceScout

Local hackathon prototype for **Phase 2 — SourceScout: AI Candidate Discovery & 7-Factor Ranking**.

## Run
- Windows: double-click `start_windows.bat`
- macOS/Linux: `./start_mac_linux.sh`
- Or run `python -m http.server 8080` in this folder and open `http://localhost:8080`

## Architecture preserved for later phases
- `phase1/` is the locked Phase 1 Coverage Intelligence build for backward navigation/evidence.
- SourceScout keeps a `Gap ID` for every investigation.
- `FIX` actions save a structured handoff payload in `localStorage` under `coverageOS.phase3Handoff` for Phase 3 Source Doctor.
- `ADD/WATCH/REJECT` decisions retain the same Gap ID for future HITL work.
- Real public source identities/URLs are separated from illustrative internal scores, Atlas state, ARR and projected lift.

## Demo note
Internal Meltwater values in Phase 2 are prototype/demo intelligence. Public source names and URLs are real.


## V2 finishing pass
- Increased typography/readability to match Coverage Intelligence at 90% browser zoom.
- Removed visible Phase 1 wording; uses Coverage Intelligence / Source Doctor names instead.
- Renamed Social Video to Social Media.
- Expanded Tamil automotive Social Media scenario to 8 real public source identities.
- Added a visible FIX candidate for Source Doctor routing.
- Reworked Projected Coverage Lift into a smooth rounded progress bar.

V2.1 layout fix: constrained the Coverage Intelligence mission-text column so long gap paths cannot overlap KPI signal cards at 90% browser zoom.
