SELECT qtdePontos,
    CASE
        WHEN qtdePontos < 10 THEN 'Baixo'
        WHEN qtdePontos < 500 THEN 'Médio'
        WHEN qtdePontos >= 500 THEN 'Alto'
    END AS 'Pontuação'
FROM transacoes

ORDER BY qtdePontos