--DROP TABLE IF EXISTS parking;

CREATE TABLE IF NOT EXISTS parking
(
    parking_id integer NOT NULL,
	warehouse_id integer NOT NULL,
	parking_name varchar(50) NOT NULL,
	number_places integer NOT NULL,	
	note varchar(200) NULL,
	
	CONSTRAINT parking_pkey PRIMARY KEY (parking_id),
	CONSTRAINT parking_warehouse_key FOREIGN KEY (warehouse_id)
		REFERENCES warehouse(warehouse_id)
);