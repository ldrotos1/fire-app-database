-- Table: public."department"

-- DROP TABLE public."department";

CREATE TABLE public."department"
(
    "department_id" integer NOT NULL,
    "name" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "chief" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "adddress" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "city" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    "state" character varying(2) COLLATE pg_catalog."default" NOT NULL,
    "zip" character varying(5) COLLATE pg_catalog."default" NOT NULL,
    "phone" character varying(12) COLLATE pg_catalog."default" NOT NULL,
    "personnel" integer NOT NULL,
    "border" polygon,
    CONSTRAINT "department_pkey" PRIMARY KEY ("id")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."department"
    OWNER to postgres;