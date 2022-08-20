@echo off
title Gerenciamento de Arquivos
mode 60,30
color f1

:inicio
cls
echo.
echo ==================================
echo      Gerenciamento de Arquivos
echo ==================================
echo [1] Gerar Arquivos Diversos
echo [2] Organizar Arquivos em Pasta
echo [3] Ocultar Pastas e Arquivos
echo [4] Exibir Pastas e Arquivos
echo [5] Excluir Pastas e Arquivos
echo [F] Finalizar o Programa
echo ==================================
set /p op=Digite a opcao desejada:
if %op% == 1 (goto:gerar)
if %op% == 2 (goto:organizar)
if %op% == 3 (goto:ocultar)
if %op% == 4 (goto:exibir)
if %op% == 5 (goto:excluir)
if /i %op% == f (exit) else (
	echo.
	echo ==============================
	echo        Opcao invalida!
	echo ==============================
	echo.
	pause
	goto:inicio)
	
:gerar
set /p arquivo=Digite o nome do arquivo a ser gerado:
set /p qtde=Digite a quantidade de arquivos a serem gerados:
set /p ext=Digite a extensao do arquivo a ser gerado:
for /l %%n in (1,1,%qtde%) do (echo Fatec Maua > %arquivo%%%n.%ext%)
	echo ==============================
	echo  Arquivos gerados com sucesso!
	echo ==============================
	echo.
	pause
	goto:inicio
	
:organizar
echo.
set /p pasta=Digite a pasta a ser criada:
set /p ext=Digite a extensão dos arquivos a serem movidos:
md %pasta%
move *.%ext% C:\Users\lab5\Desktop\%pasta%\
echo.
	echo ==============================
	echo  Arquivos gerados com sucesso!
	echo ==============================
	echo.
	pause
	goto:inicio

:ocultar
echo.
set /p pasta=Digite a pasta a ser ocultada:
attrib %pasta% +h +r
echo.
	echo ==============================
	echo  Pasta ocultada com sucesso!
	echo ==============================
	echo.
	pause
	goto:inicio
	
:exibir
echo.
set /p pasta=Digite a pasta a ser exibida:
attrib %pasta% -h -r
echo.
	echo ==============================
	echo  Pasta exibida com sucesso!
	echo ==============================
	echo.
	pause
	goto:inicio
	
:excluir
echo.
set /p pasta=Digite a pasta a ser excluida:
set /p deleta=Deseja realmente excluir? [S/N]:
if /i %deleta% == s (
	c:
	cd\Users\lab5\Desktop
	del /f /s /q %pasta%
	rd %pasta%
	echo.
	echo ==============================
	echo  Pasta excluida com sucesso!
	echo ==============================
	echo.
	pause
	goto:inicio ) else (
	goto:inicio )