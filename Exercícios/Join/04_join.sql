--Clientes mais antigos, tem mais frequência de transação?
SELECT t1.idCliente,
        julianday('now') - julianday(substr(t1.DtCriacao,1,19)) AS IdadeDesdeInicio,
        count(t2.IdTransacao) AS qntdtranscoes

FROM clientes AS t1

LEFT JOIN transacoes AS t2
ON t1.idCliente = t2.idCliente

GROUP BY t1.idCliente, IdadeDesdeInicio

--Para saber correlação passar para planilha no Excel e criar um gráfico entre idade e transações
-- Com a conclusão que não se cumpre 