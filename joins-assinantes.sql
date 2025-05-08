SELECT A.nm_assinante, E.ds_endereco, E.complemento, E.bairro, E.cep, M.ds_municipio, T.dd, T.n_fone
FROM Assinante A
INNER JOIN Endereco E ON A.cd_endereco = E.cd_endereco
INNER JOIN Municipio M ON E.cd_municipio = M.cd_municipio
LEFT OUTER JOIN Telefone T ON A.cd_assinante = T.cd_assinante;

SELECT A.nm_assinante, R.ds_ramo
FROM Assinante A
LEFT OUTER JOIN Ramo R ON A.cd_ramo = R.cd_ramo
ORDER BY R.ds_ramo, A.nm_assinante;

SELECT A.nm_assinante
FROM Assinante A
INNER JOIN Endereco E ON A.cd_endereco = E.cd_endereco
INNER JOIN Municipio M ON E.cd_municipio = M.cd_municipio
INNER JOIN Tipo_Assinante T ON A.cd_tipo = T.cd_tipo
WHERE M.ds_municipio = 'Pelotas' AND T.ds_tipo = 'Residencial';

SELECT A.nm_assinante
FROM Assinante A
INNER JOIN Telefone T ON A.cd_assinante = T.cd_assinante
GROUP BY A.nm_assinante
HAVING COUNT(T.cd_fone) > 1;

SELECT A.nm_assinante, T.n_fone
FROM Assinante A
INNER JOIN Telefone T ON A.cd_assinante = T.cd_assinante
INNER JOIN Tipo_Assinante TA ON A.cd_tipo = TA.cd_tipo
INNER JOIN Endereco E ON A.cd_endereco = E.cd_endereco
INNER JOIN Municipio M ON E.cd_municipio = M.cd_municipio
WHERE TA.ds_tipo = 'Comercial' AND (M.ds_municipio = 'Natal' OR M.ds_municipio = 'João Câmara');
