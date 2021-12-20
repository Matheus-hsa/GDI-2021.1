CREATE TABLE turma (
	codT VARCHAR(6),
	descricao VARCHAR(255),
	CONSTRAINT PK_turma_codturma PRIMARY KEY (codT)
);

CREATE TABLE aluno (
	cpf VARCHAR(11),
	nome VARCHAR(50) NOT NULL,
	curso VARCHAR(50) NOT NULL,
	sexo VARCHAR(10),
	datnsc DATE NOT NULL,
	end_CEP NUMBER,
	end_Descricao VARCHAR(50),
	CONSTRAINT PK_aluno_cpf PRIMARY KEY (cpf)
);

CREATE TABLE alunoTelefone (
	cpf VARCHAR(11),
	telefone VARCHAR(12),
	CONSTRAINT PK_alunoTelefone PRIMARY KEY (cpf, telefone),
	CONSTRAINT FK_alunoTelefone FOREIGN KEY (cpf) REFERENCES aluno (cpf)
);

CREATE TABLE disciplina (
	cod VARCHAR(6),
	descricao VARCHAR(30),
	CONSTRAINT PK_disciplina PRIMARY KEY (cod)
);

CREATE TABLE projeto (
	cod VARCHAR(6),
	ano VARCHAR(4),
	CONSTRAINT PK_projeto PRIMARY KEY (cod, ano),
	CONSTRAINT FK_projeto FOREIGN KEY (cod) REFERENCES disciplina (cod)
);

CREATE TABLE func (
	cpf VARCHAR(11),
	nome VARCHAR(50) NOT NULL,
	sexo VARCHAR(10),
	datnsc DATE NOT NULL,
	end_CEP NUMBER,
	end_Descricao VARCHAR(50),
	CONSTRAINT PK_func_cpf PRIMARY KEY (cpf)
);

CREATE TABLE funcTelefone (
	cpf VARCHAR(11),
	telefone VARCHAR(12),
	CONSTRAINT PK_funcTelefone PRIMARY KEY (cpf, telefone),
	CONSTRAINT FK_funcTelefone FOREIGN KEY (cpf) REFERENCES func (cpf)
);

CREATE TABLE terceirizados (
	cpf VARCHAR(11),
	cargo VARCHAR(50) NOT NULL,
	salario NUMBER(6,2) NOT NULL,
	chefe VARCHAR(11),
	CONSTRAINT CHK_salario_terceirizados CHECK (salario > 0),
	CONSTRAINT PK_terceirizados PRIMARY KEY (cpf),
	CONSTRAINT FK_terceirizados FOREIGN KEY (cpf) REFERENCES func (cpf),
	CONSTRAINT FK_terceirizados_chefe FOREIGN KEY (chefe) REFERENCES func (cpf)
);

CREATE TABLE diretoria (
	cpf VARCHAR(11),
	cargo VARCHAR(15) NOT NULL,
	salario NUMBER(7,2) NOT NULL,
	CONSTRAINT CHK_salario_diretoria CHECK (salario > 0),
	CONSTRAINT PK_diretoria PRIMARY KEY (cpf),
	CONSTRAINT FK_diretoria FOREIGN KEY (cpf) REFERENCES func (cpf)
);

CREATE TABLE docente (
	cpf VARCHAR(11),
	datAdmi DATE NOT NULL,
	especializacao VARCHAR(15),
	salario NUMBER(7,2) NOT NULL,
	CONSTRAINT CHK_salario_docente CHECK (salario > 0),
	CONSTRAINT PK_docente PRIMARY KEY (cpf),
	CONSTRAINT FK_docente FOREIGN KEY (cpf) REFERENCES func (cpf)
);

CREATE TABLE ofertaTurDis (
	PK_id INT PRIMARY KEY,
	codT VARCHAR(6),
	cod VARCHAR(6),
	CONSTRAINT FK_ofertaTurDisCod FOREIGN KEY (cod) REFERENCES disciplina (cod),
	CONSTRAINT FK_ofertaTurDisCodT FOREIGN KEY (codT) REFERENCES turma (codT)
);

CREATE TABLE coordenaDisDoc (
	PK_id INT PRIMARY KEY,
	cod VARCHAR(6),
	cpf VARCHAR(11) NOT NULL,
	CONSTRAINT FK_coordenaDisDocCod FOREIGN KEY (cod) REFERENCES disciplina (cod),
	CONSTRAINT FK_coordenaDisDocCPF FOREIGN KEY (cpf) REFERENCES func (cpf)
);

CREATE TABLE matriculaTurAlu (
	PK_id INT PRIMARY KEY,
	codT VARCHAR(6),
	semestre VARCHAR(10),
	cpf VARCHAR(11),
	nota NUMBER (4,2) NOT NULL,
	nome VARCHAR(50) NOT NULL,
	CONSTRAINT FK_matriculaTurAluCodT FOREIGN KEY (codT) REFERENCES turma (codT),
	CONSTRAINT FK_matriculaTurAluCPF FOREIGN KEY (cpf) REFERENCES aluno (cpf)
);

CREATE TABLE aulaDocTur (
	PK_id INT PRIMARY KEY,
	codT VARCHAR(6),
	cpf VARCHAR(11),
	CONSTRAINT FK_aulaDocTurCodT FOREIGN KEY (codT) REFERENCES turma (codT),
	CONSTRAINT FK_aulaDocTurCPF FOREIGN KEY (cpf) REFERENCES func (cpf)
);

CREATE TABLE monitoria (
	PK_id INT PRIMARY KEY,
	cpf_doc VARCHAR(11) NOT NULL,
	semestre VARCHAR(10),
	cpf_alu VARCHAR(11),
	codT VARCHAR(6),
	CONSTRAINT FK_monitoriaCodT FOREIGN KEY (codT) REFERENCES turma (codT),
	CONSTRAINT FK_monitoriaDocCPF FOREIGN KEY (cpf_doc) REFERENCES func (cpf),
	CONSTRAINT FK_monitoriaAluCPF FOREIGN KEY (cpf_alu) REFERENCES aluno (cpf)
);

--Função de Auto Incremento
CREATE SEQUENCE AutoIncrVar
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;
---------------------------