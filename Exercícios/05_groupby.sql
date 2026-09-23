--Qual o valor médio de pontos positivos por dia?
SELECT sum(qtdePontos) / count(DISTINCT datetime(DtCriacao)),
    --count(DISTINCT datetime(DtCriacao)) AS DiasNaoRepetidos

FROM transacoes
WHERE qtdePontos > 0