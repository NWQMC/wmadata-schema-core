CREATE INDEX nhdflowline_network_comid_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (comid);

CREATE INDEX nhdflowline_network_fdate_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (fdate);

CREATE INDEX nhdflowline_network_resolution_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (resolution);

CREATE INDEX nhdflowline_network_gnis_id_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (gnis_id);

CREATE INDEX nhdflowline_network_gnis_name_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (gnis_name);

CREATE INDEX nhdflowline_network_lengthkm_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (lengthkm);

CREATE INDEX nhdflowline_network_reachcode_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (reachcode);

CREATE INDEX nhdflowline_network_flowdir_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (flowdir);

CREATE INDEX nhdflowline_network_wbareacomi_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (wbareacomi);

CREATE INDEX nhdflowline_network_ftype_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (ftype);

CREATE INDEX nhdflowline_network_fcode_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (fcode);

CREATE INDEX nhdflowline_network_shape_length_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (shape_length);

CREATE INDEX nhdflowline_network_streamleve_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (streamleve);

CREATE INDEX nhdflowline_network_streamorde_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (streamorde);

CREATE INDEX nhdflowline_network_streamcalc_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (streamcalc);

CREATE INDEX nhdflowline_network_fromnode_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (fromnode);

CREATE INDEX nhdflowline_network_tonode_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (tonode);

CREATE INDEX nhdflowline_network_hydroseq_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (hydroseq);

CREATE INDEX nhdflowline_network_levelpathi_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (levelpathi);

CREATE INDEX nhdflowline_network_pathlength_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (pathlength);

CREATE INDEX nhdflowline_network_terminalpa_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (terminalpa);

CREATE INDEX nhdflowline_network_arbolatesu_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (arbolatesu);

CREATE INDEX nhdflowline_network_divergence_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (divergence);

CREATE INDEX nhdflowline_network_startflag_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (startflag);

CREATE INDEX nhdflowline_network_terminalfl_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (terminalfl);

CREATE INDEX nhdflowline_network_dnlevel_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (dnlevel);

CREATE INDEX nhdflowline_network_uplevelpat_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (uplevelpat);

CREATE INDEX nhdflowline_network_uphydroseq_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (uphydroseq);

CREATE INDEX nhdflowline_network_dnlevelpat_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (dnlevelpat);

CREATE INDEX nhdflowline_network_dnminorhyd_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (dnminorhyd);

CREATE INDEX nhdflowline_network_dndraincou_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (dndraincou);

CREATE INDEX nhdflowline_network_dnhydroseq_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (dnhydroseq);

CREATE INDEX nhdflowline_network_frommeas_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (frommeas);

CREATE INDEX nhdflowline_network_tomeas_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (tomeas);

CREATE INDEX nhdflowline_network_rtndiv_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (rtndiv);

CREATE INDEX nhdflowline_network_vpuin_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (vpuin);

CREATE INDEX nhdflowline_network_vpuout_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (vpuout);

CREATE INDEX nhdflowline_network_areasqkm_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (areasqkm);

CREATE INDEX nhdflowline_network_totdasqkm_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (totdasqkm);

CREATE INDEX nhdflowline_network_divdasqkm_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (divdasqkm);

CREATE INDEX nhdflowline_network_tidal_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (tidal);

CREATE INDEX nhdflowline_network_totma_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (totma);

CREATE INDEX nhdflowline_network_wbareatype_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (wbareatype);

CREATE INDEX nhdflowline_network_pathtimema_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (pathtimema);

CREATE INDEX nhdflowline_network_hwnodesqkm_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (hwnodesqkm);

CREATE INDEX nhdflowline_network_maxelevraw_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (maxelevraw);

CREATE INDEX nhdflowline_network_minelevraw_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (minelevraw);

CREATE INDEX nhdflowline_network_maxelevsmo_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (maxelevsmo);

CREATE INDEX nhdflowline_network_minelevsmo_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (minelevsmo);

CREATE INDEX nhdflowline_network_slope_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (slope);

CREATE INDEX nhdflowline_network_elevfixed_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (elevfixed);

CREATE INDEX nhdflowline_network_hwtype_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (hwtype);

CREATE INDEX nhdflowline_network_slopelenkm_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (slopelenkm);

CREATE INDEX nhdflowline_network_qa_ma_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qa_ma);

CREATE INDEX nhdflowline_network_va_ma_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (va_ma);

CREATE INDEX nhdflowline_network_qc_ma_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qc_ma);

CREATE INDEX nhdflowline_network_vc_ma_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (vc_ma);

CREATE INDEX nhdflowline_network_qe_ma_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qe_ma);

CREATE INDEX nhdflowline_network_ve_ma_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (ve_ma);

CREATE INDEX nhdflowline_network_qa_01_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qa_01);

CREATE INDEX nhdflowline_network_va_01_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (va_01);

CREATE INDEX nhdflowline_network_qc_01_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qc_01);

CREATE INDEX nhdflowline_network_vc_01_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (vc_01);

CREATE INDEX nhdflowline_network_qe_01_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qe_01);

CREATE INDEX nhdflowline_network_ve_01_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (ve_01);

CREATE INDEX nhdflowline_network_qa_02_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qa_02);

CREATE INDEX nhdflowline_network_va_02_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (va_02);

CREATE INDEX nhdflowline_network_qc_02_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qc_02);

CREATE INDEX nhdflowline_network_vc_02_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (vc_02);

CREATE INDEX nhdflowline_network_qe_02_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qe_02);

CREATE INDEX nhdflowline_network_ve_02_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (ve_02);

CREATE INDEX nhdflowline_network_qa_03_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qa_03);

CREATE INDEX nhdflowline_network_va_03_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (va_03);

CREATE INDEX nhdflowline_network_qc_03_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qc_03);

CREATE INDEX nhdflowline_network_vc_03_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (vc_03);

CREATE INDEX nhdflowline_network_qe_03_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qe_03);

CREATE INDEX nhdflowline_network_ve_03_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (ve_03);

CREATE INDEX nhdflowline_network_qa_04_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qa_04);

CREATE INDEX nhdflowline_network_va_04_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (va_04);

CREATE INDEX nhdflowline_network_qc_04_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qc_04);

CREATE INDEX nhdflowline_network_vc_04_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (vc_04);

CREATE INDEX nhdflowline_network_qe_04_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qe_04);

CREATE INDEX nhdflowline_network_ve_04_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (ve_04);

CREATE INDEX nhdflowline_network_qa_05_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qa_05);

CREATE INDEX nhdflowline_network_va_05_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (va_05);

CREATE INDEX nhdflowline_network_qc_05_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qc_05);

CREATE INDEX nhdflowline_network_vc_05_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (vc_05);

CREATE INDEX nhdflowline_network_qe_05_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qe_05);

CREATE INDEX nhdflowline_network_ve_05_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (ve_05);

CREATE INDEX nhdflowline_network_qa_06_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qa_06);

CREATE INDEX nhdflowline_network_va_06_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (va_06);

CREATE INDEX nhdflowline_network_qc_06_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qc_06);

CREATE INDEX nhdflowline_network_vc_06_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (vc_06);

CREATE INDEX nhdflowline_network_qe_06_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qe_06);

CREATE INDEX nhdflowline_network_ve_06_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (ve_06);

CREATE INDEX nhdflowline_network_qa_07_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qa_07);

CREATE INDEX nhdflowline_network_va_07_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (va_07);

CREATE INDEX nhdflowline_network_qc_07_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qc_07);

CREATE INDEX nhdflowline_network_vc_07_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (vc_07);

CREATE INDEX nhdflowline_network_qe_07_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qe_07);

CREATE INDEX nhdflowline_network_ve_07_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (ve_07);

CREATE INDEX nhdflowline_network_qa_08_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qa_08);

CREATE INDEX nhdflowline_network_va_08_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (va_08);

CREATE INDEX nhdflowline_network_qc_08_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qc_08);

CREATE INDEX nhdflowline_network_vc_08_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (vc_08);

CREATE INDEX nhdflowline_network_qe_08_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qe_08);

CREATE INDEX nhdflowline_network_ve_08_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (ve_08);

CREATE INDEX nhdflowline_network_qa_09_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qa_09);

CREATE INDEX nhdflowline_network_va_09_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (va_09);

CREATE INDEX nhdflowline_network_qc_09_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qc_09);

CREATE INDEX nhdflowline_network_vc_09_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (vc_09);

CREATE INDEX nhdflowline_network_qe_09_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qe_09);

CREATE INDEX nhdflowline_network_ve_09_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (ve_09);

CREATE INDEX nhdflowline_network_qa_10_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qa_10);

CREATE INDEX nhdflowline_network_va_10_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (va_10);

CREATE INDEX nhdflowline_network_qc_10_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qc_10);

CREATE INDEX nhdflowline_network_vc_10_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (vc_10);

CREATE INDEX nhdflowline_network_qe_10_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qe_10);

CREATE INDEX nhdflowline_network_ve_10_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (ve_10);

CREATE INDEX nhdflowline_network_qa_11_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qa_11);

CREATE INDEX nhdflowline_network_va_11_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (va_11);

CREATE INDEX nhdflowline_network_qc_11_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qc_11);

CREATE INDEX nhdflowline_network_vc_11_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (vc_11);

CREATE INDEX nhdflowline_network_qe_11_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qe_11);

CREATE INDEX nhdflowline_network_ve_11_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (ve_11);

CREATE INDEX nhdflowline_network_qa_12_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qa_12);

CREATE INDEX nhdflowline_network_va_12_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (va_12);

CREATE INDEX nhdflowline_network_qc_12_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qc_12);

CREATE INDEX nhdflowline_network_vc_12_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (vc_12);

CREATE INDEX nhdflowline_network_qe_12_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (qe_12);

CREATE INDEX nhdflowline_network_ve_12_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (ve_12);

CREATE INDEX nhdflowline_network_lakefract_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (lakefract);

CREATE INDEX nhdflowline_network_surfarea_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (surfarea);

CREATE INDEX nhdflowline_network_rareahload_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (rareahload);

CREATE INDEX nhdflowline_network_rpuid_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (rpuid);

CREATE INDEX nhdflowline_network_vpuid_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (vpuid);

CREATE INDEX nhdflowline_network_enabled_idx
 ON ${WMADATA_SCHEMA_NAME}.nhdflowline_network USING btree (enabled);
