@echo off
REM Define the URL of the Python installer

REM Download Python
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://www.python.org/ftp/python/3.12.3/python-3.12.3-amd64.exe', 'python_installer.exe')"

REM Install Python silently
start /wait python_installer.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0
del python_installer.exe
