
drop table if exists public.water_quality;

CREATE TABLE IF NOT EXISTS public.water_quality
(
    id character varying NOT NULL,
    "batterijniveau_value" double precision, 
    "batterijniveau_date" text,
    "batterijniveau_sensor" character varying,
    "temperatuur_value" double precision,
    "temperatuur_date" text,
    "temperatuur_sensor" character varying,
    "conductiviteit_value"  double precision,
    "conductiviteit_date" text,
    "conductiviteit_sensor"  character varying
);


ALTER TABLE IF EXISTS public.water_quality OWNER to postgres;


SELECT create_hypertable('public.water_quality', 'generatedattime');
