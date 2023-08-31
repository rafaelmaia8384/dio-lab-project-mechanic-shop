-- Uso do schema
USE mechanic_shop;

-- População da tabela de Clientes
INSERT INTO clientes (nome, email, telefone) VALUES
('Alice', 'alice@email.com', '111-222-3333'),
('Bob', 'bob@email.com', '222-333-4444'),
('Charlie', 'charlie@email.com', '333-444-5555');

-- População da tabela de Veículos
INSERT INTO veiculos (placa, modelo, ano, id_cliente) VALUES
('ABC-1234', 'Ford Fiesta', 2015, 1),
('DEF-5678', 'Honda Civic', 2019, 2),
('GHI-9012', 'Toyota Corolla', 2018, 3);

-- População da tabela de Fornecedores
INSERT INTO fornecedores (nome, contato, telefone) VALUES
('Fornecedor A', 'contatoA@email.com', '444-555-6666'),
('Fornecedor B', 'contatoB@email.com', '555-666-7777');

-- População da tabela de Produtos
INSERT INTO produtos (nome, descricao, preco, id_fornecedor) VALUES
('Óleo de Motor', 'Óleo para motor 5W-30', 30.00, 1),
('Filtro de Ar', 'Filtro de ar para motor', 15.00, 2),
('Pneu', 'Pneu 16 polegadas', 200.00, 1);

-- População da tabela de Serviços
INSERT INTO servicos (nome, descricao, preco) VALUES
('Troca de Óleo', 'Troca de óleo do motor', 50.00),
('Alinhamento', 'Alinhamento das rodas', 70.00),
('Revisão Completa', 'Revisão completa do veículo', 250.00);

-- População da tabela de Ordem de Serviço
INSERT INTO ordem_servico (data, id_cliente, id_veiculo, id_servico, id_produto, quantidade_produto) VALUES
('2023-08-01', 1, 1, 1, 1, 1),
('2023-08-05', 2, 2, 2, 2, 1),
('2023-08-10', 3, 3, 3, 3, 2);
