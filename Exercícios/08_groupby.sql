SELECT IdProduto,
        sum(vlProduto * QtdeProduto) AS TotaldePontos,
        sum(QtdeProduto) AS QtdeVendas
FROM transacao_produto
GROUP BY IdProduto
ORDER BY sum(vlProduto) DESC
