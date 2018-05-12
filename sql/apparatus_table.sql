-- Table: public."apparatus"

-- DROP TABLE public."apparatus";

CREATE TABLE public."apparatus"
(
    "apparatus_id" integer NOT NULL,
    "unit_designator" character varying(15) COLLATE pg_catalog."default",
    "station_designator" integer,
    "apparatus_type_id" integer NOT NULL,
    "is_reserve" boolean NOT NULL,
    CONSTRAINT "apparatus_pkey" PRIMARY KEY ("id"),
    CONSTRAINT unit_designator_uq_cons UNIQUE ("unit_designator"),
	CONSTRAINT apparatus_apparatus_type_id_fkey FOREIGN KEY (apparatus_type_id)
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