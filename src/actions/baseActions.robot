*** Settings ***
Documentation       Base para todas as ações com o app

Library         SikuliLibrary
Library         Process

Resource        ./registryActions.robot

*** Keywords ***
Carrega os Elementos do App
    Add Image Path      ${EXECDIR}/resources/maps/openApp
    Add Image Path      ${EXECDIR}/resources/maps/funcionario
    Add Image Path      ${EXECDIR}/resources/maps/menu
    Add Image Path      ${EXECDIR}/resources/maps/popup
    Add Image Path      ${EXECDIR}/resources/maps/produto

que a sessão esta iniciada
    Carrega os Elementos do App
    Open Application    ${EXECDIR}/app/BugBakery.exe
    #${handle} =   Start Process    app/app/BugBakery.exe
    #Wait For Process  handle=${handle}  timeout=10  on_timeout=10
    #Click           icone-app.png

Encerrar Sessão
    Stop Remote Server

Finaliza Teste
    #Capture Screen
    Close Application       BugBakery