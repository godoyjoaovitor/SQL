SELECT
    sum(qtdePontos),

    sum(CASE
        WHEN qtdePontos > 0 THEN qtdePontos
        END) AS QtdePontosPositivos,
    sum(CASE
        WHEN qtdePontos < 0 THEN QtdePontos
        END) AS qtdePontosNegativos,
    count(CASE
        WHEN qtdePontos > 0 THEN qtdePontos
        END) AS QtdeTransacoesPositivas,
    count(CASE
        WHEN qtdePontos < 0 THEN QtdePontos
        END) AS QtdeTransacoesNegativas
FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

ORDER BY qtdePontos