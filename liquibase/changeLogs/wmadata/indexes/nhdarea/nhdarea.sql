CREATE INDEX nhdarea_areasqkm_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdarea USING btree
    (areasqkm);

CREATE INDEX nhdarea_comid_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdarea USING btree
    (comid);

CREATE INDEX nhdarea_elevation_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdarea USING btree
    (elevation);

CREATE INDEX nhdarea_fcode_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdarea USING btree
    (fcode);

CREATE INDEX nhdarea_fdate_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdarea USING btree
    (fdate);

CREATE INDEX nhdarea_ftype_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdarea USING btree
    (ftype COLLATE pg_catalog."default");

CREATE INDEX nhdarea_gnis_id_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdarea USING btree
    (gnis_id COLLATE pg_catalog."default");

CREATE INDEX nhdarea_gnis_name_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdarea USING btree
    (gnis_name COLLATE pg_catalog."default");

CREATE INDEX nhdarea_onoffnet_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdarea USING btree
    (onoffnet);

CREATE INDEX nhdarea_purpcode_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdarea USING btree
    (purpcode COLLATE pg_catalog."default");

CREATE INDEX nhdarea_purpdesc_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdarea USING btree
    (purpdesc COLLATE pg_catalog."default");

CREATE INDEX nhdarea_resolution_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdarea USING btree
    (resolution COLLATE pg_catalog."default");

CREATE INDEX nhdarea_the_geom_geom_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdarea USING gist
    (the_geom);