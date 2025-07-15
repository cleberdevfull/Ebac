Feature: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Background: Login
        Given que eu acesse a página de autenticação

    Scenario: Autenticação válida
        When eu inserir o usuário "success_login@teste.com.br"
        And a senha "Success01"
        Then deve ser direcionado para a tela de checkout

    Scenario Outline: Validar autenticação inválida
        When eu inserir <usuario> e <senha>
        Then deve exibir <mensagem>

        Examples:
            | usuario                      | senha       | mensagem                     |
            | "login_fail@teste.com.br"    | "FAIL_00"   | “Usuário ou senha inválidos” |
            | "success_login@teste.com.br" | "FAIL_00"   | “Usuário ou senha inválidos” |
            | "login_fail@teste.com.br"    | "Success01" | “Usuário ou senha inválidos” |
