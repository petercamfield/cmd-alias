@ECHO OFF
IF NOT EXIST %windir%\Command MKDIR %windir%\Command
COPY /Y *.bat %windir%\Command
COPY /Y *.reg %windir%\Command
ECHO Adding Registry Entries for Aliases
REG IMPORT %windir%\Command\CMD.REG
ECHO Adding Registry Entries for Solarised Colour Scheme
REG IMPORT %windir%\Command\solarized-light.reg
ECHO Aliases have been installed
ECHO Type alias at the command line to list aliases
