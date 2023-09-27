-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Endereço`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Endereço` (
  `id_endereço` INT NOT NULL,
  `rua` VARCHAR(45) NOT NULL,
  `cod_Postal` VARCHAR(45) NOT NULL,
  `porta` VARCHAR(45) NOT NULL,
  `andar` VARCHAR(45) NULL,
  `localidade` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_endereço`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Utilizador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Utilizador` (
  `id_utilizador` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `Nif` VARCHAR(45) NOT NULL,
  `id_endereço` INT NOT NULL,
  PRIMARY KEY (`id_utilizador`),
  INDEX `fk_utilizador_endereço_idx` (`id_endereço` ASC) VISIBLE,
  CONSTRAINT `fk_utilizador_endereço`
    FOREIGN KEY (`id_endereço`)
    REFERENCES `mydb`.`Endereço` (`id_endereço`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Veiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Veiculo` (
  `id_Veiculo` INT NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `matricula` VARCHAR(45) NULL,
  PRIMARY KEY (`id_Veiculo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Estafeta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Estafeta` (
  `id_Estafeta` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `contacto` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_Estafeta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Entrega`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Entrega` (
  `id_Entrega` INT NOT NULL,
  `data_saida` DATETIME NOT NULL,
  `Veiculo_id_Veiculo` INT NOT NULL,
  `Estafeta_id_Estafeta` INT NOT NULL,
  PRIMARY KEY (`id_Entrega`),
  INDEX `fk_Entrega_Veiculo1_idx` (`Veiculo_id_Veiculo` ASC) VISIBLE,
  INDEX `fk_Entrega_Estafeta1_idx` (`Estafeta_id_Estafeta` ASC) VISIBLE,
  CONSTRAINT `fk_Entrega_Veiculo1`
    FOREIGN KEY (`Veiculo_id_Veiculo`)
    REFERENCES `mydb`.`Veiculo` (`id_Veiculo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Entrega_Estafeta1`
    FOREIGN KEY (`Estafeta_id_Estafeta`)
    REFERENCES `mydb`.`Estafeta` (`id_Estafeta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Encomenda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Encomenda` (
  `id_encomenda` INT NOT NULL,
  `data_compra` DATE NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  `preco_total` DECIMAL(4,2) NOT NULL,
  `avaliação` TEXT(90) NULL,
  `data_entrega` DATETIME NOT NULL,
  `id_utilizador` INT NOT NULL,
  `id_Entrega` INT NOT NULL,
  PRIMARY KEY (`id_encomenda`),
  INDEX `fk_encomenda_utilizador1_idx` (`id_utilizador` ASC) VISIBLE,
  INDEX `fk_Encomenda_Entrega1_idx` (`id_Entrega` ASC) VISIBLE,
  CONSTRAINT `fk_encomenda_utilizador1`
    FOREIGN KEY (`id_utilizador`)
    REFERENCES `mydb`.`Utilizador` (`id_utilizador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Encomenda_Entrega1`
    FOREIGN KEY (`id_Entrega`)
    REFERENCES `mydb`.`Entrega` (`id_Entrega`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Medicamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Medicamento` (
  `id_Medicamento` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `quantidade_stock` INT NOT NULL,
  `preco` DECIMAL(4,2) NOT NULL,
  `dosagem` INT NOT NULL,
  `venda_livre` TINYINT NOT NULL,
  PRIMARY KEY (`id_Medicamento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Itens_Encomenda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Itens_Encomenda` (
  `itens_Encomenda` INT NOT NULL,
  `quantidade` INT NOT NULL,
  `preço` DECIMAL(4,2) NOT NULL,
  `id_Medicamento` INT NOT NULL,
  `id_encomenda` INT NOT NULL,
  PRIMARY KEY (`itens_Encomenda`),
  INDEX `fk_Itens_Encomenda_Medicamento1_idx` (`id_Medicamento` ASC) VISIBLE,
  INDEX `fk_Itens_Encomenda_Encomenda1_idx` (`id_encomenda` ASC) VISIBLE,
  CONSTRAINT `fk_Itens_Encomenda_Medicamento1`
    FOREIGN KEY (`id_Medicamento`)
    REFERENCES `mydb`.`Medicamento` (`id_Medicamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Itens_Encomenda_Encomenda1`
    FOREIGN KEY (`id_encomenda`)
    REFERENCES `mydb`.`Encomenda` (`id_encomenda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

SELECT * FROM Veiculo;

INSERT INTO Veiculo
    (id_Veiculo, tipo, matricula)
    Values ('1','Carro', 'AA-00-00'),
    ('2','Carro', 'ZZ-00-10'),
    ('3','Mota', 'QX-01-10'),
    ('4','Bicicleta', 'HJ-20-30'),
    ('5','Carro', '00-AA-30');

SELECT * FROM Medicamento;

INSERT INTO Medicamento
    (id_Medicamento, nome, quantidade_stock, preco, dosagem, venda_livre)
    Values ('1','Azitromicina', '10', '07.65', '150', 1),
    ('2','Ácido acetilsalicílico', '20', '10', '500', '0'),
    ('3','Retinol', '30', '11.10', '120', '1'),
    ('4','Irbesartan', '40', '06.50', '75', '0'),
    ('5','Brufen', '50', '09.90', '300', '1');

SELECT * FROM Endereço;

INSERT INTO Endereço
(id_endereço, rua, cod_Postal, porta, andar, localidade)
Values ('1', 'R. Dr. José de Sousa Machado', '4710-383', '14', '3Dto', 'Braga'),
('2', 'R. do Taxa', '4710-383', '11', '2Dto', 'Braga'),
('3', 'R. Santa Margarida', '4710-100', '1', '3Esq', 'Braga'),
('4', 'R. Santa Catarina', '4710-404', '5', '1Ctr', 'Braga'),
('5', 'R. Marchal Gomes da Costa', '4710-383', '10', '3Esq', 'Braga');

SELECT * FROM Estafeta;


INSERT INTO Estafeta
    (id_Estafeta, nome ,contacto)
    Values ('1',' Nuno Machado', '934056871'),
	('2','Maria Antunes', '964021871'),
	('3','João Guimarães', '913487090'),
	('4',' Debora Martins', '936947320'),
	('5','António Mendes ', '914096371'),
	('6','Mariana Sousa', '929391873'),
	('7','Amélia Cruz ', '914021654'),
	('8','Vitor Joaquim', '964021871'),
	('9','Márcia Espirito Santo', '916783214'),
	('10',' Nelson Matos', '937689423');

SELECT * FROM Entrega;

INSERT INTO Entrega
  (id_Entrega, data_saida, Veiculo_id_Veiculo, Estafeta_id_Estafeta)
  Values('1', '2022-12-03 18:21:34', '5', '1'),
  ('2', '2022-01-04 17:21:56', '1', '1'),
  ('3', '2022-01-07 15:50:34', '2', '3'),
  ('4', '2022-01-31 12:10:01', '4', '5'),
  ('5', '2021-02-24 09:20:05', '1', '2'),
  ('6', '2022-01-31 12:10:01', '1', '10'),
  ('7', '2022-01-30 09:10:01', '5', '9'),
  ('8', '2022-01-30 14:10:20', '3', '8'),
  ('9', '2021-11-14 12:00:01', '3', '7'),
  ('10', '2022-07-11 08:30:20', '4', '4'),
  ('11', '2021-05-08 16:29:47', '2', '6'),
  ('12', '2022-03-09 15:35:52', '3', '10'),
  ('13', '2021-10-21 13:21:21', '4', '4');

SELECT * FROM Utilizador;

INSERT INTO Utilizador 
	(id_utilizador, nome ,Nif, id_endereço)
	Values ('1',' João António', '250223110', '1'),
	('2','José Maria ', '251330412', '2'),
	('3', 'Ana Rosa', '32242002', '3'),
	('4', 'Pedro Miguel', '250224712', '4'),
	('5', 'Maria Martins', '483594097', '5'),
	('6', 'Eduardo Moniz', '325387396', '5'),
	('7', 'Rosa Silva', '217163918', '4'),
	('8', 'Lucélia Martins', '325387396', '3'),
	('9', 'Catarina Quintas', '665125340', '2'),
	('10', 'João Carlos', '576340098', '1'),
	('11', 'Ricardo Pereira', '690680222', '1'),
	('12', 'Carlos Costa', '116543870', '2'),
	('13', 'Fátima Antunes', '932564861', '3'),
	('14', 'José Filipe', '742678687', '4'),
	('15', 'Manuel Brandão', '287594323', '5');

SELECT * FROM Encomenda;

INSERT INTO Encomenda
    (id_encomenda, data_compra ,estado, preco_total, avaliação, data_entrega, id_utilizador, id_Entrega)
    Values ('1','2022-01-02', 'Entregue', '10.32', 'Bom serviço', '2022-01-10 12:59:34','1', '3'),
    ('2','2022-01-20', 'Entregue', '21.87', ' ', '2022-01-31 18:21:34','2', '6'),
    ('3','2021-02-24', 'Entregue', '36.92', 'Serviço Rápido', '2021-02-25 12:01:34','15', '5'),
    ('4','2022-01-02', 'Entregue', '11.74', '', '2022-01-06 09:31:03','13', '2'),
    ('5','2022-01-09', 'Entregue', '3.21', 'Demora na entrega', '2022-01-31 18:21:34','12', '7'),
    ('6','2022-12-01', 'Entregue', '17.30', ' Otimo serviço ', '2022-12-05 14:45:34','12', '1'),
    ('7','2022-01-31', 'Entregue', '5.09', 'Qualidade e rapidez', '2022-02-01 11:25:58','9', '4'),
    ('8','2022-01-29', 'Entregue', '67.32', '', '2022-01-31 14:45:34','2', '8'),
    ('9','2021-11-13', 'Entregue', '5.09', 'Qualidade e rapidez', '2021-11-16 19:40:00','12', '9'),
    ('10','2022-07-09', 'Entregue', '27.75', '', '2022-07-12 17:21:56','9', '10'),
    ('11','2021-05-04', 'Entregue', '28.09', 'Bastante satisfeito', '2021-05-13 18:21:34','8', '11'),
    ('12','2022-01-02', 'Entregue', '13.32', 'Bom serviço', '2022-03-10 12:59:34','1', '12'),
    ('13','2021-10-07', 'Entregue', '21.87', ' ', '2021-10-28 18:21:34','2', '13');
    
#Update encomenda Set estado = 'Entregue' where id_encomenda = '1';

SELECT * FROM Itens_Encomenda;

INSERT INTO Itens_Encomenda
	(itens_Encomenda, quantidade, preço, id_Medicamento, id_encomenda)
	Values ('1', '1', '07.65','5', '10'),
    ('2', '1', '30','4', '5'),
    ('3', '5', '55.50','3', '9'),
    ('4', '7', '45.50','2', '4'),
    ('5', '2', '19.80','1', '1');

#------------------QUERIES--------------------------
#tabela dos medicamentos transportados por um veiculo 
SELECT Medicamento.nome
FROM Medicamento
INNER JOIN Itens_Encomenda
ON Medicamento.id_Medicamento = Itens_Encomenda.id_Medicamento 
INNER JOIN Encomenda
ON Itens_Encomenda.id_encomenda = Encomenda.id_encomenda
INNER JOIN Entrega
ON Encomenda.id_Entrega = Entrega.id_Entrega
INNER JOIN Veiculo
ON Entrega.Veiculo_id_Veiculo = Veiculo.id_Veiculo
WHERE Veiculo.matricula = 'AA-00-00';

#compras de um determinado dia
SELECT Encomenda.id_encomenda FROM Encomenda
WHERE Encomenda.data_compra = '2022-01-02';

#tabela de todas as encomendas 
SELECT * FROM Encomenda;

#tabela dos clientes com o codigo postal "x" q fizeram encomenda num certo dia -----(1,5,2)
SELECT Utilizador.id_utilizador AS Id,
Utilizador.nome AS Nome,
Utilizador.Nif AS Nif,
Encomenda.id_encomenda AS Id_encomenda
FROM Utilizador
    INNER JOIN Endereço
        ON Utilizador.id_endereço = Endereço.id_endereço
        INNER JOIN Encomenda
            ON  Utilizador.id_utilizador = Encomenda.id_utilizador
    WHERE Encomenda.data_compra = '2022-01-02' AND  Endereço.cod_Postal = '4710-383';

#tabela de ranking de entregas dos veículos (o tipo de veiculo com mais entregas )
SELECT  count(*) as Quantidade, Veiculo.tipo FROM Veiculo
    INNER JOIN Entrega
        ON Veiculo.id_Veiculo = Entrega.Veiculo_id_Veiculo
    GROUP BY Veiculo.tipo;

#VISTAS
#vista do ranking do lucro dos estafetas
CREATE VIEW Ranking_Estafetas AS
SELECT Estafeta.nome, SUM(Encomenda.preco_total) AS Lucro
FROM Encomenda
INNER JOIN Entrega 
ON Encomenda.id_Entrega = Entrega.id_Entrega
INNER JOIN Estafeta
ON Entrega.Estafeta_id_Estafeta = Estafeta.id_Estafeta
GROUP BY Estafeta.nome
ORDER BY Lucro DESC;

#vista da demora das entregas 
CREATE VIEW demora_entregas AS
SELECT Entrega.id_Entrega, 
Entrega.data_saida, Encomenda.data_entrega, 
datediff(Encomenda.data_entrega, Entrega.data_saida)as TIME
FROM Entrega 
INNER JOIN Encomenda 
ON Entrega.id_entrega = Encomenda.id_entrega 
ORDER BY TIME DESC;

#vista de todos os medicamentos sem venda_livre 
CREATE VIEW sem_venda_livre AS
SELECT * from Medicamento WHERE Medicamento.venda_livre  = '0';

#INDEX
CREATE INDEX NomeMedicamento ON Medicamento(nome); 
DROP INDEX NomeMedicamento ON Medicamento ;


CREATE INDEX Data_Entrega on Encomenda(data_entrega);

#PROCEDIMENTOS
#Procedimento do top 3 do valor das encomendas realizadas e respetivos clientes.
DELIMITER $$
CREATE PROCEDURE Top3Pagamentos()
BEGIN
    SELECT Utilizador.nome as Nome, Encomenda.preco_total as Preço 
        FROM Utilizador INNER JOIN Encomenda
            ON Utilizador.id_utilizador = Encomenda.id_utilizador 
        ORDER BY Encomenda.preco_total DESC
        LIMIT 3;
END $$
CALL Top3Pagamentos;

#Consultar o número total de entregas num determinado ano (2022)
DELIMITER $$
CREATE PROCEDURE n_total_ano (IN ano INT)
BEGIN
SELECT count(id_Entrega) as n_Entregas FROM Entrega WHERE YEAR(data_saida)=ano;
END $$
CALL n_total_ano(2022);


#Atualizaçao do preço do um medicamento devido a inflaçao 
DELIMITER $$ 
CREATE PROCEDURE Update_Preço_Med (IN med INT, IN new_preco DECIMAL(4,2))
BEGIN
UPDATE Medicamento SET preco = new_preco where id_Medicamento=med;
END $$
call Update_Preço_Med (1,20.04);

SELECT * FROM Medicamento;