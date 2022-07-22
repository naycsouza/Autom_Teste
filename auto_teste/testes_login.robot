*** Settings ***

Resource          resource.robot
Documentation     Arquivo com os Test Cases em BDD
Library           Browser       timeout=50

***Test Cases***

Cenário 01 - Email inválido
    Dado que entro na página de login
    Quando escrevo email inválido
    Então deve aparecer uma mensagem de advertência

Cenário 02 - Senha inválida
    Dado que acesso a página de login
    Quando clico em "Esqueci email"
    Então sou direcionado à página de recuperação

Cenário 03 - Criar conta
    Dado que vou para a página de login
    Quando clico em "Criar Conta"
    Então sou direcionado à página de criação da conta
