@echo off
cls
:menu
cls
color 02
date /t
echo Computador: %computername%        Usuario: %username%   
echo.    
echo.              
echo                     MENU TAREFAS
echo  ===================================================
echo * 0. SAIR
echo * 1. Esvaziar a Lixeira.                        			   
echo * 2. Limpar arquivos temporarios.          
echo * 3. Limpeza de Spool [ Fila de impressao].
echo * 4. Meu IP.
echo * 5. Atualiza o grupo de usuario [Impressoras].
echo * 6. Ativar rede do computador.
echo * 7. Desativar rede do computador.
echo * 8. Propriedades de rede.
echo * 9. Apagar arquivos pasta Downloads.
echo * 10. Calculadora.
echo.
echo.
echo * Criado por Arthur Steinbach.
echo  ===================================================

set /p opcao=  Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 0 goto opcao0
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7
if %opcao% equ 8 goto opcao8
if %opcao% equ 9 goto opcao9
if %opcao% equ 10 goto opcao10
if %opcao% equ 11 goto opcao11
if %opcao% equ 12 goto opcao12





:opcao0
cls
echo ==================================
echo *              SAIR	       *
echo ==================================
exit
goto menu

:opcao1
cls
rd /S /Q c:\$Recycle.bin
echo ==================================
echo *      Lixeira Esvaziada          *
echo ==================================
pause
goto menu

:opcao2
cls
echo ==================================
echo * Excluir Arquivos Temporarios    *
echo  Exclusivo para uso do Suporte
echo ==================================
del /q/f/s %temp%\*
pause
goto menu

:opcao3
cls
echo ========================================
echo * Limpeza de Spool [ Fila de impressao] *
echo 	 Exclusivo para uso do Suporte
echo ========================================
    echo off
    rem 
echo PARANDO OS SERVICOS    
net stop spooler
    rem entra no diretorio C
    c:
echo ABRINDO PASTA TEMPORÁRIA DE IMPRESSÃO
    rem abre a pasta de impressão
    cd %systemroot%\system32\spool\printers
DIR
ECHO ARQUIVOS SENDO DELETADOS
    rem deleta os arquivos
    del /f/s *.shd
    del /f/s *.spl
ECHO SERVIÇO SENDO REINICIANDO
    rem reinicia o serviço de impressão
    net start spooler
    Echo Processo finalizado
    pause
goto menu

:opcao4
cls
echo
echo ==================================
echo * Verifique o Endereco de IPV4   *
echo ==================================
pause
ipconfig
pause
goto menu


:opcao5
echo ==============================================
echo * Atualizar grupos de usuarios *
echo ==============================================
pause
gpupdate /force
pause
goto menu

:opcao6
echo ==============================================
echo * Ativar Rede *
echo ==============================================
pause
netsh interface set interface "Ethernet" ENABLE
pause
goto menu


:opcao7
echo ==============================================
echo * Desativar Rede *
echo ==============================================
pause
netsh interface set interface "Ethernet" DISABLE
pause
goto menu

:opcao8
echo                  Propriedades de rede
echo  ===================================================
echo * 0. Voltar
echo * A. Ipconfig
echo * B. Ipconfig /release                        			   
echo * C. Ipconfig /renew    
echo * D. Ipconfig /flushdns
echo  ===================================================

set /p opcao=  Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 0 goto opcao0
if %opcao% equ a goto opcaoA
if %opcao% equ b goto opcaoB
if %opcao% equ c goto opcaoC
if %opcao% equ d goto opcaoD

:opcao0
echo ==============================================
echo *            VOLTANDO PRO MENU               *
echo ==============================================
pause
goto menu
pause

:opcaoA
echo ==============================================
echo * IPCONFIG *
echo ==============================================
pause
ipconfig
pause
goto menu

:opcaoB
echo ==============================================
echo * IPCONFIG /RELEASE *
echo ==============================================
pause
ipconfig /release
pause
goto menu

:opcaoC
echo ==============================================
echo * IPCONFIG /RENEW *
echo ==============================================
pause
ipconfig /renew
pause
goto menu

:opcaoD
echo ==============================================
echo * IPCONFIG /FLUSHDNS *
echo ==============================================
pause
ipconfig /flushdns
pause
goto menu

:opcao9
echo             Apagar arquivos pasta downloads
echo  ===================================================
echo * 0. Voltar
echo * A. Apagar arquivos da pasta Downloads +30 dias.
echo * B. Apagar arquivos da pasta Downloads +15 dias.                        			   
echo * C. Apagar arquivos da pasta Downloads +10 dias.
echo * D. Apagar arquivos da pasta Downloads +5 dias.
echo * E. Apagar arquivos da pasta Downloads +1 dia.
echo  ===================================================

:opcao14
	start calc.exe
	cls
goto menu


set /p opcao=  Escolha uma opcao: 
echo ------------------------------

if %opcao% equ 0 goto opcao0
if %opcao% equ a goto opcaoA
if %opcao% equ b goto opcaoB
if %opcao% equ c goto opcaoC
if %opcao% equ d goto opcaoD
if %opcao% equ e goto opcaoE

:opcao0
echo ==============================================
echo *            VOLTANDO PRO MENU               *
echo ==============================================
pause
goto menu
pause

:opcaoA
echo ==============================================
echo * APAGANDO ARQUIVOS DE +30 DIAS *
echo ==============================================
pause
forfiles /p "%UserProfile%\Downloads" /s /m *.* /c "cmd /c Del @path" /d -30
pause
goto menu

:opcaoB
echo ==============================================
echo * APAGANDO ARQUIVOS DE +15 DIAS *
echo ==============================================
pause
forfiles /p "%UserProfile%\Downloads" /s /m *.* /c "cmd /c Del @path" /d -15
pause
goto menu

:opcaoC
echo ==============================================
echo * APAGANDO ARQUIVOS DE +10 DIAS *
echo ==============================================
pause
forfiles /p "%UserProfile%\Downloads" /s /m *.* /c "cmd /c Del @path" /d -10
pause
goto menu

:opcaoD
echo ==============================================
echo * APAGANDO ARQUIVOS DE +5 DIA *
echo ==============================================
pause
forfiles /p "%UserProfile%\Downloads" /s /m *.* /c "cmd /c Del @path" /d -5
pause
goto menu

:opcaoE
echo ==============================================
echo * APAGANDO ARQUIVOS DE +1 DIA *
echo ==============================================
pause
forfiles /p "%UserProfile%\Downloads" /s /m *.* /c "cmd /c Del @path" /d -1
pause
goto menu

:opcao10
start calc.exe
	cls
goto menu
