SELECT 
        strftime('%w', datetime(DtCriacao)) AS DiasSemana,
        count(DISTINCT IdTransacao) AS QntdTransacao
FROM transacoes
WHERE substr(DtCriacao, 1,4) = '2025'
GROUP BY DiasSemana
ORDER BY QntdTransacao DESC
LIMIT 1