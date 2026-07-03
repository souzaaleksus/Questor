/* 04: Quantidade de clientes que não efetuaram venda */

SELECT 	COUNT(*) AS QTDE_CLIENTES_SEM_VENDA
FROM 	CLIENTE CL
WHERE NOT EXISTS (	SELECT	1
			FROM 	VENDA V
                  	WHERE 	V.ID_CLIENTE = CL.ID_CLIENTE);
