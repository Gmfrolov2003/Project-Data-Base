--DROP TABLE IF EXISTS employees;

CREATE TABLE IF NOT EXISTS employees
(
    employees_id integer NOT NULL,
	warehouse_id integer NOT NULL,
	contract_number integer NULL,
	wage_rate integer NULL,
	
	CONSTRAINT employees_pkey PRIMARY KEY (employees_id, warehouse_id),
	CONSTRAINT employees_info_employees_key FOREIGN KEY (employees_id)
		REFERENCES info_employees(employees_id),
	CONSTRAINT employees_warehouse_key FOREIGN KEY (warehouse_id)
		REFERENCES warehouse(warehouse_id)
);