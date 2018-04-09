-- Table: public."apparatus"

-- DROP TABLE public."apparatus";

CREATE TABLE public."apparatus"
(
    "id" integer NOT NULL,
    "unit_designator" character varying(15) COLLATE pg_catalog."default",
    "station_id" integer,
    "unit_type_id" integer NOT NULL,
    "is_reserve" boolean NOT NULL,
    CONSTRAINT "apparatus_pkey" PRIMARY KEY ("id"),
    CONSTRAINT unit_designator_uq_cons UNIQUE ("unit_designator")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."apparatus"
    OWNER to postgres;