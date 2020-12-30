CREATE TABLE ${WMADATA_SCHEMA_NAME}.nhdflowline_nonnetwork
(
    objectid SERIAL,
    comid integer,
    fdate timestamp with time zone,
    resolution character varying COLLATE pg_catalog."default",
    gnis_id character varying COLLATE pg_catalog."default",
    gnis_name character varying COLLATE pg_catalog."default",
    lengthkm double precision,
    reachcode character varying COLLATE pg_catalog."default",
    flowdir character varying COLLATE pg_catalog."default",
    wbareacomi integer,
    ftype character varying COLLATE pg_catalog."default",
    fcode integer,
    shape_length double precision,    
    the_geom geometry(MultiLineStringZM,4269) NOT NULL,
    CONSTRAINT nhdflowline_nonnetwork_pkey PRIMARY KEY (objectid)
)
WITH (
    OIDS = FALSE
);