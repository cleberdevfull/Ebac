#language:pt

Funcionalidade: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Contexto: Login
        Dado que eu acesse a página de autenticação

    Cenário: Autenticação válida
        Quando eu inserir o usuário "success_login@teste.com.br"
        E a senha "Success01"
        Então deve ser direcionado para a tela de checkout

    Esquema do Cenário: Validar autenticação inválida
        Quando eu inserir <usuario> e <senha>
        Então deve exibir <mensagem>

        Exemplos:
            | usuario                      | senha       | mensagem                     |
            | "login_fail@teste.com.br"    | "FAIL_00"   | “Usuário ou senha inválidos” |
            | "success_login@teste.com.br" | "FAIL_00"   | “Usuário ou senha inválidos” |
            | "login_fail@teste.com.br"    | "Success01" | “Usuário ou senha inválidos” |
