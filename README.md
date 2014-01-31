cmd-alias
=========

##Aliases, extensions and solarized colour scheme for cmd.exe

InstallLight or InstallDark to install and select your preferred solarized colour scheme

###Extensions

 * up - move up [cd ..] any number of direcories on the command line

Sample Usage
````
C:\Windows\System32\drivers\etc>up
C:\Windows\System32\drivers>back
C:\Windows\System32\drivers\etc>up 3
C:\Windows>down
C:\Windows\System32\drivers\etc>
````

 * host-add - Add an entry to the hosts file

###Aliases
````
D:\Source\cmd-alias>alias
alias=doskey /macros | sort
back=popd
cp=copy
down=popd
h=doskey /history
host-add=%windir%\command\AddHostEntry.bat $*
host-edit="C:\Program Files (x86)\Notepad++\notepad++.exe" c:\windows\system32\drivers\etc\hosts
host-show=type c:\windows\system32\drivers\etc\hosts
host=echo Host commands: host-add, host-show, host-edit
ll=dir /w $*
ls=dir $*
mv=move
np="C:\Program Files (x86)\Notepad++\notepad++.exe" $*
pd=pushd
rm=del /p $*
rmf=del /q $*
rmtmp=del /q *~ *# 2>nul
ss64=start http://ss64.com/nt/
up=%windir%\command\up.bat $*
which=where $*
wp=c:\Windows\System32\inetsrv\appcmd.exe list wp
x=explorer .
````

Based on aliases.bat by Ben Burnett <me@cs.wisc.edu>