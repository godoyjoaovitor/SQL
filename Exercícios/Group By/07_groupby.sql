SELECT IdProduto,
count(*) AS QntdePedidos
FROM transacao_produto
GROUP BY IdProduto
ORDER BY QntdePedidos DESC
LIMIT 1