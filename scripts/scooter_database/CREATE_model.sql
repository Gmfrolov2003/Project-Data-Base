--DROP TABLE IF EXISTS model;

CREATE TABLE IF NOT EXISTS model
(
    model_id integer NOT NULL,
	color varchar(30) NOT NULL,
	manufacturer_country varchar(30) NOT NULL,
	manufacturer_email varchar(30) NULL,
	warranty_period integer,
	
	CONSTRAINT model_pkey PRIMARY KEY (model_id),
	CONSTRAINT email_cheak 
        CHECK (manufacturer_email ~* '^[A-Za-z0-9._+%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$')

);