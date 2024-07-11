--DROP TABLE IF EXISTS warehouse;

CREATE TABLE IF NOT EXISTS warehouse
(
    warehouse_id integer NOT NULL,
	number_personnel integer NOT NULL,
	number_places integer NOT NULL,
	service_cost money,
	
	CONSTRAINT warehouse_pkey PRIMARY KEY (warehouse_id)
);