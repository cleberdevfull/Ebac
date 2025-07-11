
Feature: concluir meu cadastro
    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar minha compra

    Background:
        Given que estou na página de checkout

    Scenario: Dados válidos
        When eu inserir Nome válido
        And eu iserir Sobrenome válido
        And eu inserir País válido
        And eu inserir Endereço válido
        And eu inserir Cidade válido
        And eu inserir Cep válido
        And eu inserir Telefone válido
        And eu inserir E-mail válido
        Then deve ser permitido a finalização da compra

    Scenario Outline: Dados inválidos
        When eu inserir <nome>
        And eu inserir <sobrenome>
        And eu inserir <pais>
        And eu inserir <endereco>
        And eu inserir <cidade>
        And eu inserir <cep>
        And eu inserir <telefone>
        And eu inserir <email>
        Then deve exibir <message>

        Examples:
            | nome      | sobrenome | pais   | endereco         | cidade      | cep         | telefone         | email            | message                                                                    |
            |           | "Tst00"   | Brasil | "Rua Abc, 10"    | "São Paulo" | "01234-000" | "(11)99999-9999" | "joao@email.com" | "O preenchimento de todos os campos sinalizados com ( * ), é obrigatório!" |
            | "Teste01" | "Tst01"   | Brasil | "Travessa C, 30" | "Roraima"   | "06789-123" | "(95)97777-7777" | "email-invalido" | "O e-mail informado é inválido!"                                           |
            |           |           |        |                  |             |             |                  |                  | "Preencha todos os campos obrigatórios!"                                   |