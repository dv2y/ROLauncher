@echo off
  for /f "tokens=1,2 delims==" %%a in (Launcher.ini) do (
  if %%a==RO set RO=%%b
  if %%a==RCX set RCX=%%b
)
	 
@echo Checking if RCX is already running...
	ping -n 2 /wait /b  0.0.0.0 > nul
	start "" /wait /b "%RCX%"
@echo.
@echo Launching RO...
	ping -n 2 /wait /b  0.0.0.0 > nul
	start "" /wait /b "%RO%"
	ping -n 2 /wait /b  0.0.0.0 > nul
@echo.
@echo Have fun!
  ping -n 3 /wait /b  0.0.0.0 > nul
