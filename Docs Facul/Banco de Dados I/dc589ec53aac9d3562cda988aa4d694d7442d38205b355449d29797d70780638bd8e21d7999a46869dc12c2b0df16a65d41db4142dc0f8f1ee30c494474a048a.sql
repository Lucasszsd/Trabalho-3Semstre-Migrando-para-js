CREATE DATABASE COMERCIAL;
USE COMERCIAL;

CREATE TABLE Produto (
                idProduto INT AUTO_INCREMENT NOT NULL,
                nomeProduto VARCHAR(40) NOT NULL,
                ValorProduto NUMERIC(7,2) NOT NULL,
                PRIMARY KEY (idProduto)
);


CREATE TABLE Cliente (
                idCliente INT AUTO_INCREMENT NOT NULL,
                nomeCliente VARCHAR(40) NOT NULL,
                PRIMARY KEY (idCliente)
);


CREATE TABLE Pedido (
                IdPedido INT AUTO_INCREMENT NOT NULL,
                idCliente INT NOT NULL,
                PRIMARY KEY (IdPedido)
);


CREATE TABLE produtoPedido (
                IdPedido INT NOT NULL,
                idProduto INT NOT NULL,
                Qtde INT DEFAULT 1 NOT NULL,
                PRIMARY KEY (IdPedido, idProduto)
);


ALTER TABLE produtoPedido ADD CONSTRAINT produto_produtopedido_fk
FOREIGN KEY (idProduto)
REFERENCES Produto (idProduto)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Pedido ADD CONSTRAINT cliente_pedido_fk
FOREIGN KEY (idCliente)
REFERENCES Cliente (idCliente)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE produtoPedido ADD CONSTRAINT pedido_produtopedido_fk
FOREIGN KEY (IdPedido)
REFERENCES Pedido (IdPedido)
ON DELETE NO ACTION
ON UPDATE NO ACTION;