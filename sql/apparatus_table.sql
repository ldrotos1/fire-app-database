-- Table: public."APPARATUS"

-- DROP TABLE public."APPARATUS";

CREATE TABLE public."APPARATUS"
(
    "ID" integer NOT NULL,
    "UNIT_DESIGNATOR" character varying(15) COLLATE pg_catalog."default",
    "STATION_ID" integer,
    "UNIT_TYPE_ID" integer NOT NULL,
    "IS_RESERVE" boolean NOT NULL,
    CONSTRAINT "APPARATUS_pkey" PRIMARY KEY ("ID"),
    CONSTRAINT unit_designator_uq_cons UNIQUE ("UNIT_DESIGNATOR")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."APPARATUS"
    OWNER to postgres;