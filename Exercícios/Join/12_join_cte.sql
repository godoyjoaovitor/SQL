-- 12. Dentre os clientes de janeiro/2025, quantos assistiram o curso de SQL?

WITH tbclientes_janeiro AS (
    SELECT DISTINCT idCliente
    FROM clientes
    WHERE DtCriacao >= '2025-01-01'
    AND DtCriacao < '2025-02-01'
),

tbclientes_curso AS (
    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE DtCriacao >= '2025-08-25'
    AND DtCriacao < '2025-08-30'
)

SELECT count(t1.idCliente) AS clienteJaneiro,
        count(t2.idCliente) AS clienteCurso

FROM tbclientes_janeiro AS t1

LEFT JOIN tbclientes_curso AS t2
ON t1.idCliente = t2.idCliente