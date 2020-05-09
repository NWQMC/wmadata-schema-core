CREATE TABLE ${WMADATA_SCHEMA_NAME}.catchmentsp
(
    objectid SERIAL,
    gridcode integer,
    featureid integer,
    sourcefc character varying COLLATE pg_catalog."default",
    areasqkm double precision,
    shape_length double precision,
    shape_area double precision,
    the_geom geometry(MultiPolygon,4269) NOT NULL,
    CONSTRAINT catchmentsp_pkey PRIMARY KEY (objectid)
)
WITH (
    OIDS = FALSE
)