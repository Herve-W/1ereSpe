@echo off
echo Starting Touying compilation for Chemistry modules C01 to C09...
echo.

REM Loop from 1 to 9
for /L %%n in (1,1,9) do (
    setlocal enabledelayedexpansion
    set "num=0%%n"

    echo Compiling module C!num!...
    touying compile ..\cours\chimie\C!num!\C!num!.typ --output .\C!num!.html
    echo.
    endlocal
)

REM Loop from 1 to 9
for /L %%n in (1,1,9) do (
    setlocal enabledelayedexpansion
    set "num=0%%n"

    echo Compiling module P!num!...
    touying compile ..\cours\physique\P!num!\P!num!.typ --output .\P!num!.html
    echo.
    endlocal
)

echo Compilation complete!
pause