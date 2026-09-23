SELECT IdCliente, 
        qtdePontos,
        QtdePontos + 10 AS QtdePontosPlus10,
        QtdePontos * 2 AS QtdePontosDouble,
        --datetime(substr(DtCriacao,1,19)) Caso não reconhecer
        datetime(DtCriacao) AS DataCracao,
        strftime('%w', datetime(DtCriacao)) AS DiaSemana
FROM clientes