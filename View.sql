USE bdLojaDeRoupas

CREATE VIEW exercicio1 AS 
	SELECT nomeVendedor FROM tbVendedor
SELECT * FROM exercicio1


CREATE VIEW exercicio2 AS
	SELECT nomeCliente, idadeCliente,idCliente FROM tbCliente
SELECT * FROM exercicio2

CREATE VIEW exercicio3 AS
	SELECT nomeProduto, nomeFabricante FROM tbProduto
		INNER JOIN tbFabricante ON tbProduto.idFabricante = tbFabricante.idFabricante
SELECT * FROM exercicio3

CREATE VIEW exercicio4 AS
	SELECT nomeProduto,precoProduto,dataEntradaProduto FROM tbProduto
SELECT * FROM exercicio4;



CREATE VIEW exercicio5 AS
	SELECT tbCliente.idCliente , tbCliente.nomeCliente , tbVenda.dataVenda , tbVenda.totalVendas FROM tbCliente
		INNER JOIN tbVenda ON tbCliente.idCliente = tbVenda.idCliente
SELECT * FROM exercicio5

CREATE VIEW exercicio6 AS
	SELECT idVenda,totalVendas,nomeVendedor FROM tbVenda
		INNER JOIN tbVendedor ON tbVenda.idVendedor = tbVendedor.idVendedor
SELECT * FROM exercicio6



