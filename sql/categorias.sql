-- Tabela CATEGORIAS: 
USE BIBLIOTECA;
-- Inserir novas informações
INSERT INTO categoria (nome_categoria) VALUES ('Romance'),
												('Clássico'),
												('Ficção Científica'),
												('Ficção Psicológica'),
												('Drama'),
												('Realismo Mágico'),
												('Epopeia'),
												('Modernista'),
												('Existencialismo'),
												('Contos'),
                                                ('Literatura Árabe'),
                                                ('Filosófico');


-- Interações com a tabela Categorias 
-- Testes para interações com Java -- NÃO RODAR
-- Alterar informações
UPDATE categoria SET nome_categoria = 'Suspense'
 WHERE cod_categoria = 1;

-- Visualizar
SELECT * FROM categoria;

-- Para contar as linhas da tabela categoria
SELECT count(*) FROM categoria;

-- Jenni precisa criar interação com delete. 