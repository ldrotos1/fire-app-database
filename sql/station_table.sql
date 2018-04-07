-- Table: public."STATION"

-- DROP TABLE public."STATION";

CREATE TABLE public."STATION"
(
    "ID" integer NOT NULL,
    "STATION_NUMBER" integer NOT NULL,
    "STATION_DESIGNATOR" integer NOT NULL,
    "DEPARTMENT_ID" integer NOT NULL,
    "LAT" double precision NOT NULL,
    "LON" double precision NOT NULL,
    "STATION_NAME" character varying(70) COLLATE pg_catalog."default" NOT NULL,
    "ADDRESS" character varying(70) COLLATE pg_catalog."default" NOT NULL,
    "CITY" character varying(70) COLLATE pg_catalog."default" NOT NULL,
    "STATE" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    "ZIP" character varying(5) COLLATE pg_catalog."default" NOT NULL,
    "PHONE" character varying(12) COLLATE pg_catalog."default" NOT NULL,
    "IS_VOLUNTEER" boolean NOT NULL,
    "LOCATION" point,
    CONSTRAINT "STATION_pkey" PRIMARY KEY ("ID"),
    CONSTRAINT stat_num_dept_id_uq_con UNIQUE ("STATION_NUMBER", "DEPARTMENT_ID"),
    CONSTRAINT station_desig_uq_con UNIQUE ("STATION_DESIGNATOR")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."STATION"
    OWNER to postgres;