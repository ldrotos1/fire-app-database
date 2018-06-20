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
    "location" geometry(Point,4326),
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