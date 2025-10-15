@echo off
REM run_comfyui.bat - Activate Conda environment 'comfyui' and run main.py from repository root
REM Usage: double-click or run from PowerShell/CMD: run_comfyui.bat

:: Resolve script directory (works with spaces)
set SCRIPT_DIR=%~dp0
cd /d "%SCRIPT_DIR%"

:: Try to initialize conda for cmd.exe, then activate the environment
call conda info >nul 2>&1
if errorlevel 1 (
    REM 'conda' not on PATH; try to locate common install locations
    if exist "%USERPROFILE%\Anaconda3\Scripts\conda.exe" (
        set CONDA_CMD="%USERPROFILE%\Anaconda3\Scripts\conda.exe"
    ) else if exist "%USERPROFILE%\miniconda3\Scripts\conda.exe" (
        set CONDA_CMD="%USERPROFILE%\miniconda3\Scripts\conda.exe"
    ) else (
        echo Could not find conda on PATH or in common locations. Please ensure Anaconda/Miniconda is installed and conda is available.
        pause
        exit /b 1
    )
    REM Initialize base first (use conda hook)
    call "%CONDA_CMD%" activate base >nul 2>&1
) else (
    REM conda is available on PATH
    set CONDA_CMD=conda
)

:: Now activate the target environment 'comfyui'
call %CONDA_CMD% activate comfyui
if errorlevel 1 (
    echo Failed to activate conda environment 'comfyui'. Ensure it exists: conda env list
    pause
    exit /b 1
)

:: Run the application using python from the activated environment
python "%SCRIPT_DIR%\main.py" %*

:: Capture exit code
set EXITCODE=%ERRORLEVEL%
echo Exited with code %EXITCODE%
exit /b %EXITCODE%
