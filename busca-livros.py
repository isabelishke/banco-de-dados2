# Lista pré-definida com títulos de livros
livros = [
    "O Senhor dos Anéis",
    "Dom Casmurro",
    "Cem Anos de Solidão",
    "1984",
    "O Pequeno Príncipe",
    "A Menina que Roubava Livros",
    "Harry Potter e a Pedra Filosofal",
    "A Revolução dos Bichos",
    "Orgulho e Preconceito",
    "A Culpa é das Estrelas"
]

# Solicita ao usuário uma palavra-chave
palavra_chave = input("Digite uma palavra-chave para buscar nos títulos: ").lower()

# Filtra os títulos que contêm a palavra-chave (ignorando maiúsculas e minúsculas)
resultados = [livro for livro in livros if palavra_chave in livro.lower()]

# Exibe os resultados encontrados ou uma mensagem caso não haja correspondências
if resultados:
    print("\nTítulos encontrados:")
    for titulo in resultados:
        print(f"- {titulo}")
else:
    print("\nNenhum título corresponde à palavra-chave fornecida.")
