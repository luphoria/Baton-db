@Echo off
setlocal enabledelayedexpansion
::setx path "%path%C:\Users\%USERNAME%\Baton\Imports;"
Echo %PATH% | findstr "C:\Users\%Username%\Baton\Imports;" >nul
if %errorlevel% equ 0 (
	Echo "C:\Users\%Username%\Baton\Imports" is already listed in the PATH variable.
) 
if %errorlevel% equ 1 (
	setx path "%path%C:\Users\%USERNAME%\Baton\Imports;"
	Echo Directory added to PATH.	
)