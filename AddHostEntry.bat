@ECHO OFF
IF [%1]==[] GOTO USAGE
IF [%2]==[] GOTO USAGE

SETLOCAL 
	SET IPAddress=%1
	SET Hostname=%2	
	SET Comment=%~3 
	FIND /C /I "%Hostname%" %WINDIR%\system32\drivers\etc\hosts > nul
	IF %ERRORLEVEL% NEQ 0 ECHO %IPAddress% %Hostname% # %Comment% >> %WINDIR%\System32\drivers\etc\hosts
ENDLOCAL
GOTO:EOF

:USAGE
ECHO   Usage: AddHostEntry IPAddress HostName "Optional comment with spaces"
ECHO          example: AddHostEntry 192.168.1.4 devserver.com "internal development server"
ECHO          If the HostName already exists the host file will remain unchanged

