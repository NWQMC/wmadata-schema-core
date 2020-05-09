CREATE INDEX nhdwaterbody_areasqkm_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdwaterbody USING btree
    (areasqkm);

CREATE INDEX nhdwaterbody_comid_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdwaterbody USING btree
    (comid);

CREATE INDEX nhdwaterbody_elevation_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdwaterbody USING btree
    (elevation);

CREATE INDEX nhdwaterbody_fcode_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdwaterbody USING btree
    (fcode);

CREATE INDEX nhdwaterbody_fdate_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdwaterbody USING btree
    (fdate);

CREATE INDEX nhdwaterbody_ftype_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdwaterbody USING btree
    (ftype COLLATE pg_catalog."default");

CREATE INDEX nhdwaterbody_gnis_id_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdwaterbody USING btree
    (gnis_id COLLATE pg_catalog."default");

CREATE INDEX nhdwaterbody_gnis_name_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdwaterbody USING btree
    (gnis_name COLLATE pg_catalog."default");

CREATE INDEX nhdwaterbody_onoffnet_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdwaterbody USING btree
    (onoffnet);

CREATE INDEX nhdwaterbody_purpcode_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdwaterbody USING btree
    (purpcode COLLATE pg_catalog."default");

CREATE INDEX nhdwaterbody_purpdesc_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdwaterbody USING btree
    (purpdesc COLLATE pg_catalog."default");

CREATE INDEX nhdwaterbody_reachcode_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdwaterbody USING btree
    (reachcode COLLATE pg_catalog."default");

CREATE INDEX nhdwaterbody_resolution_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdwaterbody USING btree
    (resolution COLLATE pg_catalog."default");

CREATE INDEX nhdwaterbody_the_geom_geom_idx
    ON ${WMADATA_SCHEMA_NAME}.nhdwaterbody USING gist
    (the_geom);