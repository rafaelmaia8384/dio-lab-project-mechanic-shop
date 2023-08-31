-- Criação do schema (banco de dados)
CREATE DATABASE IF NOT EXISTS mechanic_shop;
USE mechanic_shop;

-- Criação da tabela de Clientes
CREATE TABLE IF NOT EXISTS clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(15)
);

-- Criação da tabela de Veículos
CREATE TABLE IF NOT EXISTS veiculos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(10),
    modelo VARCHAR(50),
    ano INT,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

-- Criação da tabela de Fornecedores
CREATE TABLE IF NOT EXISTS fornecedores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    contato VARCHAR(100),
    telefone VARCHAR(15)
);

-- Criação da tabela de Produtos
CREATE TABLE IF NOT EXISTS produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    descricao TEXT,
    preco FLOAT,
    id_fornecedor INT,
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedores(id)
);

-- Criação da tabela de Serviços
CREATE TABLE IF NOT EXISTS servicos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    descricao TEXT,
    preco FLOAT
);

-- Criação da tabela de Ordem de Serviço
CREATE TABLE IF NOT EXISTS ordem_servico (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data DATE,
    id_cliente INT,
    id_veiculo INT,
    id_servico INT,
    id_produto INT,
    quantidade_produto INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_veiculo) REFERENCES veiculos(id),
    FOREIGN KEY (id_servico) REFERENCES servicos(id),
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);
