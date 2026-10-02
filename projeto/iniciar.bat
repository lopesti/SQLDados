@echo off
title SQL Server - Estudo
echo ============================================
echo  Iniciando SQL Server no Docker
echo ============================================
echo.

cd /d "%~dp0"

docker compose up -d

echo.
echo Aguardando o SQL Server ficar pronto...
timeout /t 15 /nobreak >nul

docker ps --filter "name=sql-estudo"

echo.
echo ============================================
echo  SQL Server rodando!
echo  Conecte no SSMS com:
echo    Servidor: localhost,1433
echo    Login:    sa
echo    Senha:    (a que voce definiu)
echo ============================================
echo.
pause