CREATE TABLE ${WMADATA_SCHEMA_NAME}.nhdarea
(
    objectid SERIAL,
    comid integer,
    fdate timestamp with time zone,
    resolution character varying COLLATE pg_catalog."default",
    gnis_id character varying COLLATE pg_catalog."default",
    gnis_name character varying COLLATE pg_catalog."default",
    areasqkm double precision,
    elevation double precision,
    ftype character varying COLLATE pg_catalog."default",
    fcode integer,
    shape_length double precision,
    shape_area double precision,
    onoffnet smallint,
    purpcode character varying COLLATE pg_catalog."default",
    purpdesc character varying COLLATE pg_catalog."default",
    the_geom geometry(MultiPolygon,4269) NOT NULL,
    CONSTRAINT nhdarea_pkey PRIMARY KEY (objectid)
)
WITH (
    OIDS = FALSE
);