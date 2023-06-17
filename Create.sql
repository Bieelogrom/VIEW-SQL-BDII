CREATE DATABASE bdLojaDeRoupas
USE bdLojaDeRoupas

CREATE TABLE tbFabricante (
	idFabricante INT PRIMARY KEY IDENTITY (1,1),
	nomeFabricante VARCHAR (70),
);

CREATE TABLE tbProduto (
	idProduto INT PRIMARY KEY IDENTITY (1,1),
	nomeProduto VARCHAR (70),
	precoProduto MONEY,
	dataEntradaProduto DATE,
	idFuncionario INT,
	idFabricante INT FOREIGN KEY REFERENCES tbFabricante (idFabricante),
);

CREATE TABLE tbCliente (
	idCliente INT PRIMARY KEY IDENTITY (1,1),
	nomeCliente VARCHAR (70),
	idadeCliente INT,
);

CREATE TABLE tbVendedor (
	idVendedor INT PRIMARY KEY IDENTITY (1,1),
	nomeVendedor VARCHAR (70),
);

CREATE TABLE tbVenda (
	idVenda INT PRIMARY KEY IDENTITY (1,1),
	dataVenda DATE,
	totalVendas MONEY,
	idCliente INT FOREIGN KEY REFERENCES tbCliente (idCliente),
	idVendedor INT FOREIGN KEY REFERENCES tbVendedor (idVendedor),
);

CREATE TABLE tbItensVenda (
	idItensVenda INT PRIMARY KEY IDENTITY (1,1),
	quantidadeItens INT,
	subTotalItens INT,
	idVenda INT FOREIGN KEY REFERENCES tbVenda (idVenda),
	idProduto INT FOREIGN KEY REFERENCES tbProduto (idProduto),
);