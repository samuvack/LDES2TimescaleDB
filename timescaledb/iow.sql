
drop table if exists public.water_quality;

CREATE TABLE IF NOT EXISTS public.water_quality
(
    id character varying NOT NULL,
    --owner_preferred_name character varying COLLATE pg_catalog."default",
    madeBySensor text,
    generatedattime TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    batterijniveau double precision,
    temperature double precision,
    conductivity double precision
);


ALTER TABLE IF EXISTS public.water_quality OWNER to postgres;


SELECT create_hypertable('public.water_quality', 'generatedattime');
