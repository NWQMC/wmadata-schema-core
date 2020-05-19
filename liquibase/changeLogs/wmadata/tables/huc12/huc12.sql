CREATE TABLE ${WMADATA_SCHEMA_NAME}.huc12
(
    huc12 character varying COLLATE pg_catalog."default",
    tohuc character varying COLLATE pg_catalog."default",
    areaacres double precision,
    areasqkm double precision,
    name character varying COLLATE pg_catalog."default",
    hutype character varying COLLATE pg_catalog."default",
    humod character varying COLLATE pg_catalog."default",
    states character varying COLLATE pg_catalog."default",
    noncontrib double precision,
    the_geom geometry(Polygon,4269)
)
WITH (
    OIDS = FALSE
);