-- Insere elementos em turma
INSERT ALL
    INTO turma VALUES ('Lauwis', 'Turma 1')
    INTO turma VALUES ('Velowa', 'Turma 2')
    INTO turma VALUES ('Muzagi', 'Turma 3')
    INTO turma VALUES ('Zacyer', 'Turma 4')
    INTO turma VALUES ('Capuis', 'Turma 5')
SELECT 1 FROM DUAL;

--Insere elementos em aluno
INSERT ALL
    INTO aluno VALUES ('81383135182', 'Adalberto', 'Filosofia', 'Masculino', TO_DATE('20/07/1995', 'dd/mm/yyyy'), 82747025, 'Rua da Aurora nº25')
    INTO aluno VALUES ('70289284043', 'Beatriz', 'Contabilidade', 'Feminino', TO_DATE('15/07/2003', 'dd/mm/yyyy'), 98004866, 'Rua da Boa Vista nº412')
    INTO aluno VALUES ('60135154256', 'Diego', 'Ed. Física', 'Masculino', TO_DATE('07/08/1985', 'dd/mm/yyyy'), 47113023, 'Rua Dobrada nº1248')
    INTO aluno VALUES ('83976680995', 'Mirian', 'Medicina', 'Feminino', TO_DATE('24/01/1984', 'dd/mm/yyyy'), 71169907, 'Rua do Milagre nº33')
    INTO aluno VALUES ('19007543716', 'Rayssa', 'História', NULL, TO_DATE('30/12/1998', 'dd/mm/yyyy'), 26413163, 'Rua Dr. Raimundo nº49')
    INTO aluno VALUES ('91261237981', 'Isabelly', 'Ciência da Computação', 'Feminino', TO_DATE('21/09/2000', 'dd/mm/yyyy'), 29948955, 'Rua Barão de Vitória nº4862')
    INTO aluno VALUES ('80906692741', 'Taísa', 'Engenharia Eletrica', 'Feminino', TO_DATE('08/07/1982', 'dd/mm/yyyy'), 62662666, 'Rua Cristiano Olsen nº347')
    INTO aluno VALUES ('77581359488', 'Stephen', 'Odontologia', 'Masculino', TO_DATE('22/03/1982', 'dd/mm/yyyy'), 94321898, 'Rua Tenente-Coronel Cardoso nº3159')
    INTO aluno VALUES ('76083147494', 'Giorgi', 'Inglês', NULL, TO_DATE('07/05/1992', 'dd/mm/yyyy'), 82573420, 'Rua da Imprensa nº8')
    INTO aluno VALUES ('97959087335', 'Emanuela', 'Teatro', 'Feminino', TO_DATE('02/08/2002', 'dd/mm/yyyy'), 56052500, 'Avenida Rio Branco nº4250')
SELECT 1 FROM DUAL;

--Insere elementos em alunoTelefone
INSERT ALL
    INTO alunoTelefone VALUES ('81383135182', '73871237618')
    INTO alunoTelefone VALUES ('70289284043', '10860105843')
    INTO alunoTelefone VALUES ('60135154256', '38495234303')
    INTO alunoTelefone VALUES ('83976680995', '44154960055')
    INTO alunoTelefone VALUES ('19007543716', '35779553718')
    INTO alunoTelefone VALUES ('19007543716', '24360466830')
    INTO alunoTelefone VALUES ('91261237981', '65155532970')
    INTO alunoTelefone VALUES ('80906692741', '12100184581')
    INTO alunoTelefone VALUES ('77581359488', '56766807223')
    INTO alunoTelefone VALUES ('77581359488', '74662144371')
    INTO alunoTelefone VALUES ('76083147494', '41512918714')
    INTO alunoTelefone VALUES ('97959087335', '49706159366')
SELECT 1 FROM DUAL;

--Insere elementos em disciplina
INSERT ALL
    INTO disciplina values ('Riusus', 'Disciplina 1')
    INTO disciplina values ('Mifexo', 'Disciplina 2')
    INTO disciplina values ('Myedil', 'Disciplina 3')
    INTO disciplina values ('Ankofo', 'Disciplina 4')
    INTO disciplina values ('Colico', 'Disciplina 5')
SELECT 1 FROM DUAL;

--Insere elementos em projeto
INSERT ALL
    INTO projeto values ('Riusus', '2016')
    INTO projeto values ('Riusus', '2015')
    INTO projeto values ('Mifexo', '2015')
    INTO projeto values ('Riusus', '2009')
    INTO projeto values ('Ankofo', '2020')
    INTO projeto values ('Myedil', '2020')
    INTO projeto values ('Colico', '2003')
    INTO projeto values ('Ankofo', '2003')
SELECT 1 FROM DUAL;

--Insere elementos em func
INSERT ALL
    INTO func values ('02348514060', 'Sara', 'Feminino', TO_DATE('27/12/1983', 'dd/mm/yyyy'), 34845392, 'Rua Arlindo Nogueira nº1585')
    INTO func values ('41764264037', 'Micaela', 'Feminino', TO_DATE('15/01/1963', 'dd/mm/yyyy'), 74606024, 'Avenida Governador José Malcher nº594')
    INTO func values ('41286563054', 'Fernando', 'Masculino', TO_DATE('24/09/1964', 'dd/mm/yyyy'), 18152408, 'Avenida Esbertalina Barbosa Damiani nº3253') 
    INTO func values ('24224580098', 'Messias', 'Masculino', TO_DATE('20/11/1971', 'dd/mm/yyyy'), 74248195, 'Avenida São João nº2194')
    INTO func values ('77601825035', 'Keyson', NULL, TO_DATE('02/12/1980', 'dd/mm/yyyy'), 57826414, 'Avenida Afonso Pena nº 1496')
    INTO func values ('62439288020', 'Fatima', 'Feminino', TO_DATE('16/01/1988', 'dd/mm/yyyy'), 98135196, 'Rua Carlos Augusto Cornelsen nº3149')
    INTO func values ('53998863087', 'Arina', NULL, TO_DATE('18/03/1990', 'dd/mm/yyyy'), 37887046, 'Rua Maria Luísa do Val Penteado nº714')
    INTO func values ('06841922093', 'Breno', 'Masculino' , TO_DATE('10/01/1988', 'dd/mm/yyyy'), 44834723, 'Rua Paracatu nº1014')
    INTO func values ('67929638014', 'Ayrtom', 'Masculino' , TO_DATE('11/12/1967', 'dd/mm/yyyy'), 37427825, 'Rua Serra de Bragança nº2344')
SELECT 1 FROM DUAL;

--Insere elementos em funcTelefone
INSERT ALL
    INTO funcTelefone values ('02348514060', '23286273924')
    INTO funcTelefone values ('41764264037', '34425437255')
    INTO funcTelefone values ('41764264037', '61643907715')
    INTO funcTelefone values ('41286563054', '56573287424')
    INTO funcTelefone values ('24224580098', '49817999859')
    INTO funcTelefone values ('77601825035', '32523847891')
    INTO funcTelefone values ('77601825035', '12872650375')
    INTO funcTelefone values ('62439288020', '71865871872')
    INTO funcTelefone values ('53998863087', '15578853829')
    INTO funcTelefone values ('53998863087', '28444609106')
    INTO funcTelefone values ('06841922093', '21344813362')
    INTO funcTelefone values ('67929638014', '47476919891')
SELECT 1 FROM DUAL;

--Insere elementos em diretoria
INSERT ALL
    INTO diretoria values ('24224580098', 'Diretor', 11000.00)
    INTO diretoria values ('77601825035', 'Coordenador', 9000.00)
    INTO diretoria values ('62439288020', 'Contadora', 8700.00)
SELECT 1 FROM DUAL;

--Insere elementos em terceirizados
INSERT ALL
    INTO terceirizados values ('41764264037', 'Coordenadora de Assuntos Diversos', 3500.00, '77601825035')
    INTO terceirizados values ('02348514060', 'Faxineira', 3000.00, '41764264037')
    INTO terceirizados values ('41286563054', 'Porteiro', 3000.00, '41764264037')
SELECT 1 FROM DUAL;

--Insere elementos em docente
INSERT ALL
    INTO docente values ('53998863087', TO_DATE('18/06/2006', 'dd/mm/yyyy'), 'Cálculo', 8200.00)
    INTO docente values ('06841922093', TO_DATE('13/02/2001', 'dd/mm/yyyy'), 'Física', 8450.00)
    INTO docente values ('67929638014', TO_DATE('21/07/2002', 'dd/mm/yyyy'), 'Álgebra', 7980.00)
SELECT 1 FROM DUAL;

--Insere elementos em ofertaTurDis
INSERT INTO ofertaTurDis VALUES (AUTOINCRVAR.nextval, 'Lauwis', 'Riusus');
INSERT INTO ofertaTurDis VALUES (AUTOINCRVAR.nextval, 'Velowa', 'Mifexo');
INSERT INTO ofertaTurDis VALUES (AUTOINCRVAR.nextval, 'Muzagi', 'Mifexo');
INSERT INTO ofertaTurDis VALUES (AUTOINCRVAR.nextval, 'Zacyer', 'Myedil');
INSERT INTO ofertaTurDis VALUES (AUTOINCRVAR.nextval, 'Capuis', 'Myedil');

--Insere elementos em coordenaDisDoc
INSERT INTO coordenaDisDoc VALUES (AUTOINCRVAR.nextval, 'Riusus', '53998863087');
INSERT INTO coordenaDisDoc VALUES (AUTOINCRVAR.nextval, 'Mifexo', '06841922093');
INSERT INTO coordenaDisDoc VALUES (AUTOINCRVAR.nextval, 'Ankofo', '53998863087');
INSERT INTO coordenaDisDoc VALUES (AUTOINCRVAR.nextval, 'Riusus', '67929638014');
INSERT INTO coordenaDisDoc VALUES (AUTOINCRVAR.nextval, 'Colico', '06841922093');

--Insere elementos em matriculaTurAlu
INSERT INTO matriculaTurAlu VALUES (AUTOINCRVAR.nextval, 'Lauwis', 20201, '81383135182', 2.00);
INSERT INTO matriculaTurAlu VALUES (AUTOINCRVAR.nextval, 'Lauwis', 20201, '70289284043', 9.01);
INSERT INTO matriculaTurAlu VALUES (AUTOINCRVAR.nextval, 'Velowa', 20202, '60135154256', 9.08);
INSERT INTO matriculaTurAlu VALUES (AUTOINCRVAR.nextval, 'Velowa', 20202, '83976680995', 7.59);
INSERT INTO matriculaTurAlu VALUES (AUTOINCRVAR.nextval, 'Muzagi', 20191, '19007543716', 2.00);
INSERT INTO matriculaTurAlu VALUES (AUTOINCRVAR.nextval, 'Muzagi', 20191, '91261237981', 8.88);
INSERT INTO matriculaTurAlu VALUES (AUTOINCRVAR.nextval, 'Zacyer', 20192, '80906692741', 9.64);
INSERT INTO matriculaTurAlu VALUES (AUTOINCRVAR.nextval, 'Zacyer', 20192, '77581359488', 1.15);
INSERT INTO matriculaTurAlu VALUES (AUTOINCRVAR.nextval, 'Capuis', 20181, '76083147494', 0.39);
INSERT INTO matriculaTurAlu VALUES (AUTOINCRVAR.nextval, 'Capuis', 20181, '97959087335', 5.27);

--Insere elementos em aulaDocTur
INSERT INTO aulaDocTur VALUES (AUTOINCRVAR.nextval, 'Lauwis', '53998863087');
INSERT INTO aulaDocTur VALUES (AUTOINCRVAR.nextval, 'Velowa', '06841922093');
INSERT INTO aulaDocTur VALUES (AUTOINCRVAR.nextval, 'Velowa', '67929638014');
INSERT INTO aulaDocTur VALUES (AUTOINCRVAR.nextval, 'Muzagi', '53998863087');
INSERT INTO aulaDocTur VALUES (AUTOINCRVAR.nextval, 'Capuis', '06841922093');

--Insere elementos em monitoria
INSERT INTO monitoria VALUES (AUTOINCRVAR.nextval, '53998863087', NULL, '81383135182', 'Lauwis');
INSERT INTO monitoria VALUES (AUTOINCRVAR.nextval, '06841922093', 20201, '70289284043', 'Velowa');
INSERT INTO monitoria VALUES (AUTOINCRVAR.nextval, '67929638014', 20182, '91261237981', 'Muzagi');
INSERT INTO monitoria VALUES (AUTOINCRVAR.nextval, '53998863087', 20161, '76083147494', NULL);
INSERT INTO monitoria VALUES (AUTOINCRVAR.nextval, '06841922093', 20192, '97959087335', 'Zacyer');