@echo off
set count=1


for %%f IN (Admin Literature sourceData Analyse GIS Model Tool Note Plots) do (
call :Create %%f
)
mkdir Scripts
mkdir zz_Archive
goto End


:Create
set ccc=00%count%
mkdir "%ccc:~-2%_%1"
set /a count+=1
goto :eof

:End
