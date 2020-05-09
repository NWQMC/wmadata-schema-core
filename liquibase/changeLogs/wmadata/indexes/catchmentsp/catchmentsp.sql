CREATE INDEX catchmentsp_areasqkm_idx
    ON ${WMADATA_SCHEMA_NAME}.catchmentsp USING btree
    (areasqkm);

CREATE INDEX catchmentsp_featureid_idx
    ON ${WMADATA_SCHEMA_NAME}.catchmentsp USING btree
    (featureid);

CREATE INDEX catchmentsp_gridcode_idx
    ON ${WMADATA_SCHEMA_NAME}.catchmentsp USING btree
    (gridcode);

CREATE INDEX catchmentsp_sourcefc_idx
    ON ${WMADATA_SCHEMA_NAME}.catchmentsp USING btree
    (sourcefc COLLATE pg_catalog."default");

CREATE INDEX catchmentsp_the_geom_geom_idx
    ON ${WMADATA_SCHEMA_NAME}.catchmentsp USING gist
    (the_geom);