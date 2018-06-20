-- Table: public."area_of_interest_boundary"

-- DROP TABLE public."area_of_interest_boundary";

CREATE TABLE public."area_of_interest_boundary"
(
	"id" integer NOT NULL,
    "boundary" geometry(Polygon,4326),
    CONSTRAINT "aoi_pkey" PRIMARY KEY ("id")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."area_of_interest_boundary"
    OWNER to postgres;