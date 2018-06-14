-- Table: public."department"

-- DROP TABLE public."department";

CREATE TABLE public."department"
(
    "department_id" integer NOT NULL,
    "name" character varying(100) COLLATE pg_catalog."default" NOT NULL,
	"abbreviation" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "chief" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "address" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "city" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    "state" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    "zip" character varying(5) COLLATE pg_catalog."default" NOT NULL,
    "phone" character varying(12) COLLATE pg_catalog."default" NOT NULL,
    "personnel" integer NOT NULL,
    "border" polygon,
    CONSTRAINT department_pkey PRIMARY KEY (department_id),
	CONSTRAINT dept_name_uc UNIQUE (name),
	CONSTRAINT dept_abbv_uc UNIQUE (abbreviation)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."department"
    OWNER to postgres;
	
-- Table: public."station"

-- DROP TABLE public."station";

CREATE TABLE public."station"
(
	"station_id" integer NOT NULL,
    "station_designator" integer NOT NULL,
    "number" integer NOT NULL,
    "department_id" integer NOT NULL,
    "lat" double precision NOT NULL,
    "lon" double precision NOT NULL,
    "name" character varying(70) COLLATE pg_catalog."default" NOT NULL,
    "address" character varying(70) COLLATE pg_catalog."default" NOT NULL,
    "city" character varying(70) COLLATE pg_catalog."default" NOT NULL,
    "state" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    "zip" character varying(5) COLLATE pg_catalog."default" NOT NULL,
    "phone" character varying(12) COLLATE pg_catalog."default" NOT NULL,
    "is_volunteer" boolean NOT NULL,
    "location" point,
    CONSTRAINT "station_pkey" PRIMARY KEY ("station_id"),
	CONSTRAINT station_desig_uc UNIQUE (station_designator),
	CONSTRAINT fk_dept_id FOREIGN KEY (department_id)
        REFERENCES public.department (department_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."station"
    OWNER to postgres;
	
-- Table: public."apparatus_type"

-- DROP TABLE public."apparatus_type";

CREATE TABLE public."apparatus_type"
(
    apparatus_type_id integer NOT NULL,
    name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    image character varying(50) COLLATE pg_catalog."default" NOT NULL,
    description text COLLATE pg_catalog."default" NOT NULL,
	category character varying(50) COLLATE pg_catalog."default" NOT NULL,
	include_in_simulator integer NOT NULL,
    CONSTRAINT apparatus_type_pkey PRIMARY KEY (apparatus_type_id),
	CONSTRAINT app_type_name_uc UNIQUE (name)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."apparatus_type"
    OWNER to postgres;
	
-- Table: public."apparatus"

-- DROP TABLE public."apparatus";

CREATE TABLE public."apparatus"
(
    apparatus_id integer NOT NULL,
    unit_designator character varying(15) COLLATE pg_catalog."default",
    station_id integer,
    apparatus_type_id integer NOT NULL,
    is_reserve boolean NOT NULL,
    CONSTRAINT apparatus_pkey PRIMARY KEY (apparatus_id),
	CONSTRAINT unit_desig_uc UNIQUE (unit_designator),
	CONSTRAINT fk_station FOREIGN KEY (station_id)
        REFERENCES public.station (station_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE SET NULL,
	CONSTRAINT fk_apparatus_type FOREIGN KEY (apparatus_type_id)
        REFERENCES public.apparatus_type (apparatus_type_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."apparatus"
    OWNER to postgres;