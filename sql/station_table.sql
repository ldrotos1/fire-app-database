-- Table: public."station"

-- DROP TABLE public."station";

CREATE TABLE public."station"
(
    "id" integer NOT NULL,
    "number" integer NOT NULL,
    "designator" integer NOT NULL,
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
    CONSTRAINT "station_pkey" PRIMARY KEY ("id"),
    CONSTRAINT stat_num_dept_id_uq_con UNIQUE ("number", "department_id"),
    CONSTRAINT station_desig_uq_con UNIQUE ("designator")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."station"
    OWNER to postgres;