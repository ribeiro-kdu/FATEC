@echo off
title Jokenpo
color f1
mode 60,30

:jokenpo
cls
echo.
echo ==================================
echo             Jokenpo
echo ==================================
echo [1] Papel
echo [2] Pedra
echo [3] Barata
echo [4] Bomba Atomica
echo [5] Tesoura
echo [F] Finalizar o Programa
echo ==================================
set /a comp=(%random% %%5) +1

set /p op=Digite a opcao desejada:

if %op% == 1 (goto:gerar)

	goto:inicio)