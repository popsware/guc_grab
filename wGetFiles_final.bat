::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWH/eyFEzOhJEWBe+O365ObIO6erH+O2CtgMYTOdf
::YAwzoRdxOk+EWAjk
::fBw5plQjdCmDJEqH5ksgPAhoSxGBA2yoB7cg7/340O2Vo09TXeEwGA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJjZks0
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQI3PRhrSxaDPgs=
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCmDJEqH5ksgPAhoSxGBA2yoB7cg+P354+OUqnEaQeEAf53a2IuYc64W8kCE
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
color 0a
echo ------------------------------
echo Author: Mohab Ayman
echo Email: mohabayman@hotmail.com
echo GUC_GRAB
echo Version 3
echo ------------------------------

set year=%date:~10,4%
set month=%date:~4,2%
set day=%date:~7,2%

if NOT %year%==2019 goto notsupported
goto supported

:notsupported
echo scripted support expired
echo please contact the developer at mohabayman@hotmail.com
pause
exit

:supported

IF EXIST param.txt goto makeparamdone
set /p user=Enter your GUC username: 
powershell -Command $pword = read-host "Enter your GUC password" -AsSecureString ; $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword) ; [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR) > .tmp.txt & set /p pass=<.tmp.txt & del .tmp.txt
echo user=%user%>param.txt
echo pass=%pass%>>param.txt
echo ---------------------------
:makeparamdone

IF EXIST urls.txt goto makeurlsdone
:makeurls
set /p url=Enter course url[leave empty to stop]:
if "%url%" equ "" goto makeurlsdone
echo Added "%url%" Successfully.
echo ---------------------------
::escape the & character
echo %url:&=^&%>>urls.txt
::clear the url string for the second iteration
set url=
goto makeurls
:makeurlsdone
::check in case it was skipped from the first iteration
IF NOT EXIST urls.txt goto makeurls

echo ---------------------------
echo Setup Ready....
pause
for /f "delims== tokens=1,2" %%G in (param.txt) do set %%G=%%H
echo accessing with username: %user%
echo accessing with password: %pass%
wget.exe --reject="index.html" --no-host-directories --cut-dirs=4 --no-parent --no-clobber --recursive --http-user=%user% --http-password=%pass% --input-file=urls.txt
exit
