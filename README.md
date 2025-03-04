# Protótipo Biblioteca Digital

## Relatório de Aplicação - Protótipo de um sistema de biblioteca.

### Introdução

O Sistema da Biblioteca Digital é uma aplicação desenvolvida em Java para auxiliar na gestão de disponibilidade de livros e 
reserva de livros. O sistema permite o cadastro, consulta, atualização e exclusão de dados sobre usuários e livros.
Decidimos fornecer somente uma interface via terminal para interação dos usuários.

### Desenvolvimento
O desenvolvimento do Sistema da Biblioteca Digital foi realizado seguindo os princípios da programação orientada a objetos,
utilizando a linguagem de programação Java. O projeto foi estruturado em diferentes pacotes para separar as responsabilidades 
e facilitar a manutenção e extensibilidade do código. (database, model, view)

Foram utilizadas as seguintes tecnologias e ferramentas no desenvolvimento do sistema:

* MySQL: Utilizado como banco de dados para armazenar os dados da Biblioteca.
* JDBC: Utilizado para realizar a conexão com o banco de dados e executar consultas e atualizações.

#### Banco de Dados SQL 'BIBLIOTECA' com 6 tabelas: (Relacional)

- Livros (contendo informações sobre 'cod_livro'; 'nome_livro'; 'autor_livro')
- Categoria (contendo informação sobre 'cod_categoria', 'nome_categoria')
- livrosCategoria (realizando um join entre as tabelas livros e categorias. 
Informações sobre 'cod_livro' e 'cod_categoria')
- Leitor (contendo informações sobre 'nome_leitor'; 'ra_leitor', 'email_leitor')
- leiorEmprestimo (contendo informações histórico de aludado/devolvido
sobre 'codigo_livro'; 'status_livro'; 'ra_leitor')
- Bibliotecaria (contendo informações sobre 'nome_bibliotecaria'; 'cpf_bibliotecaria'; 'email_bibliotecaria')


#### Definições das classes: 

- Usuário (classe pai, contendo informações de nome e email das partes) - Herança
- Leitor (classe filha, contendo informações da classe pai e um atributo excluivo "RA")
- Bibliotecária (classe filha, contendo informações da classe pai e um atributo excluivo "CPF")
- Categoria (Como existe uma relação n:n com livros decidimos criar uma classe para categorias)
- Empréstimo (Contendo a lógica de `reservar()` e `devolver()` para os livros)
- Livro (contendo toda a parte de gestão dos livros)
- Database (conexão com o banco de dados)

#### Decisões de funcionalidades: 

O Sistema de Gerenciamento de Funcionários possui as seguintes funcionalidades principais:
1. Usuários: 
- Permite cadastrar novos leitores e bibliotecários: `criarLeitor()`e `criarBibliotecaria()`.
- Permite alterar leitores e bibliotecários: `alterarLeitor()` e `alterarBibliotecaria()`.
- Permite deletar leitores e bibliotecários: `deletarLeitor()` e `deletarBibliotecaria()`.

2. Categorias:
- Permite cadastrar uma nova categoria: `criarCategoria()`.
- Permite alterar uma categoria: `alterarCategoria()`.
- Permite visualizar todas as categorias em uma tabela no terminal: `lerCategorias()` e `mostrarCategorias()`.

3. Livros:
- Permite cadastrar um novo livro: `criarLivro()`.
- Permite alterar cadastro de um livro: `alterarLivro()`.
- Permite deletar livro caso esteja danificado: `deletarLivro()`.
- Permite visualizar todas os livros em uma tabela no terminal: `lerLivros()` e `mostrarLivros()`.
- Permite filtrar busca de usuário por título de livro: `filtroLivrosTitulo()` e `mostrarFiltroPorTítulo()`.
- Permite filtrar busca de usuário por categoria: `filtroLivrosCategoria()` e `mostrarFiltroPorCategoria()`.

3. Emprestimo:
- Permite que um leitor reserve um livro: `reservarLivro()` e `verificarDisponibilidadeLivro()`.
- Permite que um leitor devolva um livro: `devolverLivro()` e `verificarLivroEmprestado()`.
- Permite visualizar todos os empréstimos em uma tabela no terminal: `lerEmprestimo()` e `mostrarEmprestimos()`.

4. Database: 
- Permite uma conexão com o banco de dados MySQL: `Database()`.

### Criação da interface

Para visualização do sistema da biblioteca escolhemos fazer a interface por meio do terminal.
Foi separado toda a lógica de funcionamento das opções possíveis de interação com o usuário por métodos.

Construídos em classes:

- MetodosInterfaceB: interações da Bibliotecária no sistema
- MetodosInterfaceL: interações do Leito no sistema

### Uso

- Exemplo de chamada: (Criando um novo cadastro para Leitor)
```
// Informações do BD
String username = "root";
String password = "rootroot";
String databaseName = "BIBLIOTECA";
String serverName = "localhost";

// Criando uma nova conexão
Database database = new Database(serverName, databaseName, password, username);
// Criando um cadastro de leitor
LeitorDb leitorDb = new LeitorDb(database);
leitorDb.criarLeitor("Katerine Witkoski", "12344559", "katerinewitkoski@gmail.com")
```

### Estrutura do Projeto

O projeto foi estruturado em diferentes pacotes para separar as responsabilidades
e facilitar a manutenção e extensibilidade do código.
- database
- model
- view

Existe uma pasta `doc` (contendo os objetivos do trabalho, todoas as tabelas geradas para teste em csv
e esse mesmo relatório em .txt) e uma pasta `sql` (contendo todos os scripts relacionados ao banco de dados).

Para utilizar do sistema compile o arquivo `Main`.