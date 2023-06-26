create table funcionario(id_func serial not null primary key, cpf char(11) not null unique check(cpf ~ '(0-9)[11]'), endereco varchar(80), telefone varchar(14) check(telefone ~ '[0-9]'), nome varchar(80) not null, pis varchar(30) not null, agencia varchar(5), conta char(30) not null check(conta ~ '[0-9]'));

create table cargo(id_cargo serial not null primary key, salario decimal(10,2), descricao varchar[80], nome varchar[80]);

create table eventos(id_eventos serial not null primary key, nome varchar[80], descricao varchar[80], valor decimal(10,2));

create table eventos_mes(id_eventos_mes serial not null primary key, id_eventos serial not null, id_funcionario serial not null, data date, Ativo boolean, FOREIGN KEY (ID_Eventos) REFERENCES Eventos(ID_Eventos));

create table folha(id_folha serial not null primary key, id_func serial not null, data date, salario_b dec
imal(10,2) not null, salario_l decimal(10,2) not null);


INSERT INTO Funcionario (CPF, Nome, PIS, banco, agencia, conta, telefone, endereco)
VALUES ('23438478847', 'Maria Santos', '987654321', 'Picpay', '5678', '2468135790','0553891239999', 'Rua Carandai - MOC - MG'),
       ('34387463747', 'Pedro Oliveira', '543216789', 'Caixa Economica Federal', '9012', '1357924680','0553891499999', 'Av Maestra Fininha - MOC - MG'),
       ('45465465422', 'Ana Pereira', '246813579', 'Inter', '3456', '8642097531','0553891799999', 'Major Prates - MOC - MG'),
       ('53248738848', 'Carlos Sousa', '987654321', 'Itau', '7890', '1592637048','0553891699999', 'Eldorado - MOC - MG'),
       ('62134356565', 'Sandra Almeida', '135792468', 'Banco do Brasil', '1234', '7531902468','0553891599999', 'Jardim Palmeiras - MOC - MG'),
       ('73478289843', 'José Santos', '864209753', 'Next', '5678', '2468013579','0553891499999', 'Centro - BH - MG'),
       ('82389271487', 'Mariana Lima', '159263704', 'C6', '9012', '9753102468','0553891399999', 'Morada do Parque - MOC - MG'),
       ('94395784395', 'Fernando Castro', '753190246', 'Nubank', '3456', '8642097531','0553891299999', 'Centro - MOC - MG'),
       ('10398439843', 'Laura Costa', '246801357', 'Picpay', '7890', '6420795318','0553891999999', 'Ibituruna - MOC- MG');


INSERT INTO Eventos (Nome, Descricao, valor)
VALUES ('{Bônus}', '{Valor adicional concedido como reconhecimento}', 500.00),
       ('{Desconto INSS}', '{Desconto referente ao INSS}', -20
0.00),
       ('{Vale Refeição}', '{Beneficio de vale refeição}', 300.00),
       ('{Comissão de Vendas}', '{Valor obtido pelas vendas realizadas}', 200.00),
       ('{Adiantamento Salarial}', '{Adiantamento de parte do salário}', 1000.00),
       ('{Gratificação}', '{Valor extra concedido em ocasiões especiais}', 400.00),
       ('{Desconto Imposto de Renda}', '{Desconto referente ao Imposto de Renda}', -300.00),
       ('{Auxílio Transporte}', '{Benefício de auxílio transporte}', 150.00),
       ('{Prêmio de Produtividade}', '{Recompensa pelo alto desempenho}', 800.00);

INSERT INTO Folha (ID_Func, Data, Salario_B, Salario_L)
VALUES (1, '2023-01-01', 5000.00, 4800.00),
       (2, '2023-01-01', 3000.00, 2850.00),
       (3, '2023-01-01', 2500.00, 2400.00),
       (4, '2023-01-01', 4000.00, 3850.00),
       (5, '2023-01-01', 3500.00, 3300.00),
       (6, '2023-01-01', 2800.00, 2650.00),
       (7, '2023-01-01', 3200.00, 3050.00),
       (8, '2023-01-01', 2700.00, 2550.00),
       (9, '2023-01-01', 2300.00, 2200.00),
       (10, '2023-01-01', 3800.00, 3650.00);

INSERT INTO Eventos_Mes (Data, Ativo)
VALUES ('2023-01-01', true),
       ('2023-01-01', true),
       ('2023-01-01', true),
       ('2023-01-01', true),
       ('2023-01-01', true),
       ('2023-01-01', true),
       ('2023-01-01', true),
       ('2023-01-01', true),
       ('2023-01-01', true),
       ('2023-01-01', true);


