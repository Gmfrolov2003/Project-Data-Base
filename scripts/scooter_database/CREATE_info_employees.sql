--DROP TABLE IF EXISTS info_employees;

CREATE TABLE IF NOT EXISTS info_employees
(
    employees_id integer NOT NULL,
	surname varchar(30) NOT NULL,
	name varchar(30) NOT NULL,
	patronymic varchar(30) NULL,
	birthdate date NOT NULL,
	experience integer NULL,
	post varchar(30) NOT NULL,
	criminal_record varchar(30) NULL,
	salary money NOT NULL,
	
	CONSTRAINT employees_pkey PRIMARY KEY (employees_id)
);