Feature: Configurar produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Background:
        Given que estou na página do produto "Augusta Pullover Jacket"

    Scenario Outline: Seleções obrigatórias para adicionar ao carrinho
        When eu seleciono a <color>
        And eu seleciono o <size>
        And eu seleciono a <mount>
        Then o sistema deve apresentar o <result> com a <message>

        Examples:
            | color             | size            | mount | result                        | menssage                                                                 |
            | "Orange"          | M               | 2     | permitir a adição ao carrinho | "Adicionado ao carrinho"                                                 |
            | "Red"             | S               | 10    | permitir a adição ao carrinho | "Adicionado ao carrinho"                                                 |
            | "Não selecionada" | M               | 1     | exibir mensagem de erro       | "Produto não adicionado ao carrinho, selecione uma cor"                  |
            | "Blue"            | Não selecionado | 1     | exibir mensagem de erro       | "Produto não adicionado ao carrinho, selecione um tamanho"               |
            | "Orange"          | L               | 0     | exibir mensagem de erro       | "Produto não adicionado ao carrinho, selecione ao menos 1 produto"       |
            | "Red"             | XL              | 11    | exibir mensagem de erro       | "Produto não adicionado ao carrinho, máximo de produtos permitido é: 10" |

    Scenario: Botão "Limpar"
        Given que eu selecionei a color
        And o size
        And a mount
        When clico no botão "Limpar"
        Then os campos de color, size e mount devem voltar ao estado original

