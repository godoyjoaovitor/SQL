-- CTE: COMMON TABLE EXPRESSION

WITH tb_cliente_primeiro_dia AS (
    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
),

tb_cliente_ultimo_dia AS (
    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-29'
),

tb_join AS (
    SELECT t1.idCliente AS PrimeiroCliente,
            t2.idCliente AS UltimoCliente
    
    FROM tb_cliente_primeiro_dia AS t1

    LEFT JOIN tb_cliente_ultimo_dia AS t2
    ON PrimeiroCliente = UltimoCliente
)

SELECT count(PrimeiroCliente),
        count(UltimoCliente),
        1. * count(UltimoCliente) / count(PrimeiroCliente) AS Proporcao
FROM tb_join