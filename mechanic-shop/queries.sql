-- 1. Recuperações simples com SELECT Statement
SELECT * FROM clientes;

-- 2. Filtros com WHERE Statement
SELECT * FROM veiculos WHERE ano >= 2018;

-- 3. Expressões para gerar atributos derivados
SELECT ordem_servico.id, servicos.preco + (produtos.preco * ordem_servico.quantidade_produto) AS custo_total
    FROM ordem_servico
    JOIN servicos ON ordem_servico.id_servico = servicos.id
    JOIN produtos ON ordem_servico.id_produto = produtos.id;

-- 4. Ordenações dos dados com ORDER BY
SELECT * FROM veiculos ORDER BY modelo ASC;

-- 5. Condições de filtros aos grupos – HAVING Statement
SELECT id_servico, COUNT(*) as quantidade
    FROM ordem_servico
    GROUP BY id_servico
    HAVING quantidade > 0;

-- 6. Junções entre tabelas
SELECT clientes.nome AS nome_cliente, veiculos.modelo AS modelo_veiculo, servicos.nome AS nome_servico, produtos.nome AS nome_produto
    FROM ordem_servico
    JOIN clientes ON ordem_servico.id_cliente = clientes.id
    JOIN veiculos ON ordem_servico.id_veiculo = veiculos.id
    JOIN servicos ON ordem_servico.id_servico = servicos.id
    JOIN produtos ON ordem_servico.id_produto = produtos.id
    WHERE ordem_servico.id_cliente = 1;

