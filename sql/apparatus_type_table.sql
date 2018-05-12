-- Table: public."apparatus_type"

-- DROP TABLE public."apparatus_type";

CREATE TABLE public."apparatus_type"
(
    "apparatus_type_id" integer NOT NULL,
    "name" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    "image" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    "description" text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "apparatus_type_pkey" PRIMARY KEY ("id")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."apparatus_type"
    OWNER to postgres;