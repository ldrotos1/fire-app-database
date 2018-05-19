-- Table: public."apparatus"

-- DROP TABLE public."apparatus";

CREATE TABLE public."apparatus"
(
    "apparatus_id" integer NOT NULL,
    "unit_designator" character varying(15) COLLATE pg_catalog."default",
    "station_id" integer,
    "apparatus_type_id" integer NOT NULL,
    "is_reserve" boolean NOT NULL,
    CONSTRAINT "apparatus_pkey" PRIMARY KEY ("apparatus_id"),
	CONSTRAINT fk_station FOREIGN KEY (station_id)
        REFERENCES public.station (station_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
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