@echo off
title Sorteio de Numero
mode 60,30
color f1
set /a cont=0

:sorteio
cls
set /a numero=(%random% %%100) + 1
set /a cont=%cont% +1
echo.
echo =============================
echo Numero Sorteado: %numero%
echo Qtde de Sorteios:  %cont%
echo =============================
echo.
set /p resp=Sortear novo numero? [S/N]:
if /i %resp% equ s (goto:sorteio) else (exit)