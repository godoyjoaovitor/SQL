SELECT 
    IdCliente,
    QtdePontos,
    CASE
        WHEN QtdePontos < 10 THEN 'Baixo'
        WHEN QtdePontos < 500 THEN 'Médio'
        WHEN QtdePontos >= 500 THEN 'Alto'
        ELSE 'Indefinido'
    END AS Sinalizador
FROM clientes

ORDER BY QtdePontos DESC