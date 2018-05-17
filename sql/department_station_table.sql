-- Table: public.department_station

-- DROP TABLE public.department_station;

CREATE TABLE public.department_station
(
    department_id integer,
    station_id integer,
    CONSTRAINT u_cont_station_id UNIQUE (station_id),
    CONSTRAINT fk_department_id FOREIGN KEY (department_id)
        REFERENCES public.department (department_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_station_id FOREIGN KEY (station_id)
        REFERENCES public.station (station_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.department_station
    OWNER to postgres;