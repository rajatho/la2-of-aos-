@echo off
echo ===================================
echo  Starting Antivirus Scanner
echo ===================================
echo.

REM Change to project directory
cd /d "%~dp0"

echo Checking Python installation...
python --version
if errorlevel 1 (
    echo ERROR: Python is not installed or not in PATH
    pause
    exit /b 1
)

echo.
echo Installing dependencies...
pip install -r requirements.txt

echo.
echo Starting Flask server...
echo.
echo ===================================
echo  Server running at:
echo  http://localhost:5000
echo ===================================
echo.
echo Press Ctrl+C to stop the server
echo.

python app.py

pause
