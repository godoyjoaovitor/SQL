SELECT round(avg(qtdePontos), 2) AS MediaCarteira,
    min(qtdePontos) AS PontosMinimos,
    max(qtdePontos) As PontosMaximos,
    sum(flEmail),
    sum(flTwitch)
FROM clientes