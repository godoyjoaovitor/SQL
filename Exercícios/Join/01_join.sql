--Quais clientes mais perderam pontos por Lover?

SELECT t1.idCliente,
    sum(t1.qtdePontos) AS totalpontos

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE DescCategoriaProduto = 'lovers'
GROUP BY t1.idCliente
ORDER BY totalpontos ASC
LIMIT 5