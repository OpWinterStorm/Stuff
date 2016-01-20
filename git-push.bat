@echo off
cd %~dp0

rem Copy in files
rem Use call to fully expand filename.
for /f "tokens=*" %%a in (paths.txt) do (call :loop "%%a")
goto :endloop
exit /b

:loop
rem Copy files if they've been updated, go through output and track if needed
for /f "tokens=* delims=\" %%f in ('xcopy "%~1" "%~n1" /S /Y /D /I /Exclude:exclude.txt') do (
	rem xcopy outputs the number of files copied, which isn't a valid directory
	if exist "%%~f" (
		if %%~zf geq 50000000 (
			git lfs track "%%~nf"
		)
	)
)

exit /b

:endloop
rem Push to GitHub
cls
git add -A
echo Use -m to add messages
set /p message= Enter a commit message: 
git commit %message%
git push origin master

exit /b