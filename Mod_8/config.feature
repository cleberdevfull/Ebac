#language:pt

Funcionalidade: Configurar produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Contexto: Configurar produto
        Dado que estou na página do produto "Augusta Pullover Jacket"

    Esquema do Cenário: Seleções obrigatórias para adicionar ao carrinho
        Quando eu seleciono a <cor>, o <tamanho> e <quantidade>
        Então o sistema deve apresentar o <resultado> com a <mensagem>

        Exemplos:
            | cor               | tamanho         | quantidade | resultado                     | mensagem                                                                 |
            | "Orange"          | M               | 2          | permitir a adição ao carrinho | "Adicionado ao carrinho"                                                 |
            | "Red"             | S               | 10         | permitir a adição ao carrinho | "Adicionado ao carrinho"                                                 |
            | "Não selecionada" | M               | 1          | exibir mensagem de erro       | "Produto não adicionado ao carrinho, selecione uma cor"                  |
            | "Blue"            | Não selecionado | 1          | exibir mensagem de erro       | "Produto não adicionado ao carrinho, selecione um tamanho"               |
            | "Orange"          | L               | 0          | exibir mensagem de erro       | "Produto não adicionado ao carrinho, selecione ao menos 1 produto"       |
            | "Red"             | XL              | 11         | exibir mensagem de erro       | "Produto não adicionado ao carrinho, máximo de produtos permitido é: 10" |

    Cenário: Botão "Limpar"
        Dado que eu selecionei a cor, o tamanho e quantidade
        Quando clico no botão "Limpar"
        Então os campos de cor, tamanho e quantidade devem voltar ao estado original
