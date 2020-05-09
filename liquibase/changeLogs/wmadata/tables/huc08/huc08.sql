CREATE TABLE ${WMADATA_SCHEMA_NAME}.huc08
(
    fid SERIAL,
    id character varying COLLATE pg_catalog."default",
    ogc_fid integer,
    tnmid character varying COLLATE pg_catalog."default",
    metasource character varying COLLATE pg_catalog."default",
    sourcedata character varying COLLATE pg_catalog."default",
    sourceorig character varying COLLATE pg_catalog."default",
    sourcefeat character varying COLLATE pg_catalog."default",
    loaddate date,
    gnis_id character varying COLLATE pg_catalog."default",
    areaacres double precision,
    areasqkm double precision,
    states character varying COLLATE pg_catalog."default",
    huc8 character varying COLLATE pg_catalog."default",
    name character varying COLLATE pg_catalog."default",
    shape_leng double precision,
    shape_area double precision,
    the_geom geometry(MultiPolygon,4269),
    CONSTRAINT huc08_pkey PRIMARY KEY (fid)
)
WITH (
    OIDS = FALSE
);