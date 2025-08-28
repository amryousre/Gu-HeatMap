@echo off
echo Starting local web server for Vendor Heatmap...
echo.
echo This will start a web server on http://localhost:8000
echo Open your browser and go to: http://localhost:8000
echo.
echo Press Ctrl+C to stop the server
echo.
python -m http.server 8000
pause
