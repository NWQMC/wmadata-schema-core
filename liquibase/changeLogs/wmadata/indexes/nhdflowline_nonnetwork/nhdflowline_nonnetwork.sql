CREATE INDEX nhdflowline_nonnetwork_comid_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_nonnetwork USING btree (comid);

CREATE INDEX nhdflowline_nonnetwork_fdate_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_nonnetwork USING btree (fdate);

CREATE INDEX nhdflowline_nonnetwork_resolution_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_nonnetwork USING btree (resolution);

CREATE INDEX nhdflowline_nonnetwork_gnis_id_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_nonnetwork USING btree (gnis_id);

CREATE INDEX nhdflowline_nonnetwork_gnis_name_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_nonnetwork USING btree (gnis_name);

CREATE INDEX nhdflowline_nonnetwork_lengthkm_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_nonnetwork USING btree (lengthkm);

CREATE INDEX nhdflowline_nonnetwork_reachcode_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_nonnetwork USING btree (reachcode);

CREATE INDEX nhdflowline_nonnetwork_flowdir_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_nonnetwork USING btree (flowdir);

CREATE INDEX nhdflowline_nonnetwork_wbareacomi_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_nonnetwork USING btree (wbareacomi);

CREATE INDEX nhdflowline_nonnetwork_ftype_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_nonnetwork USING btree (ftype);

CREATE INDEX nhdflowline_nonnetwork_fcode_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_nonnetwork USING btree (fcode);

CREATE INDEX nhdflowline_nonnetwork_shape_length_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_nonnetwork USING btree (shape_length);

CREATE INDEX nhdflowline_nonnetwork_the_geom_geom_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_nonnetwork USING gist (the_geom);