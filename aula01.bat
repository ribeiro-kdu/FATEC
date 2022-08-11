@echo off
title Programacao Sequencial Bat
mode 60,30
color 4f
:inicio
cls
echo.
echo        ( 0 . x )
echo ----...ooooo...----
echo     Menu Principal
echo ----------------------
echo [1] Executar o Word
echo [2] Executar o Excel
echo [3] Chamar Teclado Virtual
echo [4] Calculadora
echo [5] Navegar na Web
echo [6] Testar Conexao de Rede
echo [F] Finalizar o Programa
echo ----------------------
echo.
set /p op=Digite a opcao desejada:
if %op% == 1 (goto:word)
if %op% == 2 (goto:planilha)
if %op% == 3 (goto:teclado)
if %op% == 4 (goto:calcular)
if %op% == 5 (goto:web)
if %op% == 6 (goto:teste)
if /i %op% == f (exit) else (
    echo.
    echo -------------------
    echo Opcao Invalida!
    echo -------------------
    echo.
    pause
    goto:inicio)

:word
start winword.exe
goto:inicio

:planilha
start excel.exe
goto:inicio

:teclado
start osk.exe
goto:inicio

:calcular
start calc.exe
goto:inicio

:web
echo.
set /p site=Digite o endereco da pagina:
start chrome.exe/%site%
goto:inicio

:teste
echo.
set /p conexao=Digite o IP ou o endereco da pagina:
ping %conexao% -t
goto:inicio