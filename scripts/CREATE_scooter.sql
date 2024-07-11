DROP TABLE IF EXISTS scooter;

CREATE TABLE IF NOT EXISTS scooter
(
    scooter_id integer NOT NULL,
	parking_id integer NULL,
	warehouse_id integer NULL,
	model_id integer NOT NULL,
	latitude numeric(13,10) NULL,
	longitude numeric(13,10) NULL,
	charge_lvl numeric(5,2) NULL CHECK (charge_lvl >=0 AND charge_lvl <=100),
	battery_wear numeric(3,2) CHECK (battery_wear >=0 AND battery_wear <=1),
	state varchar(30) NOT NULL CHECK (state = 'is used' OR state = 'waiting' OR state = 'discharged' OR state = 'faulty'),
	
	CONSTRAINT scooter_pkey PRIMARY KEY (scooter_id),
	CONSTRAINT scooter_parking_key FOREIGN KEY (parking_id)
		REFERENCES parking(parking_id),
	CONSTRAINT scooter_model_key FOREIGN KEY (model_id)
		REFERENCES model(model_id),
	CONSTRAINT scooter_warehouse_key FOREIGN KEY (warehouse_id)
		REFERENCES warehouse(warehouse_id)	
);