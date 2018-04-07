-- Table: public."APPARATUS_TYPE"

-- DROP TABLE public."APPARATUS_TYPE";

CREATE TABLE public."APPARATUS_TYPE"
(
    "ID" integer NOT NULL,
    "NAME" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    "IMAGE" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    "DESCRIPTION" text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "APPARATUS_TYPE_pkey" PRIMARY KEY ("ID")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."APPARATUS_TYPE"
    OWNER to postgres;