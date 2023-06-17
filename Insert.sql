USE bdLojaDeRoupas

INSERT INTO tbFabricante (nomeFabricante) 
VALUES
	('Malwee'),
	('Marisol'),
	('Cia de Malha')

INSERT INTO tbProduto (nomeProduto,precoProduto,dataEntradaProduto,idFuncionario,idFabricante) 
VALUES
	('Camiseta Preta', 20.39,'2022-02-21',1,1),
	('Moleton Cinza',75.49,'2022-03-15',2,1),
	('Calça Feminina',80.39,'2022-04-21',1,1),
	('Camiseta Slim',95.49,'2022-05-10',2,2),
	('Vestido Hype',105.99,'2022-05-10',1,2),
	('Jaqueta WRM',100.99,'2022-04-15',2,2),
	('Pijama Inverno',39.49,'2022-04-20',1,3),
	('Roupão Fleece',125.49,'2022-04-20',2,3),
	('Macacão',109.99,'2022-04-20',1,3)

INSERT INTO tbCliente (nomeCliente,idadeCliente)
VALUES
	('Johnny Silver',19),
	('Joseph Silva',25),
	('Jolyne Johnson',18),
	('Lisa Joestar',55),
	('Suzi Quik',35)

INSERT INTO tbVendedor (nomeVendedor)
VALUES
	('João Santana'),
	('Raquel Torres'),
	('Rodrigo Garcia'),
	('Rafael Moura')

INSERT INTO tbVenda (dataVenda,totalVendas,idCliente,idVendedor)
VALUES
	('2022-05-10',139.99,1,2),
	('2022-05-05',130.99,2,1),
	('2022-04-25',200.10,3,2),
	('2022-04-15',89.99,4,1),
	('2022-04-20',99.99,5,2)


INSERT INTO tbItensVenda (quantidadeItens, subTotalItens, idVenda, idProduto)
VALUES 
	(2, 205, 1, 9),
	(2, 100, 2, 7),
	(2, 99, 3, 5),
	(2, 149, 4, 3),
	(2, 80, 5, 1)

