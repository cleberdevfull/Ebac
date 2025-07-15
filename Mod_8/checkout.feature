Feature: concluir meu cadastro
    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar minha compra

    Background: Checkout
        Given que estou na página de checkout

    Scenario: Dados válidos
        When eu inserir dados válidos nos campos obrigatórios (campos marcados com asterisco)
        Then deve ser permitido a finalização da compra

    Scenario Outline: Dados inválidos
        When eu inserir <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone> e <email> inválidos
        Then deve exibir <menssagem>

        Examples:
            | nome      | sobrenome | pais   | endereco         | cidade      | cep         | telefone         | email            | menssagem                                                                  |
            |           | "Tst00"   | Brasil | "Rua Abc, 10"    | "São Paulo" | "01234-000" | "(11)99999-9999" | "joao@email.com" | "O preenchimento de todos os campos sinalizados com ( * ), é obrigatório!" |
            | "Teste01" | "Tst01"   | Brasil | "Travessa C, 30" | "Roraima"   | "06789-123" | "(95)97777-7777" | "email-invalido" | "O e-mail informado é inválido!"                                           |
