REM Simply script - Created By Mitor/JoseBS
dir /A:D /B /s>tree.txt
CHDIR>DIR.txt
SET /P root=<DIR.txt
del DIR.txt
FOR /F %%A IN (tree.txt) DO CALL:tratar "%%A"

DEL %root%\tree.txt
:tratar
	SET ruta=%~1
	cd %ruta%
	FORFILES /M *.htaccess
	IF %ERRORLEVEL% EQU 1 xcopy %root%\.htaccess %ruta%
