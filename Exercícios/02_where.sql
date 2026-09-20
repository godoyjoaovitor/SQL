--Lista de pedidos realizados no fim de semana
SELECT DtCriacao,
        strftime('%w', datetime(DtCriacao)) AS DiaSemana
FROM transacoes
WHERE DiaSemana in ('0', '6')