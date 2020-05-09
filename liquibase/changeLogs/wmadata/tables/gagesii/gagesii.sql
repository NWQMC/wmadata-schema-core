CREATE TABLE ${WMADATA_SCHEMA_NAME}.gagesii
(
    fid SERIAL,
    id character varying COLLATE pg_catalog."default",
    staid character varying COLLATE pg_catalog."default",
    staname character varying COLLATE pg_catalog."default",
    class character varying COLLATE pg_catalog."default",
    aggecoregi character varying COLLATE pg_catalog."default",
    drain_sqkm double precision,
    huc02 character varying COLLATE pg_catalog."default",
    lat_gage double precision,
    lng_gage double precision,
    state character varying COLLATE pg_catalog."default",
    hcdn_2009 character varying COLLATE pg_catalog."default",
    active09 character varying COLLATE pg_catalog."default",
    flyrs1900 integer,
    flyrs1950 integer,
    flyrs1990 integer,
    the_geom geometry(MultiPoint,4269),
    CONSTRAINT gagesii_pkey PRIMARY KEY (fid)
)
WITH (
    OIDS = FALSE
);