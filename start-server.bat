@echo off
echo Starting local web server...
echo.
echo Open your browser and go to: http://localhost:8000
echo.
echo Press Ctrl+C to stop the server
echo.
cd /d "%~dp0"
python -m http.server 8000
if errorlevel 1 (
    echo.
    echo Python not found. Trying PHP...
    php -S localhost:8000
    if errorlevel 1 (
        echo.
        echo Neither Python nor PHP found.
        echo Please install Python or PHP, or use Live Server extension in VS Code.
        pause
    )
)

