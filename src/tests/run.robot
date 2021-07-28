*** Settings ***
Documentation   Testando a abertura de arquivos '.exe'

Library     Process



*** Test Cases ***
Abrir um arquivo exe    
    Abro o executável

*** Keywords ***
Abro o executável
    Run Process  app/app/BugBakery.exe