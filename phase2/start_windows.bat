@echo off
cd /d %~dp0
start "CoverageOS SourceScout" http://localhost:8080
python -m http.server 8080
pause
