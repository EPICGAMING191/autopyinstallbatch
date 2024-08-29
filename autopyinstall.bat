@echo off
echo Installing.....
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://www.python.org/ftp/python/3.12.3/python-3.12.3-amd64.exe', 'python_installer.exe')"
Rem add /quiet below for quiet installation
start /wait python_installer.exe InstallAllUsers=1 PrependPath=1 Include_test=0
del python_installer.exe
echo Complete!
timeout /t 2
