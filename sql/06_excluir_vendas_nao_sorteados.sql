/* 06: Excluir todas as vendas que nao são dos clientes sorteados, sem utilizar o comando IN (solução com NOT EXISTS). */

DELETE 
FROM 	VENDA
WHERE 	NOT EXISTS (	SELECT 	1
			FROM 	(SELECT TOP 15
                 			CL.ID_CLIENTE
          			FROM 	CLIENTE CL
          				INNER JOIN VENDA V 
						ON V.ID_CLIENTE = CL.ID_CLIENTE
          				INNER JOIN CARRO C 
						ON C.ID_CARRO = V.ID_CARRO
		          	WHERE 	CL.CPF LIKE '0%'
            			AND 	YEAR(C.DATA_LANCAMENTO) = 2021
            			AND 	NOT EXISTS (	SELECT 	1
                            				FROM 	VENDA V2
                            					INNER JOIN CARRO C2 
									ON C2.ID_CARRO = V2.ID_CARRO
                            				WHERE 	V2.ID_CLIENTE = CL.ID_CLIENTE
                              				AND 	C2.MODELO = 'MAREA'
                            				GROUP BY 
								V2.ID_CLIENTE
                            				HAVING COUNT(*) >= 2)
          			GROUP BY 
					CL.ID_CLIENTE
          			ORDER BY 
					MIN(V.DATA_VENDA)) S
			WHERE 	S.ID_CLIENTE = VENDA.ID_CLIENTE);
