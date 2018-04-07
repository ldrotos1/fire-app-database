-- Table: public."DEPARTMENT"

-- DROP TABLE public."DEPARTMENT";

CREATE TABLE public."DEPARTMENT"
(
    "ID" integer NOT NULL,
    "NAME" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "CHIEF" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "ADDRESS" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "CITY" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    "STATE" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    "ZIP" character varying(5) COLLATE pg_catalog."default" NOT NULL,
    "PHONE" character varying(12) COLLATE pg_catalog."default" NOT NULL,
    "PERSONEL" integer NOT NULL,
    "BORDER" polygon,
    CONSTRAINT "DEPARTMENT_pkey" PRIMARY KEY ("ID")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."DEPARTMENT"
    OWNER to postgres;