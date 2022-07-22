***Settings***
Documentation       Arquivo Base do teste
Library             Browser

***Keywords***

#Cenário 1
Dado que entro na página de login
    New Browser       chromium    headless=false
    New Page          https://accounts.google.com/signin/v2/identifier?hl=pt-BR&passive=true&continue=https%3A%2F%2Fwww.google.com.br%2F%3Fgws_rd%3Dssl&ec=GAZAmgQ&flowName=GlifWebSignIn&flowEntry=ServiceLogin
Quando escrevo email inválido
    Wait For Elements State     id=identifierId         visible      15
    Fill Text       id=identifierId         teste$teste.com
    Click           text=Próxima

Então deve aparecer uma mensagem de advertência
    Wait For Elements State     css=span[class='jibhHc']        visible   15
    Take Screenshot


#Cenário 2
Dado que acesso a página de login
    New Browser       chromium    headless=false
    New Page          https://accounts.google.com/ServiceLogin/identifier?continue=https%3A%2F%2Fwww.google.com.br%2F%3Fgws_rd%3Dssl&sacu=1&passive=1209600&hl=pt-BR&acui=0&flowName=GlifWebSignIn&flowEntry=ServiceLogin&cid=1

Quando clico em "Esqueci email"
    Click           text=Esqueceu seu e-mail?

Então sou direcionado à página de recuperação
    New Page          https://accounts.google.com/signin/v2/usernamerecovery?hl=pt-BR&passive=true&continue=https%3A%2F%2Fwww.google.com.br%2F%3Fgws_rd%3Dssl&ec=GAZAmgQ&flowName=GlifWebSignIn&flowEntry=ServiceLogin
    Take Screenshot


#Cenário 3
Dado que vou para a página de login
    New Browser       chromium    headless=false
    New Page          https://accounts.google.com/ServiceLogin/identifier?continue=https%3A%2F%2Fwww.google.com.br%2F%3Fgws_rd%3Dssl&sacu=1&passive=1209600&hl=pt-BR&acui=0&flowName=GlifWebSignIn&flowEntry=ServiceLogin&cid=1

Quando clico em "Criar Conta"
    Click           text=Criar conta

Então sou direcionado à página de criação da conta
    New Page        https://accounts.google.com/signup/v2/webcreateaccount?continue=https%3A%2F%2Fwww.google.com.br%2F%3Fgws_rd%3Dssl&hl=pt-BR&dsh=S17403552%3A1658457156057540&biz=false&flowName=GlifWebSignIn&flowEntry=SignUp
    Take Screenshot