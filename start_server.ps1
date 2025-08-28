Write-Host "Starting local web server for Vendor Heatmap..." -ForegroundColor Green
Write-Host ""
Write-Host "This will start a web server on http://localhost:8000" -ForegroundColor Yellow
Write-Host "Open your browser and go to: http://localhost:8000" -ForegroundColor Yellow
Write-Host ""
Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Red
Write-Host ""

try {
    python -m http.server 8000
} catch {
    Write-Host "Error: Python not found or http.server module not available" -ForegroundColor Red
    Write-Host "Please ensure Python is installed and accessible from PATH" -ForegroundColor Red
    Read-Host "Press Enter to exit"
}
