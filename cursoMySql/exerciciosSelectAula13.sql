INSERT INTO `gafanhotos` (`id`, `nome`, `prof`, `nascimento`, `sexo`, `peso`, `altura`, `nacionalidade`) 
VALUES (NULL, 'Núbia', 'Gerente', '2010-01-09', 'M', '85', '1.6', 'Bolívia');

SELECT * FROM gafanhotos;
SELECT nascimento,sexo FROM gafanhotos ORDER BY nascimento;


/*1- Lista com as profissões dos gafanhotos e seus respectivos quantitativos*/
SELECT prof, count(*) FROM gafanhotos GROUP BY prof;

/*2- Quanto gafanhotos homens e quantas mulheres nasceram após 01-01-2005*/
SELECT sexo, count(*) FROM gafanhotos WHERE nascimento > '2005-01-01' GROUP BY sexo;

/*3- Lista com os gafanhotos que nasceram fora do Brasil,  mostrando o pais de origem
 e o total de pessoas nascidas lá. Só nos interessa os países que tiverem mais de 3
 gafanhotos com essa nacionalidade*/
 SELECT 
    nacionalidade, COUNT(*)
FROM
    gafanhotos
WHERE
    nascimento <> 'Brasil'
GROUP BY nacionalidade
HAVING COUNT(nacionalidade) > 3;
 
 /*4- Lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas 
 pesam mais de 100kg e que estão acima da média de altura de todos os cadastrados*/
 SELECT 
    peso, altura, COUNT(*)
FROM
    gafanhotos
WHERE
    peso > '100'
GROUP BY altura
HAVING altura > (SELECT 
        AVG(altura)
    FROM
        gafanhotos);
 

 
 

