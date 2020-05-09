CREATE TABLE ${WMADATA_SCHEMA_NAME}.huc12agg
(
    fid SERIAL,
    id character varying COLLATE pg_catalog."default",
    ogc_fid integer,
    areaacres double precision,
    areasqkm double precision,
    huc12 character varying COLLATE pg_catalog."default",
    name character varying COLLATE pg_catalog."default",
    uphucs character varying COLLATE pg_catalog."default",
    the_geom geometry(MultiPolygon,4269),
    CONSTRAINT huc12agg_pkey PRIMARY KEY (fid)
)
WITH (
    OIDS = FALSE
);