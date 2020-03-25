
if exists (select 1 from information_schema.tables 
where table_schema='mangaauxdb' and table_name='maskbit')
begin drop external table mangaauxdb.[maskbit] end

GO

CREATE EXTERNAL TABLE mangaauxdb.[maskbit] (
   [pk] INTEGER NOT NULL -- integer
,  [flag] NVARCHAR(MAX) NULL -- text
,  [bit] INTEGER NULL -- integer
,  [label] NVARCHAR(MAX) NULL -- text
,  [description] NVARCHAR(MAX) NULL -- text
)
with (location='manga.mangaauxdb.[maskbit]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='binid')
begin drop external table mangadapdb.[binid] end

GO

CREATE EXTERNAL TABLE mangadapdb.[binid] (
   [pk] INTEGER NOT NULL -- integer
,  [id] INTEGER NULL -- integer
)
with (location='manga.mangadapdb.[binid]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='binmode')
begin drop external table mangadapdb.[binmode] end

GO

CREATE EXTERNAL TABLE mangadapdb.[binmode] (
   [pk] INTEGER NOT NULL -- integer
,  [name] NVARCHAR(MAX) NULL -- text
)
with (location='manga.mangadapdb.[binmode]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='bintype')
begin drop external table mangadapdb.[bintype] end

GO

CREATE EXTERNAL TABLE mangadapdb.[bintype] (
   [pk] INTEGER NOT NULL -- integer
,  [name] NVARCHAR(MAX) NULL -- text
)
with (location='manga.mangadapdb.[bintype]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='cleanspaxelprop')
begin drop external table mangadapdb.[cleanspaxelprop] end

GO

CREATE EXTERNAL TABLE mangadapdb.[cleanspaxelprop] (
   [pk] BIGINT NULL -- bigint
,  [file_pk] INTEGER NULL -- integer
,  [spaxel_index] INTEGER NULL -- integer
,  [binid_pk] INTEGER NULL -- integer
,  [emline_gflux_oiid_3728] REAL NULL -- real
,  [emline_gflux_hb_4862] REAL NULL -- real
,  [emline_gflux_oiii_4960] REAL NULL -- real
,  [emline_gflux_oiii_5008] REAL NULL -- real
,  [emline_gflux_oi_6302] REAL NULL -- real
,  [emline_gflux_oi_6365] REAL NULL -- real
,  [emline_gflux_nii_6549] REAL NULL -- real
,  [emline_gflux_ha_6564] REAL NULL -- real
,  [emline_gflux_nii_6585] REAL NULL -- real
,  [emline_gflux_sii_6718] REAL NULL -- real
,  [emline_gflux_sii_6732] REAL NULL -- real
,  [emline_gflux_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gflux_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gflux_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gflux_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gflux_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gflux_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gflux_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_gflux_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gflux_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gflux_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gflux_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gflux_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gflux_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gflux_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gflux_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gflux_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gflux_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gvel_oiid_3728] REAL NULL -- real
,  [emline_gvel_hb_4862] REAL NULL -- real
,  [emline_gvel_oiii_4960] REAL NULL -- real
,  [emline_gvel_oiii_5008] REAL NULL -- real
,  [emline_gvel_oi_6302] REAL NULL -- real
,  [emline_gvel_oi_6365] REAL NULL -- real
,  [emline_gvel_nii_6549] REAL NULL -- real
,  [emline_gvel_ha_6564] REAL NULL -- real
,  [emline_gvel_nii_6585] REAL NULL -- real
,  [emline_gvel_sii_6718] REAL NULL -- real
,  [emline_gvel_sii_6732] REAL NULL -- real
,  [emline_gvel_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gvel_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gvel_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gvel_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gvel_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gvel_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gvel_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_gvel_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gvel_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gvel_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gvel_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gvel_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gvel_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gvel_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gvel_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gvel_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gvel_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gsigma_oiid_3728] REAL NULL -- real
,  [emline_gsigma_hb_4862] REAL NULL -- real
,  [emline_gsigma_oiii_4960] REAL NULL -- real
,  [emline_gsigma_oiii_5008] REAL NULL -- real
,  [emline_gsigma_oi_6302] REAL NULL -- real
,  [emline_gsigma_oi_6365] REAL NULL -- real
,  [emline_gsigma_nii_6549] REAL NULL -- real
,  [emline_gsigma_ha_6564] REAL NULL -- real
,  [emline_gsigma_nii_6585] REAL NULL -- real
,  [emline_gsigma_sii_6718] REAL NULL -- real
,  [emline_gsigma_sii_6732] REAL NULL -- real
,  [emline_gsigma_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gsigma_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_gsigma_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gsigma_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gsigma_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gsigma_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gsigma_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gsigma_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gsigma_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gsigma_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gsigma_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gsigma_mask_sii_6732] INTEGER NULL -- integer
,  [emline_instsigma_oiid_3728] REAL NULL -- real
,  [emline_instsigma_hb_4862] REAL NULL -- real
,  [emline_instsigma_oiii_4960] REAL NULL -- real
,  [emline_instsigma_oiii_5008] REAL NULL -- real
,  [emline_instsigma_oi_6302] REAL NULL -- real
,  [emline_instsigma_oi_6365] REAL NULL -- real
,  [emline_instsigma_nii_6549] REAL NULL -- real
,  [emline_instsigma_ha_6564] REAL NULL -- real
,  [emline_instsigma_nii_6585] REAL NULL -- real
,  [emline_instsigma_sii_6718] REAL NULL -- real
,  [emline_instsigma_sii_6732] REAL NULL -- real
,  [emline_ew_oiid_3728] REAL NULL -- real
,  [emline_ew_hb_4862] FLOAT NULL -- double precision
,  [emline_ew_oiii_4960] REAL NULL -- real
,  [emline_ew_oiii_5008] FLOAT NULL -- double precision
,  [emline_ew_oi_6302] FLOAT NULL -- double precision
,  [emline_ew_oi_6365] FLOAT NULL -- double precision
,  [emline_ew_nii_6549] FLOAT NULL -- double precision
,  [emline_ew_ha_6564] FLOAT NULL -- double precision
,  [emline_ew_nii_6585] FLOAT NULL -- double precision
,  [emline_ew_sii_6718] REAL NULL -- real
,  [emline_ew_sii_6732] REAL NULL -- real
,  [emline_ew_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_ew_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_ew_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_ew_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_ew_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_ew_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_ew_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_ew_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_ew_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_ew_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_ew_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_ew_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_ew_mask_hb_4862] INTEGER NULL -- integer
,  [emline_ew_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_ew_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_ew_mask_oi_6302] INTEGER NULL -- integer
,  [emline_ew_mask_oi_6365] INTEGER NULL -- integer
,  [emline_ew_mask_nii_6549] INTEGER NULL -- integer
,  [emline_ew_mask_ha_6564] INTEGER NULL -- integer
,  [emline_ew_mask_nii_6585] INTEGER NULL -- integer
,  [emline_ew_mask_sii_6718] INTEGER NULL -- integer
,  [emline_ew_mask_sii_6732] INTEGER NULL -- integer
,  [emline_sflux_oiid_3728] REAL NULL -- real
,  [emline_sflux_hb_4862] REAL NULL -- real
,  [emline_sflux_oiii_4960] REAL NULL -- real
,  [emline_sflux_oiii_5008] REAL NULL -- real
,  [emline_sflux_oi_6302] REAL NULL -- real
,  [emline_sflux_oi_6365] REAL NULL -- real
,  [emline_sflux_nii_6549] REAL NULL -- real
,  [emline_sflux_ha_6564] REAL NULL -- real
,  [emline_sflux_nii_6585] REAL NULL -- real
,  [emline_sflux_sii_6718] REAL NULL -- real
,  [emline_sflux_sii_6732] REAL NULL -- real
,  [emline_sflux_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_sflux_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_sflux_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_sflux_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_sflux_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_sflux_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_sflux_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_sflux_mask_hb_4862] INTEGER NULL -- integer
,  [emline_sflux_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_sflux_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_sflux_mask_oi_6302] INTEGER NULL -- integer
,  [emline_sflux_mask_oi_6365] INTEGER NULL -- integer
,  [emline_sflux_mask_nii_6549] INTEGER NULL -- integer
,  [emline_sflux_mask_ha_6564] INTEGER NULL -- integer
,  [emline_sflux_mask_nii_6585] INTEGER NULL -- integer
,  [emline_sflux_mask_sii_6718] INTEGER NULL -- integer
,  [emline_sflux_mask_sii_6732] INTEGER NULL -- integer
,  [stellar_vel] REAL NULL -- real
,  [stellar_vel_ivar] FLOAT NULL -- double precision
,  [stellar_vel_mask] INTEGER NULL -- integer
,  [stellar_sigma] REAL NULL -- real
,  [stellar_sigma_ivar] FLOAT NULL -- double precision
,  [stellar_sigma_mask] INTEGER NULL -- integer
,  [specindex_d4000] REAL NULL -- real
,  [specindex_caii0p39] REAL NULL -- real
,  [specindex_hdeltaa] REAL NULL -- real
,  [specindex_cn1] REAL NULL -- real
,  [specindex_cn2] REAL NULL -- real
,  [specindex_ca4227] REAL NULL -- real
,  [specindex_hgammaa] REAL NULL -- real
,  [specindex_fe4668] REAL NULL -- real
,  [specindex_hb] REAL NULL -- real
,  [specindex_mgb] REAL NULL -- real
,  [specindex_fe5270] REAL NULL -- real
,  [specindex_fe5335] REAL NULL -- real
,  [specindex_fe5406] REAL NULL -- real
,  [specindex_nad] REAL NULL -- real
,  [specindex_tio1] REAL NULL -- real
,  [specindex_tio2] REAL NULL -- real
,  [specindex_nai0p82] REAL NULL -- real
,  [specindex_caii0p86a] REAL NULL -- real
,  [specindex_caii0p86b] REAL NULL -- real
,  [specindex_caii0p86c] REAL NULL -- real
,  [specindex_mgi0p88] REAL NULL -- real
,  [specindex_tio0p89] REAL NULL -- real
,  [specindex_feh0p99] REAL NULL -- real
,  [specindex_ivar_d4000] FLOAT NULL -- double precision
,  [specindex_ivar_caii0p39] FLOAT NULL -- double precision
,  [specindex_ivar_hdeltaa] FLOAT NULL -- double precision
,  [specindex_ivar_cn1] FLOAT NULL -- double precision
,  [specindex_ivar_cn2] FLOAT NULL -- double precision
,  [specindex_ivar_ca4227] FLOAT NULL -- double precision
,  [specindex_ivar_hgammaa] FLOAT NULL -- double precision
,  [specindex_ivar_fe4668] FLOAT NULL -- double precision
,  [specindex_ivar_hb] FLOAT NULL -- double precision
,  [specindex_ivar_mgb] FLOAT NULL -- double precision
,  [specindex_ivar_fe5270] FLOAT NULL -- double precision
,  [specindex_ivar_fe5335] FLOAT NULL -- double precision
,  [specindex_ivar_fe5406] FLOAT NULL -- double precision
,  [specindex_ivar_nad] FLOAT NULL -- double precision
,  [specindex_ivar_tio1] FLOAT NULL -- double precision
,  [specindex_ivar_tio2] FLOAT NULL -- double precision
,  [specindex_ivar_nai0p82] FLOAT NULL -- double precision
,  [specindex_ivar_caii0p86a] FLOAT NULL -- double precision
,  [specindex_ivar_caii0p86b] FLOAT NULL -- double precision
,  [specindex_ivar_caii0p86c] FLOAT NULL -- double precision
,  [specindex_ivar_mgi0p88] FLOAT NULL -- double precision
,  [specindex_ivar_tio0p89] FLOAT NULL -- double precision
,  [specindex_ivar_feh0p99] FLOAT NULL -- double precision
,  [specindex_mask_d4000] INTEGER NULL -- integer
,  [specindex_mask_caii0p39] INTEGER NULL -- integer
,  [specindex_mask_hdeltaa] INTEGER NULL -- integer
,  [specindex_mask_cn1] INTEGER NULL -- integer
,  [specindex_mask_cn2] INTEGER NULL -- integer
,  [specindex_mask_ca4227] INTEGER NULL -- integer
,  [specindex_mask_hgammaa] INTEGER NULL -- integer
,  [specindex_mask_fe4668] INTEGER NULL -- integer
,  [specindex_mask_hb] INTEGER NULL -- integer
,  [specindex_mask_mgb] INTEGER NULL -- integer
,  [specindex_mask_fe5270] INTEGER NULL -- integer
,  [specindex_mask_fe5335] INTEGER NULL -- integer
,  [specindex_mask_fe5406] INTEGER NULL -- integer
,  [specindex_mask_nad] INTEGER NULL -- integer
,  [specindex_mask_tio1] INTEGER NULL -- integer
,  [specindex_mask_tio2] INTEGER NULL -- integer
,  [specindex_mask_nai0p82] INTEGER NULL -- integer
,  [specindex_mask_caii0p86a] INTEGER NULL -- integer
,  [specindex_mask_caii0p86b] INTEGER NULL -- integer
,  [specindex_mask_caii0p86c] INTEGER NULL -- integer
,  [specindex_mask_mgi0p88] INTEGER NULL -- integer
,  [specindex_mask_tio0p89] INTEGER NULL -- integer
,  [specindex_mask_feh0p99] INTEGER NULL -- integer
,  [binid] INTEGER NULL -- integer
,  [x] INTEGER NULL -- integer
,  [y] INTEGER NULL -- integer
)
with (location='manga.mangadapdb.[cleanspaxelprop]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='cleanspaxelprop5')
begin drop external table mangadapdb.[cleanspaxelprop5] end

GO

CREATE EXTERNAL TABLE mangadapdb.[cleanspaxelprop5] (
   [pk] BIGINT NULL -- bigint
,  [file_pk] INTEGER NULL -- integer
,  [spaxel_index] INTEGER NULL -- integer
,  [binid_pk] INTEGER NULL -- integer
,  [spx_skycoo_on_sky_x] REAL NULL -- real
,  [spx_skycoo_on_sky_y] REAL NULL -- real
,  [spx_ellcoo_elliptical_radius] REAL NULL -- real
,  [spx_ellcoo_elliptical_azimuth] REAL NULL -- real
,  [spx_mflux] REAL NULL -- real
,  [spx_mflux_ivar] FLOAT NULL -- double precision
,  [spx_snr] REAL NULL -- real
,  [binid] INTEGER NULL -- integer
,  [bin_lwskycoo_lum_weighted_on_sky_x] REAL NULL -- real
,  [bin_lwskycoo_lum_weighted_on_sky_y] REAL NULL -- real
,  [bin_lwellcoo_lum_weighted_elliptical_radius] REAL NULL -- real
,  [bin_lwellcoo_lum_weighted_elliptical_azimuth] REAL NULL -- real
,  [bin_area] REAL NULL -- real
,  [bin_farea] REAL NULL -- real
,  [bin_mflux] REAL NULL -- real
,  [bin_mflux_ivar] FLOAT NULL -- double precision
,  [bin_mflux_mask] INTEGER NULL -- integer
,  [bin_snr] REAL NULL -- real
,  [stellar_vel] REAL NULL -- real
,  [stellar_vel_ivar] FLOAT NULL -- double precision
,  [stellar_vel_mask] INTEGER NULL -- integer
,  [stellar_sigma] REAL NULL -- real
,  [stellar_sigma_ivar] FLOAT NULL -- double precision
,  [stellar_sigma_mask] INTEGER NULL -- integer
,  [stellar_sigmacorr] REAL NULL -- real
,  [stellar_cont_fresid_68th_percentile] REAL NULL -- real
,  [stellar_cont_fresid_99th_percentile] REAL NULL -- real
,  [stellar_cont_rchi2] REAL NULL -- real
,  [emline_sflux_oiid_3728] REAL NULL -- real
,  [emline_sflux_hb_4862] REAL NULL -- real
,  [emline_sflux_oiii_4960] REAL NULL -- real
,  [emline_sflux_oiii_5008] REAL NULL -- real
,  [emline_sflux_oi_6302] REAL NULL -- real
,  [emline_sflux_oi_6365] REAL NULL -- real
,  [emline_sflux_nii_6549] REAL NULL -- real
,  [emline_sflux_ha_6564] REAL NULL -- real
,  [emline_sflux_nii_6585] REAL NULL -- real
,  [emline_sflux_sii_6718] REAL NULL -- real
,  [emline_sflux_sii_6732] REAL NULL -- real
,  [emline_sflux_oii_3727] REAL NULL -- real
,  [emline_sflux_oii_3729] REAL NULL -- real
,  [emline_sflux_heps_3971] REAL NULL -- real
,  [emline_sflux_hdel_4102] REAL NULL -- real
,  [emline_sflux_hgam_4341] REAL NULL -- real
,  [emline_sflux_heii_4687] REAL NULL -- real
,  [emline_sflux_hei_5877] REAL NULL -- real
,  [emline_sflux_siii_8831] REAL NULL -- real
,  [emline_sflux_siii_9071] REAL NULL -- real
,  [emline_sflux_siii_9533] REAL NULL -- real
,  [emline_sflux_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_sflux_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_sflux_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_sflux_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_sflux_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_sflux_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_sflux_ivar_siii_8831] FLOAT NULL -- double precision
,  [emline_sflux_ivar_siii_9071] FLOAT NULL -- double precision
,  [emline_sflux_ivar_siii_9533] FLOAT NULL -- double precision
,  [emline_sflux_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_sflux_mask_hb_4862] INTEGER NULL -- integer
,  [emline_sflux_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_sflux_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_sflux_mask_oi_6302] INTEGER NULL -- integer
,  [emline_sflux_mask_oi_6365] INTEGER NULL -- integer
,  [emline_sflux_mask_nii_6549] INTEGER NULL -- integer
,  [emline_sflux_mask_ha_6564] INTEGER NULL -- integer
,  [emline_sflux_mask_nii_6585] INTEGER NULL -- integer
,  [emline_sflux_mask_sii_6718] INTEGER NULL -- integer
,  [emline_sflux_mask_sii_6732] INTEGER NULL -- integer
,  [emline_sflux_mask_oii_3727] INTEGER NULL -- integer
,  [emline_sflux_mask_oii_3729] INTEGER NULL -- integer
,  [emline_sflux_mask_heps_3971] INTEGER NULL -- integer
,  [emline_sflux_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_sflux_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_sflux_mask_heii_4687] INTEGER NULL -- integer
,  [emline_sflux_mask_hei_5877] INTEGER NULL -- integer
,  [emline_sflux_mask_siii_8831] INTEGER NULL -- integer
,  [emline_sflux_mask_siii_9071] INTEGER NULL -- integer
,  [emline_sflux_mask_siii_9533] INTEGER NULL -- integer
,  [emline_sew_oiid_3728] FLOAT NULL -- double precision
,  [emline_sew_hb_4862] FLOAT NULL -- double precision
,  [emline_sew_oiii_4960] FLOAT NULL -- double precision
,  [emline_sew_oiii_5008] FLOAT NULL -- double precision
,  [emline_sew_oi_6302] FLOAT NULL -- double precision
,  [emline_sew_oi_6365] FLOAT NULL -- double precision
,  [emline_sew_nii_6549] FLOAT NULL -- double precision
,  [emline_sew_ha_6564] FLOAT NULL -- double precision
,  [emline_sew_nii_6585] FLOAT NULL -- double precision
,  [emline_sew_sii_6718] FLOAT NULL -- double precision
,  [emline_sew_sii_6732] FLOAT NULL -- double precision
,  [emline_sew_oii_3727] FLOAT NULL -- double precision
,  [emline_sew_oii_3729] FLOAT NULL -- double precision
,  [emline_sew_heps_3971] FLOAT NULL -- double precision
,  [emline_sew_hdel_4102] FLOAT NULL -- double precision
,  [emline_sew_hgam_4341] FLOAT NULL -- double precision
,  [emline_sew_heii_4687] FLOAT NULL -- double precision
,  [emline_sew_hei_5877] FLOAT NULL -- double precision
,  [emline_sew_siii_8831] FLOAT NULL -- double precision
,  [emline_sew_siii_9071] FLOAT NULL -- double precision
,  [emline_sew_siii_9533] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_sew_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_sew_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_sew_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_sew_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_sew_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_sew_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_sew_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_sew_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_sew_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_sew_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_sew_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_sew_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_sew_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_sew_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_sew_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_sew_ivar_siii_8831] FLOAT NULL -- double precision
,  [emline_sew_ivar_siii_9071] FLOAT NULL -- double precision
,  [emline_sew_ivar_siii_9533] FLOAT NULL -- double precision
,  [emline_sew_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_sew_mask_hb_4862] INTEGER NULL -- integer
,  [emline_sew_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_sew_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_sew_mask_oi_6302] INTEGER NULL -- integer
,  [emline_sew_mask_oi_6365] INTEGER NULL -- integer
,  [emline_sew_mask_nii_6549] INTEGER NULL -- integer
,  [emline_sew_mask_ha_6564] INTEGER NULL -- integer
,  [emline_sew_mask_nii_6585] INTEGER NULL -- integer
,  [emline_sew_mask_sii_6718] INTEGER NULL -- integer
,  [emline_sew_mask_sii_6732] INTEGER NULL -- integer
,  [emline_sew_mask_oii_3727] INTEGER NULL -- integer
,  [emline_sew_mask_oii_3729] INTEGER NULL -- integer
,  [emline_sew_mask_heps_3971] INTEGER NULL -- integer
,  [emline_sew_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_sew_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_sew_mask_heii_4687] INTEGER NULL -- integer
,  [emline_sew_mask_hei_5877] INTEGER NULL -- integer
,  [emline_sew_mask_siii_8831] INTEGER NULL -- integer
,  [emline_sew_mask_siii_9071] INTEGER NULL -- integer
,  [emline_sew_mask_siii_9533] INTEGER NULL -- integer
,  [emline_gflux_oiid_3728] REAL NULL -- real
,  [emline_gflux_hb_4862] REAL NULL -- real
,  [emline_gflux_oiii_4960] REAL NULL -- real
,  [emline_gflux_oiii_5008] FLOAT NULL -- double precision
,  [emline_gflux_oi_6302] REAL NULL -- real
,  [emline_gflux_oi_6365] REAL NULL -- real
,  [emline_gflux_nii_6549] REAL NULL -- real
,  [emline_gflux_ha_6564] FLOAT NULL -- double precision
,  [emline_gflux_nii_6585] FLOAT NULL -- double precision
,  [emline_gflux_sii_6718] REAL NULL -- real
,  [emline_gflux_sii_6732] FLOAT NULL -- double precision
,  [emline_gflux_oii_3727] FLOAT NULL -- double precision
,  [emline_gflux_oii_3729] REAL NULL -- real
,  [emline_gflux_heps_3971] REAL NULL -- real
,  [emline_gflux_hdel_4102] REAL NULL -- real
,  [emline_gflux_hgam_4341] REAL NULL -- real
,  [emline_gflux_heii_4687] REAL NULL -- real
,  [emline_gflux_hei_5877] REAL NULL -- real
,  [emline_gflux_siii_8831] REAL NULL -- real
,  [emline_gflux_siii_9071] REAL NULL -- real
,  [emline_gflux_siii_9533] REAL NULL -- real
,  [emline_gflux_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gflux_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gflux_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gflux_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gflux_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gflux_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gflux_ivar_siii_8831] FLOAT NULL -- double precision
,  [emline_gflux_ivar_siii_9071] FLOAT NULL -- double precision
,  [emline_gflux_ivar_siii_9533] FLOAT NULL -- double precision
,  [emline_gflux_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_gflux_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gflux_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gflux_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gflux_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gflux_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gflux_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gflux_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gflux_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gflux_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gflux_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gflux_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gflux_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gflux_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gflux_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gflux_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gflux_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gflux_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gflux_mask_siii_8831] INTEGER NULL -- integer
,  [emline_gflux_mask_siii_9071] INTEGER NULL -- integer
,  [emline_gflux_mask_siii_9533] INTEGER NULL -- integer
,  [emline_gvel_oiid_3728] REAL NULL -- real
,  [emline_gvel_hb_4862] REAL NULL -- real
,  [emline_gvel_oiii_4960] REAL NULL -- real
,  [emline_gvel_oiii_5008] REAL NULL -- real
,  [emline_gvel_oi_6302] REAL NULL -- real
,  [emline_gvel_oi_6365] REAL NULL -- real
,  [emline_gvel_nii_6549] REAL NULL -- real
,  [emline_gvel_ha_6564] REAL NULL -- real
,  [emline_gvel_nii_6585] REAL NULL -- real
,  [emline_gvel_sii_6718] REAL NULL -- real
,  [emline_gvel_sii_6732] REAL NULL -- real
,  [emline_gvel_oii_3727] REAL NULL -- real
,  [emline_gvel_oii_3729] REAL NULL -- real
,  [emline_gvel_heps_3971] REAL NULL -- real
,  [emline_gvel_hdel_4102] REAL NULL -- real
,  [emline_gvel_hgam_4341] REAL NULL -- real
,  [emline_gvel_heii_4687] REAL NULL -- real
,  [emline_gvel_hei_5877] REAL NULL -- real
,  [emline_gvel_siii_8831] REAL NULL -- real
,  [emline_gvel_siii_9071] REAL NULL -- real
,  [emline_gvel_siii_9533] REAL NULL -- real
,  [emline_gvel_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gvel_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gvel_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gvel_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gvel_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gvel_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gvel_ivar_siii_8831] FLOAT NULL -- double precision
,  [emline_gvel_ivar_siii_9071] FLOAT NULL -- double precision
,  [emline_gvel_ivar_siii_9533] FLOAT NULL -- double precision
,  [emline_gvel_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_gvel_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gvel_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gvel_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gvel_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gvel_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gvel_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gvel_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gvel_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gvel_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gvel_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gvel_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gvel_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gvel_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gvel_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gvel_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gvel_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gvel_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gvel_mask_siii_8831] INTEGER NULL -- integer
,  [emline_gvel_mask_siii_9071] INTEGER NULL -- integer
,  [emline_gvel_mask_siii_9533] INTEGER NULL -- integer
,  [emline_gsigma_oiid_3728] REAL NULL -- real
,  [emline_gsigma_hb_4862] REAL NULL -- real
,  [emline_gsigma_oiii_4960] REAL NULL -- real
,  [emline_gsigma_oiii_5008] REAL NULL -- real
,  [emline_gsigma_oi_6302] REAL NULL -- real
,  [emline_gsigma_oi_6365] REAL NULL -- real
,  [emline_gsigma_nii_6549] REAL NULL -- real
,  [emline_gsigma_ha_6564] REAL NULL -- real
,  [emline_gsigma_nii_6585] REAL NULL -- real
,  [emline_gsigma_sii_6718] REAL NULL -- real
,  [emline_gsigma_sii_6732] REAL NULL -- real
,  [emline_gsigma_oii_3727] REAL NULL -- real
,  [emline_gsigma_oii_3729] REAL NULL -- real
,  [emline_gsigma_heps_3971] REAL NULL -- real
,  [emline_gsigma_hdel_4102] REAL NULL -- real
,  [emline_gsigma_hgam_4341] REAL NULL -- real
,  [emline_gsigma_heii_4687] REAL NULL -- real
,  [emline_gsigma_hei_5877] REAL NULL -- real
,  [emline_gsigma_siii_8831] REAL NULL -- real
,  [emline_gsigma_siii_9071] REAL NULL -- real
,  [emline_gsigma_siii_9533] REAL NULL -- real
,  [emline_gsigma_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_siii_8831] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_siii_9071] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_siii_9533] FLOAT NULL -- double precision
,  [emline_gsigma_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_gsigma_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gsigma_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gsigma_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gsigma_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gsigma_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gsigma_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gsigma_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gsigma_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gsigma_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gsigma_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gsigma_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gsigma_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gsigma_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gsigma_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gsigma_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gsigma_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gsigma_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gsigma_mask_siii_8831] INTEGER NULL -- integer
,  [emline_gsigma_mask_siii_9071] INTEGER NULL -- integer
,  [emline_gsigma_mask_siii_9533] INTEGER NULL -- integer
,  [emline_instsigma_oiid_3728] REAL NULL -- real
,  [emline_instsigma_hb_4862] REAL NULL -- real
,  [emline_instsigma_oiii_4960] REAL NULL -- real
,  [emline_instsigma_oiii_5008] REAL NULL -- real
,  [emline_instsigma_oi_6302] REAL NULL -- real
,  [emline_instsigma_oi_6365] REAL NULL -- real
,  [emline_instsigma_nii_6549] REAL NULL -- real
,  [emline_instsigma_ha_6564] REAL NULL -- real
,  [emline_instsigma_nii_6585] REAL NULL -- real
,  [emline_instsigma_sii_6718] REAL NULL -- real
,  [emline_instsigma_sii_6732] REAL NULL -- real
,  [emline_instsigma_oii_3727] REAL NULL -- real
,  [emline_instsigma_oii_3729] REAL NULL -- real
,  [emline_instsigma_heps_3971] REAL NULL -- real
,  [emline_instsigma_hdel_4102] REAL NULL -- real
,  [emline_instsigma_hgam_4341] REAL NULL -- real
,  [emline_instsigma_heii_4687] REAL NULL -- real
,  [emline_instsigma_hei_5877] REAL NULL -- real
,  [emline_instsigma_siii_8831] REAL NULL -- real
,  [emline_instsigma_siii_9071] REAL NULL -- real
,  [emline_instsigma_siii_9533] REAL NULL -- real
,  [specindex_d4000] REAL NULL -- real
,  [specindex_dn4000] REAL NULL -- real
,  [specindex_ivar_d4000] FLOAT NULL -- double precision
,  [specindex_ivar_dn4000] FLOAT NULL -- double precision
,  [specindex_mask_d4000] INTEGER NULL -- integer
,  [specindex_mask_dn4000] INTEGER NULL -- integer
,  [specindex_corr_d4000] REAL NULL -- real
,  [specindex_corr_dn4000] REAL NULL -- real
,  [x] INTEGER NULL -- integer
,  [y] INTEGER NULL -- integer
)
with (location='manga.mangadapdb.[cleanspaxelprop5]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='cleanspaxelprop6')
begin drop external table mangadapdb.[cleanspaxelprop6] end

GO

CREATE EXTERNAL TABLE mangadapdb.[cleanspaxelprop6] (
   [pk] BIGINT NULL -- bigint
,  [file_pk] INTEGER NULL -- integer
,  [spaxel_index] INTEGER NULL -- integer
,  [binid_pk] INTEGER NULL -- integer
,  [x] INTEGER NULL -- integer
,  [y] INTEGER NULL -- integer
,  [spx_skycoo_on_sky_x] REAL NULL -- real
,  [spx_skycoo_on_sky_y] REAL NULL -- real
,  [spx_ellcoo_elliptical_radius] REAL NULL -- real
,  [spx_ellcoo_r_re] REAL NULL -- real
,  [spx_ellcoo_elliptical_azimuth] REAL NULL -- real
,  [spx_mflux] REAL NULL -- real
,  [spx_mflux_ivar] FLOAT NULL -- double precision
,  [spx_snr] REAL NULL -- real
,  [binid_binned_spectra] INTEGER NULL -- integer
,  [binid_stellar_continua] INTEGER NULL -- integer
,  [binid_em_line_moments] INTEGER NULL -- integer
,  [binid_em_line_models] INTEGER NULL -- integer
,  [binid_spectral_indices] INTEGER NULL -- integer
,  [bin_lwskycoo_lum_weighted_on_sky_x] REAL NULL -- real
,  [bin_lwskycoo_lum_weighted_on_sky_y] REAL NULL -- real
,  [bin_lwellcoo_lum_weighted_elliptical_radius] REAL NULL -- real
,  [bin_lwellcoo_r_re] REAL NULL -- real
,  [bin_lwellcoo_lum_weighted_elliptical_azimuth] REAL NULL -- real
,  [bin_area] REAL NULL -- real
,  [bin_farea] REAL NULL -- real
,  [bin_mflux] REAL NULL -- real
,  [bin_mflux_ivar] FLOAT NULL -- double precision
,  [bin_mflux_mask] INTEGER NULL -- integer
,  [bin_snr] REAL NULL -- real
,  [stellar_vel] REAL NULL -- real
,  [stellar_vel_ivar] FLOAT NULL -- double precision
,  [stellar_vel_mask] INTEGER NULL -- integer
,  [stellar_sigma] REAL NULL -- real
,  [stellar_sigma_ivar] FLOAT NULL -- double precision
,  [stellar_sigma_mask] INTEGER NULL -- integer
,  [stellar_sigmacorr] REAL NULL -- real
,  [stellar_cont_fresid_68th_percentile] REAL NULL -- real
,  [stellar_cont_fresid_99th_percentile] REAL NULL -- real
,  [stellar_cont_rchi2] REAL NULL -- real
,  [emline_sflux_oiid_3728] REAL NULL -- real
,  [emline_sflux_oii_3729] REAL NULL -- real
,  [emline_sflux_hthe_3798] REAL NULL -- real
,  [emline_sflux_heta_3836] REAL NULL -- real
,  [emline_sflux_neiii_3869] REAL NULL -- real
,  [emline_sflux_hzet_3890] REAL NULL -- real
,  [emline_sflux_neiii_3968] REAL NULL -- real
,  [emline_sflux_heps_3971] REAL NULL -- real
,  [emline_sflux_hdel_4102] REAL NULL -- real
,  [emline_sflux_hgam_4341] REAL NULL -- real
,  [emline_sflux_heii_4687] REAL NULL -- real
,  [emline_sflux_hb_4862] REAL NULL -- real
,  [emline_sflux_oiii_4960] REAL NULL -- real
,  [emline_sflux_oiii_5008] REAL NULL -- real
,  [emline_sflux_hei_5877] REAL NULL -- real
,  [emline_sflux_oi_6302] REAL NULL -- real
,  [emline_sflux_oi_6365] REAL NULL -- real
,  [emline_sflux_nii_6549] REAL NULL -- real
,  [emline_sflux_ha_6564] REAL NULL -- real
,  [emline_sflux_nii_6585] REAL NULL -- real
,  [emline_sflux_sii_6718] REAL NULL -- real
,  [emline_sflux_sii_6732] REAL NULL -- real
,  [emline_sflux_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_sflux_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_sflux_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_sflux_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_sflux_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_sflux_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_sflux_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_sflux_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_sflux_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_sflux_mask_oii_3729] INTEGER NULL -- integer
,  [emline_sflux_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_sflux_mask_heta_3836] INTEGER NULL -- integer
,  [emline_sflux_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_sflux_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_sflux_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_sflux_mask_heps_3971] INTEGER NULL -- integer
,  [emline_sflux_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_sflux_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_sflux_mask_heii_4687] INTEGER NULL -- integer
,  [emline_sflux_mask_hb_4862] INTEGER NULL -- integer
,  [emline_sflux_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_sflux_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_sflux_mask_hei_5877] INTEGER NULL -- integer
,  [emline_sflux_mask_oi_6302] INTEGER NULL -- integer
,  [emline_sflux_mask_oi_6365] INTEGER NULL -- integer
,  [emline_sflux_mask_nii_6549] INTEGER NULL -- integer
,  [emline_sflux_mask_ha_6564] INTEGER NULL -- integer
,  [emline_sflux_mask_nii_6585] INTEGER NULL -- integer
,  [emline_sflux_mask_sii_6718] INTEGER NULL -- integer
,  [emline_sflux_mask_sii_6732] INTEGER NULL -- integer
,  [emline_sew_oiid_3728] FLOAT NULL -- double precision
,  [emline_sew_oii_3729] FLOAT NULL -- double precision
,  [emline_sew_hthe_3798] FLOAT NULL -- double precision
,  [emline_sew_heta_3836] FLOAT NULL -- double precision
,  [emline_sew_neiii_3869] FLOAT NULL -- double precision
,  [emline_sew_hzet_3890] FLOAT NULL -- double precision
,  [emline_sew_neiii_3968] FLOAT NULL -- double precision
,  [emline_sew_heps_3971] FLOAT NULL -- double precision
,  [emline_sew_hdel_4102] FLOAT NULL -- double precision
,  [emline_sew_hgam_4341] FLOAT NULL -- double precision
,  [emline_sew_heii_4687] FLOAT NULL -- double precision
,  [emline_sew_hb_4862] FLOAT NULL -- double precision
,  [emline_sew_oiii_4960] FLOAT NULL -- double precision
,  [emline_sew_oiii_5008] FLOAT NULL -- double precision
,  [emline_sew_hei_5877] FLOAT NULL -- double precision
,  [emline_sew_oi_6302] FLOAT NULL -- double precision
,  [emline_sew_oi_6365] FLOAT NULL -- double precision
,  [emline_sew_nii_6549] FLOAT NULL -- double precision
,  [emline_sew_ha_6564] FLOAT NULL -- double precision
,  [emline_sew_nii_6585] FLOAT NULL -- double precision
,  [emline_sew_sii_6718] FLOAT NULL -- double precision
,  [emline_sew_sii_6732] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_sew_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_sew_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_sew_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_sew_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_sew_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_sew_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_sew_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_sew_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_sew_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_sew_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_sew_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_sew_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_sew_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_sew_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_sew_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_sew_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_sew_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_sew_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_sew_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_sew_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_sew_mask_oii_3729] INTEGER NULL -- integer
,  [emline_sew_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_sew_mask_heta_3836] INTEGER NULL -- integer
,  [emline_sew_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_sew_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_sew_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_sew_mask_heps_3971] INTEGER NULL -- integer
,  [emline_sew_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_sew_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_sew_mask_heii_4687] INTEGER NULL -- integer
,  [emline_sew_mask_hb_4862] INTEGER NULL -- integer
,  [emline_sew_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_sew_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_sew_mask_hei_5877] INTEGER NULL -- integer
,  [emline_sew_mask_oi_6302] INTEGER NULL -- integer
,  [emline_sew_mask_oi_6365] INTEGER NULL -- integer
,  [emline_sew_mask_nii_6549] INTEGER NULL -- integer
,  [emline_sew_mask_ha_6564] INTEGER NULL -- integer
,  [emline_sew_mask_nii_6585] INTEGER NULL -- integer
,  [emline_sew_mask_sii_6718] INTEGER NULL -- integer
,  [emline_sew_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gflux_oii_3727] REAL NULL -- real
,  [emline_gflux_oii_3729] REAL NULL -- real
,  [emline_gflux_hthe_3798] REAL NULL -- real
,  [emline_gflux_heta_3836] REAL NULL -- real
,  [emline_gflux_neiii_3869] REAL NULL -- real
,  [emline_gflux_hzet_3890] REAL NULL -- real
,  [emline_gflux_neiii_3968] REAL NULL -- real
,  [emline_gflux_heps_3971] REAL NULL -- real
,  [emline_gflux_hdel_4102] REAL NULL -- real
,  [emline_gflux_hgam_4341] REAL NULL -- real
,  [emline_gflux_heii_4687] REAL NULL -- real
,  [emline_gflux_hb_4862] REAL NULL -- real
,  [emline_gflux_oiii_4960] REAL NULL -- real
,  [emline_gflux_oiii_5008] REAL NULL -- real
,  [emline_gflux_hei_5877] REAL NULL -- real
,  [emline_gflux_oi_6302] REAL NULL -- real
,  [emline_gflux_oi_6365] REAL NULL -- real
,  [emline_gflux_nii_6549] REAL NULL -- real
,  [emline_gflux_ha_6564] REAL NULL -- real
,  [emline_gflux_nii_6585] REAL NULL -- real
,  [emline_gflux_sii_6718] REAL NULL -- real
,  [emline_gflux_sii_6732] REAL NULL -- real
,  [emline_gflux_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gflux_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gflux_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gflux_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gflux_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gflux_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gflux_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gflux_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gflux_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gflux_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gflux_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gflux_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gflux_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gflux_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gflux_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gflux_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gflux_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gflux_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gflux_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gflux_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gflux_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gflux_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gflux_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gflux_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gflux_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gflux_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gflux_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gflux_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gflux_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gflux_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gew_oii_3727] FLOAT NULL -- double precision
,  [emline_gew_oii_3729] FLOAT NULL -- double precision
,  [emline_gew_hthe_3798] FLOAT NULL -- double precision
,  [emline_gew_heta_3836] FLOAT NULL -- double precision
,  [emline_gew_neiii_3869] FLOAT NULL -- double precision
,  [emline_gew_hzet_3890] FLOAT NULL -- double precision
,  [emline_gew_neiii_3968] FLOAT NULL -- double precision
,  [emline_gew_heps_3971] FLOAT NULL -- double precision
,  [emline_gew_hdel_4102] FLOAT NULL -- double precision
,  [emline_gew_hgam_4341] FLOAT NULL -- double precision
,  [emline_gew_heii_4687] FLOAT NULL -- double precision
,  [emline_gew_hb_4862] FLOAT NULL -- double precision
,  [emline_gew_oiii_4960] FLOAT NULL -- double precision
,  [emline_gew_oiii_5008] FLOAT NULL -- double precision
,  [emline_gew_hei_5877] FLOAT NULL -- double precision
,  [emline_gew_oi_6302] FLOAT NULL -- double precision
,  [emline_gew_oi_6365] FLOAT NULL -- double precision
,  [emline_gew_nii_6549] FLOAT NULL -- double precision
,  [emline_gew_ha_6564] FLOAT NULL -- double precision
,  [emline_gew_nii_6585] FLOAT NULL -- double precision
,  [emline_gew_sii_6718] FLOAT NULL -- double precision
,  [emline_gew_sii_6732] FLOAT NULL -- double precision
,  [emline_gew_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gew_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gew_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gew_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gew_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gew_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gew_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gew_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gew_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gew_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gew_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gew_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gew_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gew_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gew_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gew_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gew_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gew_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gew_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gew_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gew_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gew_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gew_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gew_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gew_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gew_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gew_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gew_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gew_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gew_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gew_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gew_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gew_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gew_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gew_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gew_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gew_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gew_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gew_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gew_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gew_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gew_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gew_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gew_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gvel_oii_3727] REAL NULL -- real
,  [emline_gvel_oii_3729] REAL NULL -- real
,  [emline_gvel_hthe_3798] REAL NULL -- real
,  [emline_gvel_heta_3836] REAL NULL -- real
,  [emline_gvel_neiii_3869] REAL NULL -- real
,  [emline_gvel_hzet_3890] REAL NULL -- real
,  [emline_gvel_neiii_3968] REAL NULL -- real
,  [emline_gvel_heps_3971] REAL NULL -- real
,  [emline_gvel_hdel_4102] REAL NULL -- real
,  [emline_gvel_hgam_4341] REAL NULL -- real
,  [emline_gvel_heii_4687] REAL NULL -- real
,  [emline_gvel_hb_4862] REAL NULL -- real
,  [emline_gvel_oiii_4960] REAL NULL -- real
,  [emline_gvel_oiii_5008] REAL NULL -- real
,  [emline_gvel_hei_5877] REAL NULL -- real
,  [emline_gvel_oi_6302] REAL NULL -- real
,  [emline_gvel_oi_6365] REAL NULL -- real
,  [emline_gvel_nii_6549] REAL NULL -- real
,  [emline_gvel_ha_6564] REAL NULL -- real
,  [emline_gvel_nii_6585] REAL NULL -- real
,  [emline_gvel_sii_6718] REAL NULL -- real
,  [emline_gvel_sii_6732] REAL NULL -- real
,  [emline_gvel_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gvel_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gvel_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gvel_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gvel_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gvel_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gvel_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gvel_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gvel_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gvel_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gvel_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gvel_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gvel_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gvel_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gvel_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gvel_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gvel_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gvel_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gvel_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gvel_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gvel_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gvel_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gvel_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gvel_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gvel_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gvel_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gvel_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gvel_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gvel_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gvel_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gsigma_oii_3727] REAL NULL -- real
,  [emline_gsigma_oii_3729] REAL NULL -- real
,  [emline_gsigma_hthe_3798] REAL NULL -- real
,  [emline_gsigma_heta_3836] REAL NULL -- real
,  [emline_gsigma_neiii_3869] REAL NULL -- real
,  [emline_gsigma_hzet_3890] REAL NULL -- real
,  [emline_gsigma_neiii_3968] REAL NULL -- real
,  [emline_gsigma_heps_3971] REAL NULL -- real
,  [emline_gsigma_hdel_4102] REAL NULL -- real
,  [emline_gsigma_hgam_4341] REAL NULL -- real
,  [emline_gsigma_heii_4687] REAL NULL -- real
,  [emline_gsigma_hb_4862] REAL NULL -- real
,  [emline_gsigma_oiii_4960] REAL NULL -- real
,  [emline_gsigma_oiii_5008] REAL NULL -- real
,  [emline_gsigma_hei_5877] REAL NULL -- real
,  [emline_gsigma_oi_6302] REAL NULL -- real
,  [emline_gsigma_oi_6365] REAL NULL -- real
,  [emline_gsigma_nii_6549] REAL NULL -- real
,  [emline_gsigma_ha_6564] REAL NULL -- real
,  [emline_gsigma_nii_6585] REAL NULL -- real
,  [emline_gsigma_sii_6718] REAL NULL -- real
,  [emline_gsigma_sii_6732] REAL NULL -- real
,  [emline_gsigma_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gsigma_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gsigma_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gsigma_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gsigma_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gsigma_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gsigma_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gsigma_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gsigma_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gsigma_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gsigma_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gsigma_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gsigma_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gsigma_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gsigma_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gsigma_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gsigma_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gsigma_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gsigma_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gsigma_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gsigma_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gsigma_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gsigma_mask_sii_6732] INTEGER NULL -- integer
,  [emline_instsigma_oii_3727] REAL NULL -- real
,  [emline_instsigma_oii_3729] REAL NULL -- real
,  [emline_instsigma_hthe_3798] REAL NULL -- real
,  [emline_instsigma_heta_3836] REAL NULL -- real
,  [emline_instsigma_neiii_3869] REAL NULL -- real
,  [emline_instsigma_hzet_3890] REAL NULL -- real
,  [emline_instsigma_neiii_3968] REAL NULL -- real
,  [emline_instsigma_heps_3971] REAL NULL -- real
,  [emline_instsigma_hdel_4102] REAL NULL -- real
,  [emline_instsigma_hgam_4341] REAL NULL -- real
,  [emline_instsigma_heii_4687] REAL NULL -- real
,  [emline_instsigma_hb_4862] REAL NULL -- real
,  [emline_instsigma_oiii_4960] REAL NULL -- real
,  [emline_instsigma_oiii_5008] REAL NULL -- real
,  [emline_instsigma_hei_5877] REAL NULL -- real
,  [emline_instsigma_oi_6302] REAL NULL -- real
,  [emline_instsigma_oi_6365] REAL NULL -- real
,  [emline_instsigma_nii_6549] REAL NULL -- real
,  [emline_instsigma_ha_6564] REAL NULL -- real
,  [emline_instsigma_nii_6585] REAL NULL -- real
,  [emline_instsigma_sii_6718] REAL NULL -- real
,  [emline_instsigma_sii_6732] REAL NULL -- real
,  [emline_tplsigma_oii_3727] REAL NULL -- real
,  [emline_tplsigma_oii_3729] REAL NULL -- real
,  [emline_tplsigma_hthe_3798] REAL NULL -- real
,  [emline_tplsigma_heta_3836] REAL NULL -- real
,  [emline_tplsigma_neiii_3869] REAL NULL -- real
,  [emline_tplsigma_hzet_3890] REAL NULL -- real
,  [emline_tplsigma_neiii_3968] REAL NULL -- real
,  [emline_tplsigma_heps_3971] REAL NULL -- real
,  [emline_tplsigma_hdel_4102] REAL NULL -- real
,  [emline_tplsigma_hgam_4341] REAL NULL -- real
,  [emline_tplsigma_heii_4687] REAL NULL -- real
,  [emline_tplsigma_hb_4862] REAL NULL -- real
,  [emline_tplsigma_oiii_4960] REAL NULL -- real
,  [emline_tplsigma_oiii_5008] REAL NULL -- real
,  [emline_tplsigma_hei_5877] REAL NULL -- real
,  [emline_tplsigma_oi_6302] REAL NULL -- real
,  [emline_tplsigma_oi_6365] REAL NULL -- real
,  [emline_tplsigma_nii_6549] REAL NULL -- real
,  [emline_tplsigma_ha_6564] REAL NULL -- real
,  [emline_tplsigma_nii_6585] REAL NULL -- real
,  [emline_tplsigma_sii_6718] REAL NULL -- real
,  [emline_tplsigma_sii_6732] REAL NULL -- real
,  [specindex_cn1] REAL NULL -- real
,  [specindex_cn2] REAL NULL -- real
,  [specindex_ca4227] REAL NULL -- real
,  [specindex_g4300] REAL NULL -- real
,  [specindex_fe4383] REAL NULL -- real
,  [specindex_ca4455] REAL NULL -- real
,  [specindex_fe4531] REAL NULL -- real
,  [specindex_c24668] REAL NULL -- real
,  [specindex_hb] REAL NULL -- real
,  [specindex_fe5015] REAL NULL -- real
,  [specindex_mg1] REAL NULL -- real
,  [specindex_mg2] REAL NULL -- real
,  [specindex_mgb] REAL NULL -- real
,  [specindex_fe5270] REAL NULL -- real
,  [specindex_fe5335] REAL NULL -- real
,  [specindex_fe5406] REAL NULL -- real
,  [specindex_fe5709] REAL NULL -- real
,  [specindex_fe5782] REAL NULL -- real
,  [specindex_nad] REAL NULL -- real
,  [specindex_tio1] REAL NULL -- real
,  [specindex_tio2] REAL NULL -- real
,  [specindex_hdeltaa] REAL NULL -- real
,  [specindex_hgammaa] REAL NULL -- real
,  [specindex_hdeltaf] REAL NULL -- real
,  [specindex_hgammaf] REAL NULL -- real
,  [specindex_cahk] REAL NULL -- real
,  [specindex_caii1] REAL NULL -- real
,  [specindex_caii2] REAL NULL -- real
,  [specindex_caii3] REAL NULL -- real
,  [specindex_pa17] REAL NULL -- real
,  [specindex_pa14] REAL NULL -- real
,  [specindex_pa12] REAL NULL -- real
,  [specindex_mgicvd] REAL NULL -- real
,  [specindex_naicvd] REAL NULL -- real
,  [specindex_mgiir] REAL NULL -- real
,  [specindex_fehcvd] REAL NULL -- real
,  [specindex_nai] REAL NULL -- real
,  [specindex_btio] REAL NULL -- real
,  [specindex_atio] REAL NULL -- real
,  [specindex_cah1] REAL NULL -- real
,  [specindex_cah2] REAL NULL -- real
,  [specindex_naisdss] REAL NULL -- real
,  [specindex_tio2sdss] REAL NULL -- real
,  [specindex_d4000] REAL NULL -- real
,  [specindex_dn4000] REAL NULL -- real
,  [specindex_tiocvd] REAL NULL -- real
,  [specindex_ivar_cn1] FLOAT NULL -- double precision
,  [specindex_ivar_cn2] FLOAT NULL -- double precision
,  [specindex_ivar_ca4227] FLOAT NULL -- double precision
,  [specindex_ivar_g4300] FLOAT NULL -- double precision
,  [specindex_ivar_fe4383] FLOAT NULL -- double precision
,  [specindex_ivar_ca4455] FLOAT NULL -- double precision
,  [specindex_ivar_fe4531] FLOAT NULL -- double precision
,  [specindex_ivar_c24668] FLOAT NULL -- double precision
,  [specindex_ivar_hb] FLOAT NULL -- double precision
,  [specindex_ivar_fe5015] FLOAT NULL -- double precision
,  [specindex_ivar_mg1] FLOAT NULL -- double precision
,  [specindex_ivar_mg2] FLOAT NULL -- double precision
,  [specindex_ivar_mgb] FLOAT NULL -- double precision
,  [specindex_ivar_fe5270] FLOAT NULL -- double precision
,  [specindex_ivar_fe5335] FLOAT NULL -- double precision
,  [specindex_ivar_fe5406] FLOAT NULL -- double precision
,  [specindex_ivar_fe5709] FLOAT NULL -- double precision
,  [specindex_ivar_fe5782] FLOAT NULL -- double precision
,  [specindex_ivar_nad] FLOAT NULL -- double precision
,  [specindex_ivar_tio1] FLOAT NULL -- double precision
,  [specindex_ivar_tio2] FLOAT NULL -- double precision
,  [specindex_ivar_hdeltaa] FLOAT NULL -- double precision
,  [specindex_ivar_hgammaa] FLOAT NULL -- double precision
,  [specindex_ivar_hdeltaf] FLOAT NULL -- double precision
,  [specindex_ivar_hgammaf] FLOAT NULL -- double precision
,  [specindex_ivar_cahk] FLOAT NULL -- double precision
,  [specindex_ivar_caii1] FLOAT NULL -- double precision
,  [specindex_ivar_caii2] FLOAT NULL -- double precision
,  [specindex_ivar_caii3] FLOAT NULL -- double precision
,  [specindex_ivar_pa17] FLOAT NULL -- double precision
,  [specindex_ivar_pa14] FLOAT NULL -- double precision
,  [specindex_ivar_pa12] FLOAT NULL -- double precision
,  [specindex_ivar_mgicvd] FLOAT NULL -- double precision
,  [specindex_ivar_naicvd] FLOAT NULL -- double precision
,  [specindex_ivar_mgiir] FLOAT NULL -- double precision
,  [specindex_ivar_fehcvd] FLOAT NULL -- double precision
,  [specindex_ivar_nai] FLOAT NULL -- double precision
,  [specindex_ivar_btio] FLOAT NULL -- double precision
,  [specindex_ivar_atio] FLOAT NULL -- double precision
,  [specindex_ivar_cah1] FLOAT NULL -- double precision
,  [specindex_ivar_cah2] FLOAT NULL -- double precision
,  [specindex_ivar_naisdss] FLOAT NULL -- double precision
,  [specindex_ivar_tio2sdss] FLOAT NULL -- double precision
,  [specindex_ivar_d4000] FLOAT NULL -- double precision
,  [specindex_ivar_dn4000] FLOAT NULL -- double precision
,  [specindex_ivar_tiocvd] FLOAT NULL -- double precision
,  [specindex_mask_cn1] INTEGER NULL -- integer
,  [specindex_mask_cn2] INTEGER NULL -- integer
,  [specindex_mask_ca4227] INTEGER NULL -- integer
,  [specindex_mask_g4300] INTEGER NULL -- integer
,  [specindex_mask_fe4383] INTEGER NULL -- integer
,  [specindex_mask_ca4455] INTEGER NULL -- integer
,  [specindex_mask_fe4531] INTEGER NULL -- integer
,  [specindex_mask_c24668] INTEGER NULL -- integer
,  [specindex_mask_hb] INTEGER NULL -- integer
,  [specindex_mask_fe5015] INTEGER NULL -- integer
,  [specindex_mask_mg1] INTEGER NULL -- integer
,  [specindex_mask_mg2] INTEGER NULL -- integer
,  [specindex_mask_mgb] INTEGER NULL -- integer
,  [specindex_mask_fe5270] INTEGER NULL -- integer
,  [specindex_mask_fe5335] INTEGER NULL -- integer
,  [specindex_mask_fe5406] INTEGER NULL -- integer
,  [specindex_mask_fe5709] INTEGER NULL -- integer
,  [specindex_mask_fe5782] INTEGER NULL -- integer
,  [specindex_mask_nad] INTEGER NULL -- integer
,  [specindex_mask_tio1] INTEGER NULL -- integer
,  [specindex_mask_tio2] INTEGER NULL -- integer
,  [specindex_mask_hdeltaa] INTEGER NULL -- integer
,  [specindex_mask_hgammaa] INTEGER NULL -- integer
,  [specindex_mask_hdeltaf] INTEGER NULL -- integer
,  [specindex_mask_hgammaf] INTEGER NULL -- integer
,  [specindex_mask_cahk] INTEGER NULL -- integer
,  [specindex_mask_caii1] INTEGER NULL -- integer
,  [specindex_mask_caii2] INTEGER NULL -- integer
,  [specindex_mask_caii3] INTEGER NULL -- integer
,  [specindex_mask_pa17] INTEGER NULL -- integer
,  [specindex_mask_pa14] INTEGER NULL -- integer
,  [specindex_mask_pa12] INTEGER NULL -- integer
,  [specindex_mask_mgicvd] INTEGER NULL -- integer
,  [specindex_mask_naicvd] INTEGER NULL -- integer
,  [specindex_mask_mgiir] INTEGER NULL -- integer
,  [specindex_mask_fehcvd] INTEGER NULL -- integer
,  [specindex_mask_nai] INTEGER NULL -- integer
,  [specindex_mask_btio] INTEGER NULL -- integer
,  [specindex_mask_atio] INTEGER NULL -- integer
,  [specindex_mask_cah1] INTEGER NULL -- integer
,  [specindex_mask_cah2] INTEGER NULL -- integer
,  [specindex_mask_naisdss] INTEGER NULL -- integer
,  [specindex_mask_tio2sdss] INTEGER NULL -- integer
,  [specindex_mask_d4000] INTEGER NULL -- integer
,  [specindex_mask_dn4000] INTEGER NULL -- integer
,  [specindex_mask_tiocvd] INTEGER NULL -- integer
,  [specindex_corr_cn1] REAL NULL -- real
,  [specindex_corr_cn2] REAL NULL -- real
,  [specindex_corr_ca4227] REAL NULL -- real
,  [specindex_corr_g4300] REAL NULL -- real
,  [specindex_corr_fe4383] REAL NULL -- real
,  [specindex_corr_ca4455] REAL NULL -- real
,  [specindex_corr_fe4531] REAL NULL -- real
,  [specindex_corr_c24668] REAL NULL -- real
,  [specindex_corr_hb] REAL NULL -- real
,  [specindex_corr_fe5015] REAL NULL -- real
,  [specindex_corr_mg1] REAL NULL -- real
,  [specindex_corr_mg2] REAL NULL -- real
,  [specindex_corr_mgb] REAL NULL -- real
,  [specindex_corr_fe5270] REAL NULL -- real
,  [specindex_corr_fe5335] REAL NULL -- real
,  [specindex_corr_fe5406] REAL NULL -- real
,  [specindex_corr_fe5709] REAL NULL -- real
,  [specindex_corr_fe5782] REAL NULL -- real
,  [specindex_corr_nad] REAL NULL -- real
,  [specindex_corr_tio1] REAL NULL -- real
,  [specindex_corr_tio2] REAL NULL -- real
,  [specindex_corr_hdeltaa] REAL NULL -- real
,  [specindex_corr_hgammaa] REAL NULL -- real
,  [specindex_corr_hdeltaf] REAL NULL -- real
,  [specindex_corr_hgammaf] REAL NULL -- real
,  [specindex_corr_cahk] REAL NULL -- real
,  [specindex_corr_caii1] REAL NULL -- real
,  [specindex_corr_caii2] REAL NULL -- real
,  [specindex_corr_caii3] REAL NULL -- real
,  [specindex_corr_pa17] REAL NULL -- real
,  [specindex_corr_pa14] REAL NULL -- real
,  [specindex_corr_pa12] REAL NULL -- real
,  [specindex_corr_mgicvd] REAL NULL -- real
,  [specindex_corr_naicvd] REAL NULL -- real
,  [specindex_corr_mgiir] REAL NULL -- real
,  [specindex_corr_fehcvd] REAL NULL -- real
,  [specindex_corr_nai] REAL NULL -- real
,  [specindex_corr_btio] REAL NULL -- real
,  [specindex_corr_atio] REAL NULL -- real
,  [specindex_corr_cah1] REAL NULL -- real
,  [specindex_corr_cah2] REAL NULL -- real
,  [specindex_corr_naisdss] REAL NULL -- real
,  [specindex_corr_tio2sdss] REAL NULL -- real
,  [specindex_corr_d4000] REAL NULL -- real
,  [specindex_corr_dn4000] REAL NULL -- real
,  [specindex_corr_tiocvd] REAL NULL -- real
)
with (location='manga.mangadapdb.[cleanspaxelprop6]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='cleanspaxelprop7')
begin drop external table mangadapdb.[cleanspaxelprop7] end

GO

CREATE EXTERNAL TABLE mangadapdb.[cleanspaxelprop7] (
   [pk] BIGINT NULL -- bigint
,  [file_pk] INTEGER NULL -- integer
,  [spaxel_index] INTEGER NULL -- integer
,  [binid_pk] INTEGER NULL -- integer
,  [x] INTEGER NULL -- integer
,  [y] INTEGER NULL -- integer
,  [spx_skycoo_on_sky_x] REAL NULL -- real
,  [spx_skycoo_on_sky_y] REAL NULL -- real
,  [spx_ellcoo_elliptical_radius] REAL NULL -- real
,  [spx_ellcoo_r_re] REAL NULL -- real
,  [spx_ellcoo_elliptical_azimuth] REAL NULL -- real
,  [spx_mflux] REAL NULL -- real
,  [spx_mflux_ivar] FLOAT NULL -- double precision
,  [spx_snr] REAL NULL -- real
,  [binid_binned_spectra] INTEGER NULL -- integer
,  [binid_stellar_continua] INTEGER NULL -- integer
,  [binid_em_line_moments] INTEGER NULL -- integer
,  [binid_em_line_models] INTEGER NULL -- integer
,  [binid_spectral_indices] INTEGER NULL -- integer
,  [bin_lwskycoo_lum_weighted_on_sky_x] REAL NULL -- real
,  [bin_lwskycoo_lum_weighted_on_sky_y] REAL NULL -- real
,  [bin_lwellcoo_lum_weighted_elliptical_radius] REAL NULL -- real
,  [bin_lwellcoo_r_re] REAL NULL -- real
,  [bin_lwellcoo_lum_weighted_elliptical_azimuth] REAL NULL -- real
,  [bin_area] REAL NULL -- real
,  [bin_farea] REAL NULL -- real
,  [bin_mflux] REAL NULL -- real
,  [bin_mflux_ivar] FLOAT NULL -- double precision
,  [bin_mflux_mask] INTEGER NULL -- integer
,  [bin_snr] REAL NULL -- real
,  [stellar_vel] REAL NULL -- real
,  [stellar_vel_ivar] FLOAT NULL -- double precision
,  [stellar_vel_mask] INTEGER NULL -- integer
,  [stellar_sigma] REAL NULL -- real
,  [stellar_sigma_ivar] FLOAT NULL -- double precision
,  [stellar_sigma_mask] INTEGER NULL -- integer
,  [stellar_sigmacorr] REAL NULL -- real
,  [stellar_cont_fresid_68th_percentile] REAL NULL -- real
,  [stellar_cont_fresid_99th_percentile] REAL NULL -- real
,  [stellar_cont_rchi2] REAL NULL -- real
,  [emline_sflux_oiid_3728] REAL NULL -- real
,  [emline_sflux_oii_3729] REAL NULL -- real
,  [emline_sflux_hthe_3798] REAL NULL -- real
,  [emline_sflux_heta_3836] REAL NULL -- real
,  [emline_sflux_neiii_3869] REAL NULL -- real
,  [emline_sflux_hzet_3890] REAL NULL -- real
,  [emline_sflux_neiii_3968] REAL NULL -- real
,  [emline_sflux_heps_3971] REAL NULL -- real
,  [emline_sflux_hdel_4102] REAL NULL -- real
,  [emline_sflux_hgam_4341] REAL NULL -- real
,  [emline_sflux_heii_4687] REAL NULL -- real
,  [emline_sflux_hb_4862] REAL NULL -- real
,  [emline_sflux_oiii_4960] REAL NULL -- real
,  [emline_sflux_oiii_5008] REAL NULL -- real
,  [emline_sflux_hei_5877] REAL NULL -- real
,  [emline_sflux_oi_6302] REAL NULL -- real
,  [emline_sflux_oi_6365] REAL NULL -- real
,  [emline_sflux_nii_6549] REAL NULL -- real
,  [emline_sflux_ha_6564] REAL NULL -- real
,  [emline_sflux_nii_6585] REAL NULL -- real
,  [emline_sflux_sii_6718] REAL NULL -- real
,  [emline_sflux_sii_6732] REAL NULL -- real
,  [emline_sflux_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_sflux_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_sflux_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_sflux_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_sflux_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_sflux_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_sflux_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_sflux_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_sflux_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_sflux_mask_oii_3729] INTEGER NULL -- integer
,  [emline_sflux_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_sflux_mask_heta_3836] INTEGER NULL -- integer
,  [emline_sflux_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_sflux_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_sflux_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_sflux_mask_heps_3971] INTEGER NULL -- integer
,  [emline_sflux_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_sflux_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_sflux_mask_heii_4687] INTEGER NULL -- integer
,  [emline_sflux_mask_hb_4862] INTEGER NULL -- integer
,  [emline_sflux_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_sflux_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_sflux_mask_hei_5877] INTEGER NULL -- integer
,  [emline_sflux_mask_oi_6302] INTEGER NULL -- integer
,  [emline_sflux_mask_oi_6365] INTEGER NULL -- integer
,  [emline_sflux_mask_nii_6549] INTEGER NULL -- integer
,  [emline_sflux_mask_ha_6564] INTEGER NULL -- integer
,  [emline_sflux_mask_nii_6585] INTEGER NULL -- integer
,  [emline_sflux_mask_sii_6718] INTEGER NULL -- integer
,  [emline_sflux_mask_sii_6732] INTEGER NULL -- integer
,  [emline_sew_oiid_3728] FLOAT NULL -- double precision
,  [emline_sew_oii_3729] FLOAT NULL -- double precision
,  [emline_sew_hthe_3798] FLOAT NULL -- double precision
,  [emline_sew_heta_3836] FLOAT NULL -- double precision
,  [emline_sew_neiii_3869] FLOAT NULL -- double precision
,  [emline_sew_hzet_3890] FLOAT NULL -- double precision
,  [emline_sew_neiii_3968] FLOAT NULL -- double precision
,  [emline_sew_heps_3971] FLOAT NULL -- double precision
,  [emline_sew_hdel_4102] FLOAT NULL -- double precision
,  [emline_sew_hgam_4341] FLOAT NULL -- double precision
,  [emline_sew_heii_4687] FLOAT NULL -- double precision
,  [emline_sew_hb_4862] FLOAT NULL -- double precision
,  [emline_sew_oiii_4960] FLOAT NULL -- double precision
,  [emline_sew_oiii_5008] FLOAT NULL -- double precision
,  [emline_sew_hei_5877] FLOAT NULL -- double precision
,  [emline_sew_oi_6302] FLOAT NULL -- double precision
,  [emline_sew_oi_6365] FLOAT NULL -- double precision
,  [emline_sew_nii_6549] FLOAT NULL -- double precision
,  [emline_sew_ha_6564] FLOAT NULL -- double precision
,  [emline_sew_nii_6585] FLOAT NULL -- double precision
,  [emline_sew_sii_6718] FLOAT NULL -- double precision
,  [emline_sew_sii_6732] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_sew_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_sew_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_sew_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_sew_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_sew_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_sew_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_sew_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_sew_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_sew_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_sew_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_sew_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_sew_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_sew_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_sew_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_sew_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_sew_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_sew_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_sew_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_sew_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_sew_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_sew_mask_oii_3729] INTEGER NULL -- integer
,  [emline_sew_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_sew_mask_heta_3836] INTEGER NULL -- integer
,  [emline_sew_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_sew_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_sew_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_sew_mask_heps_3971] INTEGER NULL -- integer
,  [emline_sew_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_sew_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_sew_mask_heii_4687] INTEGER NULL -- integer
,  [emline_sew_mask_hb_4862] INTEGER NULL -- integer
,  [emline_sew_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_sew_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_sew_mask_hei_5877] INTEGER NULL -- integer
,  [emline_sew_mask_oi_6302] INTEGER NULL -- integer
,  [emline_sew_mask_oi_6365] INTEGER NULL -- integer
,  [emline_sew_mask_nii_6549] INTEGER NULL -- integer
,  [emline_sew_mask_ha_6564] INTEGER NULL -- integer
,  [emline_sew_mask_nii_6585] INTEGER NULL -- integer
,  [emline_sew_mask_sii_6718] INTEGER NULL -- integer
,  [emline_sew_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gflux_oii_3727] REAL NULL -- real
,  [emline_gflux_oii_3729] REAL NULL -- real
,  [emline_gflux_hthe_3798] REAL NULL -- real
,  [emline_gflux_heta_3836] REAL NULL -- real
,  [emline_gflux_neiii_3869] REAL NULL -- real
,  [emline_gflux_hzet_3890] REAL NULL -- real
,  [emline_gflux_neiii_3968] REAL NULL -- real
,  [emline_gflux_heps_3971] REAL NULL -- real
,  [emline_gflux_hdel_4102] REAL NULL -- real
,  [emline_gflux_hgam_4341] REAL NULL -- real
,  [emline_gflux_heii_4687] REAL NULL -- real
,  [emline_gflux_hb_4862] REAL NULL -- real
,  [emline_gflux_oiii_4960] REAL NULL -- real
,  [emline_gflux_oiii_5008] REAL NULL -- real
,  [emline_gflux_hei_5877] REAL NULL -- real
,  [emline_gflux_oi_6302] REAL NULL -- real
,  [emline_gflux_oi_6365] REAL NULL -- real
,  [emline_gflux_nii_6549] REAL NULL -- real
,  [emline_gflux_ha_6564] REAL NULL -- real
,  [emline_gflux_nii_6585] REAL NULL -- real
,  [emline_gflux_sii_6718] REAL NULL -- real
,  [emline_gflux_sii_6732] REAL NULL -- real
,  [emline_gflux_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gflux_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gflux_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gflux_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gflux_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gflux_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gflux_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gflux_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gflux_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gflux_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gflux_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gflux_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gflux_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gflux_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gflux_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gflux_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gflux_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gflux_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gflux_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gflux_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gflux_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gflux_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gflux_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gflux_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gflux_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gflux_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gflux_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gflux_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gflux_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gflux_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gew_oii_3727] FLOAT NULL -- double precision
,  [emline_gew_oii_3729] FLOAT NULL -- double precision
,  [emline_gew_hthe_3798] FLOAT NULL -- double precision
,  [emline_gew_heta_3836] FLOAT NULL -- double precision
,  [emline_gew_neiii_3869] FLOAT NULL -- double precision
,  [emline_gew_hzet_3890] FLOAT NULL -- double precision
,  [emline_gew_neiii_3968] FLOAT NULL -- double precision
,  [emline_gew_heps_3971] FLOAT NULL -- double precision
,  [emline_gew_hdel_4102] FLOAT NULL -- double precision
,  [emline_gew_hgam_4341] FLOAT NULL -- double precision
,  [emline_gew_heii_4687] FLOAT NULL -- double precision
,  [emline_gew_hb_4862] FLOAT NULL -- double precision
,  [emline_gew_oiii_4960] FLOAT NULL -- double precision
,  [emline_gew_oiii_5008] FLOAT NULL -- double precision
,  [emline_gew_hei_5877] FLOAT NULL -- double precision
,  [emline_gew_oi_6302] FLOAT NULL -- double precision
,  [emline_gew_oi_6365] FLOAT NULL -- double precision
,  [emline_gew_nii_6549] FLOAT NULL -- double precision
,  [emline_gew_ha_6564] FLOAT NULL -- double precision
,  [emline_gew_nii_6585] FLOAT NULL -- double precision
,  [emline_gew_sii_6718] FLOAT NULL -- double precision
,  [emline_gew_sii_6732] FLOAT NULL -- double precision
,  [emline_gew_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gew_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gew_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gew_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gew_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gew_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gew_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gew_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gew_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gew_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gew_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gew_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gew_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gew_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gew_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gew_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gew_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gew_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gew_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gew_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gew_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gew_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gew_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gew_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gew_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gew_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gew_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gew_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gew_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gew_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gew_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gew_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gew_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gew_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gew_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gew_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gew_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gew_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gew_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gew_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gew_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gew_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gew_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gew_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gvel_oii_3727] REAL NULL -- real
,  [emline_gvel_oii_3729] REAL NULL -- real
,  [emline_gvel_hthe_3798] REAL NULL -- real
,  [emline_gvel_heta_3836] REAL NULL -- real
,  [emline_gvel_neiii_3869] REAL NULL -- real
,  [emline_gvel_hzet_3890] REAL NULL -- real
,  [emline_gvel_neiii_3968] REAL NULL -- real
,  [emline_gvel_heps_3971] REAL NULL -- real
,  [emline_gvel_hdel_4102] REAL NULL -- real
,  [emline_gvel_hgam_4341] REAL NULL -- real
,  [emline_gvel_heii_4687] REAL NULL -- real
,  [emline_gvel_hb_4862] REAL NULL -- real
,  [emline_gvel_oiii_4960] REAL NULL -- real
,  [emline_gvel_oiii_5008] REAL NULL -- real
,  [emline_gvel_hei_5877] REAL NULL -- real
,  [emline_gvel_oi_6302] REAL NULL -- real
,  [emline_gvel_oi_6365] REAL NULL -- real
,  [emline_gvel_nii_6549] REAL NULL -- real
,  [emline_gvel_ha_6564] REAL NULL -- real
,  [emline_gvel_nii_6585] REAL NULL -- real
,  [emline_gvel_sii_6718] REAL NULL -- real
,  [emline_gvel_sii_6732] REAL NULL -- real
,  [emline_gvel_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gvel_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gvel_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gvel_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gvel_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gvel_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gvel_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gvel_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gvel_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gvel_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gvel_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gvel_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gvel_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gvel_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gvel_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gvel_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gvel_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gvel_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gvel_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gvel_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gvel_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gvel_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gvel_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gvel_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gvel_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gvel_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gvel_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gvel_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gvel_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gvel_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gsigma_oii_3727] REAL NULL -- real
,  [emline_gsigma_oii_3729] REAL NULL -- real
,  [emline_gsigma_hthe_3798] REAL NULL -- real
,  [emline_gsigma_heta_3836] REAL NULL -- real
,  [emline_gsigma_neiii_3869] REAL NULL -- real
,  [emline_gsigma_hzet_3890] REAL NULL -- real
,  [emline_gsigma_neiii_3968] REAL NULL -- real
,  [emline_gsigma_heps_3971] REAL NULL -- real
,  [emline_gsigma_hdel_4102] REAL NULL -- real
,  [emline_gsigma_hgam_4341] REAL NULL -- real
,  [emline_gsigma_heii_4687] REAL NULL -- real
,  [emline_gsigma_hb_4862] REAL NULL -- real
,  [emline_gsigma_oiii_4960] REAL NULL -- real
,  [emline_gsigma_oiii_5008] REAL NULL -- real
,  [emline_gsigma_hei_5877] REAL NULL -- real
,  [emline_gsigma_oi_6302] REAL NULL -- real
,  [emline_gsigma_oi_6365] REAL NULL -- real
,  [emline_gsigma_nii_6549] REAL NULL -- real
,  [emline_gsigma_ha_6564] REAL NULL -- real
,  [emline_gsigma_nii_6585] REAL NULL -- real
,  [emline_gsigma_sii_6718] REAL NULL -- real
,  [emline_gsigma_sii_6732] REAL NULL -- real
,  [emline_gsigma_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gsigma_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gsigma_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gsigma_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gsigma_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gsigma_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gsigma_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gsigma_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gsigma_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gsigma_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gsigma_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gsigma_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gsigma_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gsigma_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gsigma_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gsigma_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gsigma_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gsigma_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gsigma_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gsigma_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gsigma_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gsigma_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gsigma_mask_sii_6732] INTEGER NULL -- integer
,  [emline_instsigma_oii_3727] REAL NULL -- real
,  [emline_instsigma_oii_3729] REAL NULL -- real
,  [emline_instsigma_hthe_3798] REAL NULL -- real
,  [emline_instsigma_heta_3836] REAL NULL -- real
,  [emline_instsigma_neiii_3869] REAL NULL -- real
,  [emline_instsigma_hzet_3890] REAL NULL -- real
,  [emline_instsigma_neiii_3968] REAL NULL -- real
,  [emline_instsigma_heps_3971] REAL NULL -- real
,  [emline_instsigma_hdel_4102] REAL NULL -- real
,  [emline_instsigma_hgam_4341] REAL NULL -- real
,  [emline_instsigma_heii_4687] REAL NULL -- real
,  [emline_instsigma_hb_4862] REAL NULL -- real
,  [emline_instsigma_oiii_4960] REAL NULL -- real
,  [emline_instsigma_oiii_5008] REAL NULL -- real
,  [emline_instsigma_hei_5877] REAL NULL -- real
,  [emline_instsigma_oi_6302] REAL NULL -- real
,  [emline_instsigma_oi_6365] REAL NULL -- real
,  [emline_instsigma_nii_6549] REAL NULL -- real
,  [emline_instsigma_ha_6564] REAL NULL -- real
,  [emline_instsigma_nii_6585] REAL NULL -- real
,  [emline_instsigma_sii_6718] REAL NULL -- real
,  [emline_instsigma_sii_6732] REAL NULL -- real
,  [emline_tplsigma_oii_3727] REAL NULL -- real
,  [emline_tplsigma_oii_3729] REAL NULL -- real
,  [emline_tplsigma_hthe_3798] REAL NULL -- real
,  [emline_tplsigma_heta_3836] REAL NULL -- real
,  [emline_tplsigma_neiii_3869] REAL NULL -- real
,  [emline_tplsigma_hzet_3890] REAL NULL -- real
,  [emline_tplsigma_neiii_3968] REAL NULL -- real
,  [emline_tplsigma_heps_3971] REAL NULL -- real
,  [emline_tplsigma_hdel_4102] REAL NULL -- real
,  [emline_tplsigma_hgam_4341] REAL NULL -- real
,  [emline_tplsigma_heii_4687] REAL NULL -- real
,  [emline_tplsigma_hb_4862] REAL NULL -- real
,  [emline_tplsigma_oiii_4960] REAL NULL -- real
,  [emline_tplsigma_oiii_5008] REAL NULL -- real
,  [emline_tplsigma_hei_5877] REAL NULL -- real
,  [emline_tplsigma_oi_6302] REAL NULL -- real
,  [emline_tplsigma_oi_6365] REAL NULL -- real
,  [emline_tplsigma_nii_6549] REAL NULL -- real
,  [emline_tplsigma_ha_6564] REAL NULL -- real
,  [emline_tplsigma_nii_6585] REAL NULL -- real
,  [emline_tplsigma_sii_6718] REAL NULL -- real
,  [emline_tplsigma_sii_6732] REAL NULL -- real
,  [specindex_cn1] REAL NULL -- real
,  [specindex_cn2] REAL NULL -- real
,  [specindex_ca4227] REAL NULL -- real
,  [specindex_g4300] REAL NULL -- real
,  [specindex_fe4383] REAL NULL -- real
,  [specindex_ca4455] REAL NULL -- real
,  [specindex_fe4531] REAL NULL -- real
,  [specindex_c24668] REAL NULL -- real
,  [specindex_hb] REAL NULL -- real
,  [specindex_fe5015] REAL NULL -- real
,  [specindex_mg1] REAL NULL -- real
,  [specindex_mg2] REAL NULL -- real
,  [specindex_mgb] REAL NULL -- real
,  [specindex_fe5270] REAL NULL -- real
,  [specindex_fe5335] REAL NULL -- real
,  [specindex_fe5406] REAL NULL -- real
,  [specindex_fe5709] REAL NULL -- real
,  [specindex_fe5782] REAL NULL -- real
,  [specindex_nad] REAL NULL -- real
,  [specindex_tio1] REAL NULL -- real
,  [specindex_tio2] REAL NULL -- real
,  [specindex_hdeltaa] REAL NULL -- real
,  [specindex_hgammaa] REAL NULL -- real
,  [specindex_hdeltaf] REAL NULL -- real
,  [specindex_hgammaf] REAL NULL -- real
,  [specindex_cahk] REAL NULL -- real
,  [specindex_caii1] REAL NULL -- real
,  [specindex_caii2] REAL NULL -- real
,  [specindex_caii3] REAL NULL -- real
,  [specindex_pa17] REAL NULL -- real
,  [specindex_pa14] REAL NULL -- real
,  [specindex_pa12] REAL NULL -- real
,  [specindex_mgicvd] REAL NULL -- real
,  [specindex_naicvd] REAL NULL -- real
,  [specindex_mgiir] REAL NULL -- real
,  [specindex_fehcvd] REAL NULL -- real
,  [specindex_nai] REAL NULL -- real
,  [specindex_btio] REAL NULL -- real
,  [specindex_atio] REAL NULL -- real
,  [specindex_cah1] REAL NULL -- real
,  [specindex_cah2] REAL NULL -- real
,  [specindex_naisdss] REAL NULL -- real
,  [specindex_tio2sdss] REAL NULL -- real
,  [specindex_d4000] REAL NULL -- real
,  [specindex_dn4000] REAL NULL -- real
,  [specindex_tiocvd] REAL NULL -- real
,  [specindex_ivar_cn1] FLOAT NULL -- double precision
,  [specindex_ivar_cn2] FLOAT NULL -- double precision
,  [specindex_ivar_ca4227] FLOAT NULL -- double precision
,  [specindex_ivar_g4300] FLOAT NULL -- double precision
,  [specindex_ivar_fe4383] FLOAT NULL -- double precision
,  [specindex_ivar_ca4455] FLOAT NULL -- double precision
,  [specindex_ivar_fe4531] FLOAT NULL -- double precision
,  [specindex_ivar_c24668] FLOAT NULL -- double precision
,  [specindex_ivar_hb] FLOAT NULL -- double precision
,  [specindex_ivar_fe5015] FLOAT NULL -- double precision
,  [specindex_ivar_mg1] FLOAT NULL -- double precision
,  [specindex_ivar_mg2] FLOAT NULL -- double precision
,  [specindex_ivar_mgb] FLOAT NULL -- double precision
,  [specindex_ivar_fe5270] FLOAT NULL -- double precision
,  [specindex_ivar_fe5335] FLOAT NULL -- double precision
,  [specindex_ivar_fe5406] FLOAT NULL -- double precision
,  [specindex_ivar_fe5709] FLOAT NULL -- double precision
,  [specindex_ivar_fe5782] FLOAT NULL -- double precision
,  [specindex_ivar_nad] FLOAT NULL -- double precision
,  [specindex_ivar_tio1] FLOAT NULL -- double precision
,  [specindex_ivar_tio2] FLOAT NULL -- double precision
,  [specindex_ivar_hdeltaa] FLOAT NULL -- double precision
,  [specindex_ivar_hgammaa] FLOAT NULL -- double precision
,  [specindex_ivar_hdeltaf] FLOAT NULL -- double precision
,  [specindex_ivar_hgammaf] FLOAT NULL -- double precision
,  [specindex_ivar_cahk] FLOAT NULL -- double precision
,  [specindex_ivar_caii1] FLOAT NULL -- double precision
,  [specindex_ivar_caii2] FLOAT NULL -- double precision
,  [specindex_ivar_caii3] FLOAT NULL -- double precision
,  [specindex_ivar_pa17] FLOAT NULL -- double precision
,  [specindex_ivar_pa14] FLOAT NULL -- double precision
,  [specindex_ivar_pa12] FLOAT NULL -- double precision
,  [specindex_ivar_mgicvd] FLOAT NULL -- double precision
,  [specindex_ivar_naicvd] FLOAT NULL -- double precision
,  [specindex_ivar_mgiir] FLOAT NULL -- double precision
,  [specindex_ivar_fehcvd] FLOAT NULL -- double precision
,  [specindex_ivar_nai] FLOAT NULL -- double precision
,  [specindex_ivar_btio] FLOAT NULL -- double precision
,  [specindex_ivar_atio] FLOAT NULL -- double precision
,  [specindex_ivar_cah1] FLOAT NULL -- double precision
,  [specindex_ivar_cah2] FLOAT NULL -- double precision
,  [specindex_ivar_naisdss] FLOAT NULL -- double precision
,  [specindex_ivar_tio2sdss] FLOAT NULL -- double precision
,  [specindex_ivar_d4000] FLOAT NULL -- double precision
,  [specindex_ivar_dn4000] FLOAT NULL -- double precision
,  [specindex_ivar_tiocvd] FLOAT NULL -- double precision
,  [specindex_mask_cn1] INTEGER NULL -- integer
,  [specindex_mask_cn2] INTEGER NULL -- integer
,  [specindex_mask_ca4227] INTEGER NULL -- integer
,  [specindex_mask_g4300] INTEGER NULL -- integer
,  [specindex_mask_fe4383] INTEGER NULL -- integer
,  [specindex_mask_ca4455] INTEGER NULL -- integer
,  [specindex_mask_fe4531] INTEGER NULL -- integer
,  [specindex_mask_c24668] INTEGER NULL -- integer
,  [specindex_mask_hb] INTEGER NULL -- integer
,  [specindex_mask_fe5015] INTEGER NULL -- integer
,  [specindex_mask_mg1] INTEGER NULL -- integer
,  [specindex_mask_mg2] INTEGER NULL -- integer
,  [specindex_mask_mgb] INTEGER NULL -- integer
,  [specindex_mask_fe5270] INTEGER NULL -- integer
,  [specindex_mask_fe5335] INTEGER NULL -- integer
,  [specindex_mask_fe5406] INTEGER NULL -- integer
,  [specindex_mask_fe5709] INTEGER NULL -- integer
,  [specindex_mask_fe5782] INTEGER NULL -- integer
,  [specindex_mask_nad] INTEGER NULL -- integer
,  [specindex_mask_tio1] INTEGER NULL -- integer
,  [specindex_mask_tio2] INTEGER NULL -- integer
,  [specindex_mask_hdeltaa] INTEGER NULL -- integer
,  [specindex_mask_hgammaa] INTEGER NULL -- integer
,  [specindex_mask_hdeltaf] INTEGER NULL -- integer
,  [specindex_mask_hgammaf] INTEGER NULL -- integer
,  [specindex_mask_cahk] INTEGER NULL -- integer
,  [specindex_mask_caii1] INTEGER NULL -- integer
,  [specindex_mask_caii2] INTEGER NULL -- integer
,  [specindex_mask_caii3] INTEGER NULL -- integer
,  [specindex_mask_pa17] INTEGER NULL -- integer
,  [specindex_mask_pa14] INTEGER NULL -- integer
,  [specindex_mask_pa12] INTEGER NULL -- integer
,  [specindex_mask_mgicvd] INTEGER NULL -- integer
,  [specindex_mask_naicvd] INTEGER NULL -- integer
,  [specindex_mask_mgiir] INTEGER NULL -- integer
,  [specindex_mask_fehcvd] INTEGER NULL -- integer
,  [specindex_mask_nai] INTEGER NULL -- integer
,  [specindex_mask_btio] INTEGER NULL -- integer
,  [specindex_mask_atio] INTEGER NULL -- integer
,  [specindex_mask_cah1] INTEGER NULL -- integer
,  [specindex_mask_cah2] INTEGER NULL -- integer
,  [specindex_mask_naisdss] INTEGER NULL -- integer
,  [specindex_mask_tio2sdss] INTEGER NULL -- integer
,  [specindex_mask_d4000] INTEGER NULL -- integer
,  [specindex_mask_dn4000] INTEGER NULL -- integer
,  [specindex_mask_tiocvd] INTEGER NULL -- integer
,  [specindex_corr_cn1] REAL NULL -- real
,  [specindex_corr_cn2] REAL NULL -- real
,  [specindex_corr_ca4227] REAL NULL -- real
,  [specindex_corr_g4300] REAL NULL -- real
,  [specindex_corr_fe4383] REAL NULL -- real
,  [specindex_corr_ca4455] REAL NULL -- real
,  [specindex_corr_fe4531] REAL NULL -- real
,  [specindex_corr_c24668] REAL NULL -- real
,  [specindex_corr_hb] REAL NULL -- real
,  [specindex_corr_fe5015] REAL NULL -- real
,  [specindex_corr_mg1] REAL NULL -- real
,  [specindex_corr_mg2] REAL NULL -- real
,  [specindex_corr_mgb] REAL NULL -- real
,  [specindex_corr_fe5270] REAL NULL -- real
,  [specindex_corr_fe5335] REAL NULL -- real
,  [specindex_corr_fe5406] REAL NULL -- real
,  [specindex_corr_fe5709] REAL NULL -- real
,  [specindex_corr_fe5782] REAL NULL -- real
,  [specindex_corr_nad] REAL NULL -- real
,  [specindex_corr_tio1] REAL NULL -- real
,  [specindex_corr_tio2] REAL NULL -- real
,  [specindex_corr_hdeltaa] REAL NULL -- real
,  [specindex_corr_hgammaa] REAL NULL -- real
,  [specindex_corr_hdeltaf] REAL NULL -- real
,  [specindex_corr_hgammaf] REAL NULL -- real
,  [specindex_corr_cahk] REAL NULL -- real
,  [specindex_corr_caii1] REAL NULL -- real
,  [specindex_corr_caii2] REAL NULL -- real
,  [specindex_corr_caii3] REAL NULL -- real
,  [specindex_corr_pa17] REAL NULL -- real
,  [specindex_corr_pa14] REAL NULL -- real
,  [specindex_corr_pa12] REAL NULL -- real
,  [specindex_corr_mgicvd] REAL NULL -- real
,  [specindex_corr_naicvd] REAL NULL -- real
,  [specindex_corr_mgiir] REAL NULL -- real
,  [specindex_corr_fehcvd] REAL NULL -- real
,  [specindex_corr_nai] REAL NULL -- real
,  [specindex_corr_btio] REAL NULL -- real
,  [specindex_corr_atio] REAL NULL -- real
,  [specindex_corr_cah1] REAL NULL -- real
,  [specindex_corr_cah2] REAL NULL -- real
,  [specindex_corr_naisdss] REAL NULL -- real
,  [specindex_corr_tio2sdss] REAL NULL -- real
,  [specindex_corr_d4000] REAL NULL -- real
,  [specindex_corr_dn4000] REAL NULL -- real
,  [specindex_corr_tiocvd] REAL NULL -- real
)
with (location='manga.mangadapdb.[cleanspaxelprop7]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='cleanspaxelprop8')
begin drop external table mangadapdb.[cleanspaxelprop8] end

GO

CREATE EXTERNAL TABLE mangadapdb.[cleanspaxelprop8] (
   [pk] BIGINT NULL -- bigint
,  [file_pk] INTEGER NULL -- integer
,  [spaxel_index] INTEGER NULL -- integer
,  [binid_pk] INTEGER NULL -- integer
,  [x] INTEGER NULL -- integer
,  [y] INTEGER NULL -- integer
,  [spx_skycoo_on_sky_x] REAL NULL -- real
,  [spx_skycoo_on_sky_y] REAL NULL -- real
,  [spx_ellcoo_elliptical_radius] REAL NULL -- real
,  [spx_ellcoo_r_re] REAL NULL -- real
,  [spx_ellcoo_elliptical_azimuth] REAL NULL -- real
,  [spx_mflux] REAL NULL -- real
,  [spx_mflux_ivar] FLOAT NULL -- double precision
,  [spx_snr] REAL NULL -- real
,  [binid_binned_spectra] INTEGER NULL -- integer
,  [binid_stellar_continua] INTEGER NULL -- integer
,  [binid_em_line_moments] INTEGER NULL -- integer
,  [binid_em_line_models] INTEGER NULL -- integer
,  [binid_spectral_indices] INTEGER NULL -- integer
,  [bin_lwskycoo_lum_weighted_on_sky_x] REAL NULL -- real
,  [bin_lwskycoo_lum_weighted_on_sky_y] REAL NULL -- real
,  [bin_lwellcoo_lum_weighted_elliptical_radius] REAL NULL -- real
,  [bin_lwellcoo_r_re] REAL NULL -- real
,  [bin_lwellcoo_lum_weighted_elliptical_azimuth] REAL NULL -- real
,  [bin_area] REAL NULL -- real
,  [bin_farea] REAL NULL -- real
,  [bin_mflux] REAL NULL -- real
,  [bin_mflux_ivar] FLOAT NULL -- double precision
,  [bin_mflux_mask] INTEGER NULL -- integer
,  [bin_snr] REAL NULL -- real
,  [stellar_vel] REAL NULL -- real
,  [stellar_vel_ivar] FLOAT NULL -- double precision
,  [stellar_vel_mask] INTEGER NULL -- integer
,  [stellar_sigma] REAL NULL -- real
,  [stellar_sigma_ivar] FLOAT NULL -- double precision
,  [stellar_sigma_mask] INTEGER NULL -- integer
,  [stellar_sigmacorr_resolution_difference] REAL NULL -- real
,  [stellar_sigmacorr_fit] REAL NULL -- real
,  [stellar_fom_rms] REAL NULL -- real
,  [stellar_fom_frms] REAL NULL -- real
,  [stellar_fom_rchi2] REAL NULL -- real
,  [stellar_fom_68th_perc_frac_resid] REAL NULL -- real
,  [stellar_fom_99th_perc_frac_resid] REAL NULL -- real
,  [stellar_fom_max_frac_resid] REAL NULL -- real
,  [stellar_fom_68th_perc_per_pix_chi] REAL NULL -- real
,  [stellar_fom_99th_perc_per_pix_chi] REAL NULL -- real
,  [stellar_fom_max_per_pix_chi] REAL NULL -- real
,  [emline_sflux_oiid_3728] REAL NULL -- real
,  [emline_sflux_oii_3729] REAL NULL -- real
,  [emline_sflux_hthe_3798] REAL NULL -- real
,  [emline_sflux_heta_3836] REAL NULL -- real
,  [emline_sflux_neiii_3869] REAL NULL -- real
,  [emline_sflux_hzet_3890] REAL NULL -- real
,  [emline_sflux_neiii_3968] REAL NULL -- real
,  [emline_sflux_heps_3971] REAL NULL -- real
,  [emline_sflux_hdel_4102] REAL NULL -- real
,  [emline_sflux_hgam_4341] REAL NULL -- real
,  [emline_sflux_heii_4687] REAL NULL -- real
,  [emline_sflux_hb_4862] REAL NULL -- real
,  [emline_sflux_oiii_4960] REAL NULL -- real
,  [emline_sflux_oiii_5008] REAL NULL -- real
,  [emline_sflux_hei_5877] REAL NULL -- real
,  [emline_sflux_oi_6302] REAL NULL -- real
,  [emline_sflux_oi_6365] REAL NULL -- real
,  [emline_sflux_nii_6549] REAL NULL -- real
,  [emline_sflux_ha_6564] REAL NULL -- real
,  [emline_sflux_nii_6585] REAL NULL -- real
,  [emline_sflux_sii_6718] REAL NULL -- real
,  [emline_sflux_sii_6732] REAL NULL -- real
,  [emline_sflux_hei_3889] REAL NULL -- real
,  [emline_sflux_ni_5199] REAL NULL -- real
,  [emline_sflux_ni_5201] REAL NULL -- real
,  [emline_sflux_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_sflux_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_sflux_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_sflux_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_sflux_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_sflux_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_sflux_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_sflux_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hei_3889] FLOAT NULL -- double precision
,  [emline_sflux_ivar_ni_5199] FLOAT NULL -- double precision
,  [emline_sflux_ivar_ni_5201] FLOAT NULL -- double precision
,  [emline_sflux_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_sflux_mask_oii_3729] INTEGER NULL -- integer
,  [emline_sflux_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_sflux_mask_heta_3836] INTEGER NULL -- integer
,  [emline_sflux_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_sflux_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_sflux_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_sflux_mask_heps_3971] INTEGER NULL -- integer
,  [emline_sflux_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_sflux_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_sflux_mask_heii_4687] INTEGER NULL -- integer
,  [emline_sflux_mask_hb_4862] INTEGER NULL -- integer
,  [emline_sflux_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_sflux_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_sflux_mask_hei_5877] INTEGER NULL -- integer
,  [emline_sflux_mask_oi_6302] INTEGER NULL -- integer
,  [emline_sflux_mask_oi_6365] INTEGER NULL -- integer
,  [emline_sflux_mask_nii_6549] INTEGER NULL -- integer
,  [emline_sflux_mask_ha_6564] INTEGER NULL -- integer
,  [emline_sflux_mask_nii_6585] INTEGER NULL -- integer
,  [emline_sflux_mask_sii_6718] INTEGER NULL -- integer
,  [emline_sflux_mask_sii_6732] INTEGER NULL -- integer
,  [emline_sflux_mask_hei_3889] INTEGER NULL -- integer
,  [emline_sflux_mask_ni_5199] INTEGER NULL -- integer
,  [emline_sflux_mask_ni_5201] INTEGER NULL -- integer
,  [emline_sew_oiid_3728] FLOAT NULL -- double precision
,  [emline_sew_oii_3729] FLOAT NULL -- double precision
,  [emline_sew_hthe_3798] FLOAT NULL -- double precision
,  [emline_sew_heta_3836] FLOAT NULL -- double precision
,  [emline_sew_neiii_3869] FLOAT NULL -- double precision
,  [emline_sew_hzet_3890] FLOAT NULL -- double precision
,  [emline_sew_neiii_3968] FLOAT NULL -- double precision
,  [emline_sew_heps_3971] FLOAT NULL -- double precision
,  [emline_sew_hdel_4102] FLOAT NULL -- double precision
,  [emline_sew_hgam_4341] FLOAT NULL -- double precision
,  [emline_sew_heii_4687] FLOAT NULL -- double precision
,  [emline_sew_hb_4862] FLOAT NULL -- double precision
,  [emline_sew_oiii_4960] FLOAT NULL -- double precision
,  [emline_sew_oiii_5008] FLOAT NULL -- double precision
,  [emline_sew_hei_5877] FLOAT NULL -- double precision
,  [emline_sew_oi_6302] FLOAT NULL -- double precision
,  [emline_sew_oi_6365] FLOAT NULL -- double precision
,  [emline_sew_nii_6549] FLOAT NULL -- double precision
,  [emline_sew_ha_6564] FLOAT NULL -- double precision
,  [emline_sew_nii_6585] FLOAT NULL -- double precision
,  [emline_sew_sii_6718] FLOAT NULL -- double precision
,  [emline_sew_sii_6732] FLOAT NULL -- double precision
,  [emline_sew_hei_3889] FLOAT NULL -- double precision
,  [emline_sew_ni_5199] FLOAT NULL -- double precision
,  [emline_sew_ni_5201] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_sew_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_sew_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_sew_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_sew_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_sew_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_sew_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_sew_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_sew_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_sew_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_sew_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_sew_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_sew_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_sew_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_sew_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_sew_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_sew_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_sew_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_sew_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_sew_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_sew_ivar_hei_3889] FLOAT NULL -- double precision
,  [emline_sew_ivar_ni_5199] FLOAT NULL -- double precision
,  [emline_sew_ivar_ni_5201] FLOAT NULL -- double precision
,  [emline_sew_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_sew_mask_oii_3729] INTEGER NULL -- integer
,  [emline_sew_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_sew_mask_heta_3836] INTEGER NULL -- integer
,  [emline_sew_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_sew_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_sew_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_sew_mask_heps_3971] INTEGER NULL -- integer
,  [emline_sew_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_sew_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_sew_mask_heii_4687] INTEGER NULL -- integer
,  [emline_sew_mask_hb_4862] INTEGER NULL -- integer
,  [emline_sew_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_sew_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_sew_mask_hei_5877] INTEGER NULL -- integer
,  [emline_sew_mask_oi_6302] INTEGER NULL -- integer
,  [emline_sew_mask_oi_6365] INTEGER NULL -- integer
,  [emline_sew_mask_nii_6549] INTEGER NULL -- integer
,  [emline_sew_mask_ha_6564] INTEGER NULL -- integer
,  [emline_sew_mask_nii_6585] INTEGER NULL -- integer
,  [emline_sew_mask_sii_6718] INTEGER NULL -- integer
,  [emline_sew_mask_sii_6732] INTEGER NULL -- integer
,  [emline_sew_mask_hei_3889] INTEGER NULL -- integer
,  [emline_sew_mask_ni_5199] INTEGER NULL -- integer
,  [emline_sew_mask_ni_5201] INTEGER NULL -- integer
,  [emline_gflux_oii_3727] REAL NULL -- real
,  [emline_gflux_oii_3729] REAL NULL -- real
,  [emline_gflux_hthe_3798] REAL NULL -- real
,  [emline_gflux_heta_3836] REAL NULL -- real
,  [emline_gflux_neiii_3869] REAL NULL -- real
,  [emline_gflux_hzet_3890] REAL NULL -- real
,  [emline_gflux_neiii_3968] REAL NULL -- real
,  [emline_gflux_heps_3971] REAL NULL -- real
,  [emline_gflux_hdel_4102] REAL NULL -- real
,  [emline_gflux_hgam_4341] REAL NULL -- real
,  [emline_gflux_heii_4687] REAL NULL -- real
,  [emline_gflux_hb_4862] REAL NULL -- real
,  [emline_gflux_oiii_4960] REAL NULL -- real
,  [emline_gflux_oiii_5008] REAL NULL -- real
,  [emline_gflux_hei_5877] REAL NULL -- real
,  [emline_gflux_oi_6302] REAL NULL -- real
,  [emline_gflux_oi_6365] REAL NULL -- real
,  [emline_gflux_nii_6549] REAL NULL -- real
,  [emline_gflux_ha_6564] REAL NULL -- real
,  [emline_gflux_nii_6585] REAL NULL -- real
,  [emline_gflux_sii_6718] REAL NULL -- real
,  [emline_gflux_sii_6732] REAL NULL -- real
,  [emline_gflux_hei_3889] REAL NULL -- real
,  [emline_gflux_ni_5199] REAL NULL -- real
,  [emline_gflux_ni_5201] REAL NULL -- real
,  [emline_gflux_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gflux_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gflux_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gflux_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gflux_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gflux_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gflux_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gflux_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hei_3889] FLOAT NULL -- double precision
,  [emline_gflux_ivar_ni_5199] FLOAT NULL -- double precision
,  [emline_gflux_ivar_ni_5201] FLOAT NULL -- double precision
,  [emline_gflux_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gflux_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gflux_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gflux_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gflux_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gflux_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gflux_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gflux_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gflux_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gflux_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gflux_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gflux_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gflux_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gflux_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gflux_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gflux_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gflux_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gflux_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gflux_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gflux_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gflux_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gflux_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gflux_mask_hei_3889] INTEGER NULL -- integer
,  [emline_gflux_mask_ni_5199] INTEGER NULL -- integer
,  [emline_gflux_mask_ni_5201] INTEGER NULL -- integer
,  [emline_gew_oii_3727] FLOAT NULL -- double precision
,  [emline_gew_oii_3729] FLOAT NULL -- double precision
,  [emline_gew_hthe_3798] FLOAT NULL -- double precision
,  [emline_gew_heta_3836] FLOAT NULL -- double precision
,  [emline_gew_neiii_3869] FLOAT NULL -- double precision
,  [emline_gew_hzet_3890] FLOAT NULL -- double precision
,  [emline_gew_neiii_3968] FLOAT NULL -- double precision
,  [emline_gew_heps_3971] FLOAT NULL -- double precision
,  [emline_gew_hdel_4102] FLOAT NULL -- double precision
,  [emline_gew_hgam_4341] FLOAT NULL -- double precision
,  [emline_gew_heii_4687] FLOAT NULL -- double precision
,  [emline_gew_hb_4862] FLOAT NULL -- double precision
,  [emline_gew_oiii_4960] FLOAT NULL -- double precision
,  [emline_gew_oiii_5008] FLOAT NULL -- double precision
,  [emline_gew_hei_5877] FLOAT NULL -- double precision
,  [emline_gew_oi_6302] FLOAT NULL -- double precision
,  [emline_gew_oi_6365] FLOAT NULL -- double precision
,  [emline_gew_nii_6549] FLOAT NULL -- double precision
,  [emline_gew_ha_6564] FLOAT NULL -- double precision
,  [emline_gew_nii_6585] FLOAT NULL -- double precision
,  [emline_gew_sii_6718] FLOAT NULL -- double precision
,  [emline_gew_sii_6732] FLOAT NULL -- double precision
,  [emline_gew_hei_3889] FLOAT NULL -- double precision
,  [emline_gew_ni_5199] FLOAT NULL -- double precision
,  [emline_gew_ni_5201] FLOAT NULL -- double precision
,  [emline_gew_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gew_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gew_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gew_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gew_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gew_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gew_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gew_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gew_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gew_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gew_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gew_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gew_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gew_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gew_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gew_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gew_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gew_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gew_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gew_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gew_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gew_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gew_ivar_hei_3889] FLOAT NULL -- double precision
,  [emline_gew_ivar_ni_5199] FLOAT NULL -- double precision
,  [emline_gew_ivar_ni_5201] FLOAT NULL -- double precision
,  [emline_gew_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gew_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gew_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gew_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gew_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gew_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gew_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gew_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gew_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gew_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gew_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gew_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gew_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gew_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gew_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gew_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gew_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gew_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gew_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gew_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gew_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gew_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gew_mask_hei_3889] INTEGER NULL -- integer
,  [emline_gew_mask_ni_5199] INTEGER NULL -- integer
,  [emline_gew_mask_ni_5201] INTEGER NULL -- integer
,  [emline_gvel_oii_3727] REAL NULL -- real
,  [emline_gvel_oii_3729] REAL NULL -- real
,  [emline_gvel_hthe_3798] REAL NULL -- real
,  [emline_gvel_heta_3836] REAL NULL -- real
,  [emline_gvel_neiii_3869] REAL NULL -- real
,  [emline_gvel_hzet_3890] REAL NULL -- real
,  [emline_gvel_neiii_3968] REAL NULL -- real
,  [emline_gvel_heps_3971] REAL NULL -- real
,  [emline_gvel_hdel_4102] REAL NULL -- real
,  [emline_gvel_hgam_4341] REAL NULL -- real
,  [emline_gvel_heii_4687] REAL NULL -- real
,  [emline_gvel_hb_4862] REAL NULL -- real
,  [emline_gvel_oiii_4960] REAL NULL -- real
,  [emline_gvel_oiii_5008] REAL NULL -- real
,  [emline_gvel_hei_5877] REAL NULL -- real
,  [emline_gvel_oi_6302] REAL NULL -- real
,  [emline_gvel_oi_6365] REAL NULL -- real
,  [emline_gvel_nii_6549] REAL NULL -- real
,  [emline_gvel_ha_6564] REAL NULL -- real
,  [emline_gvel_nii_6585] REAL NULL -- real
,  [emline_gvel_sii_6718] REAL NULL -- real
,  [emline_gvel_sii_6732] REAL NULL -- real
,  [emline_gvel_hei_3889] REAL NULL -- real
,  [emline_gvel_ni_5199] REAL NULL -- real
,  [emline_gvel_ni_5201] REAL NULL -- real
,  [emline_gvel_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gvel_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gvel_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gvel_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gvel_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gvel_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gvel_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gvel_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hei_3889] FLOAT NULL -- double precision
,  [emline_gvel_ivar_ni_5199] FLOAT NULL -- double precision
,  [emline_gvel_ivar_ni_5201] FLOAT NULL -- double precision
,  [emline_gvel_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gvel_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gvel_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gvel_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gvel_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gvel_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gvel_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gvel_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gvel_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gvel_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gvel_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gvel_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gvel_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gvel_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gvel_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gvel_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gvel_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gvel_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gvel_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gvel_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gvel_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gvel_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gvel_mask_hei_3889] INTEGER NULL -- integer
,  [emline_gvel_mask_ni_5199] INTEGER NULL -- integer
,  [emline_gvel_mask_ni_5201] INTEGER NULL -- integer
,  [emline_gsigma_oii_3727] REAL NULL -- real
,  [emline_gsigma_oii_3729] REAL NULL -- real
,  [emline_gsigma_hthe_3798] REAL NULL -- real
,  [emline_gsigma_heta_3836] REAL NULL -- real
,  [emline_gsigma_neiii_3869] REAL NULL -- real
,  [emline_gsigma_hzet_3890] REAL NULL -- real
,  [emline_gsigma_neiii_3968] REAL NULL -- real
,  [emline_gsigma_heps_3971] REAL NULL -- real
,  [emline_gsigma_hdel_4102] REAL NULL -- real
,  [emline_gsigma_hgam_4341] REAL NULL -- real
,  [emline_gsigma_heii_4687] REAL NULL -- real
,  [emline_gsigma_hb_4862] REAL NULL -- real
,  [emline_gsigma_oiii_4960] REAL NULL -- real
,  [emline_gsigma_oiii_5008] REAL NULL -- real
,  [emline_gsigma_hei_5877] REAL NULL -- real
,  [emline_gsigma_oi_6302] REAL NULL -- real
,  [emline_gsigma_oi_6365] REAL NULL -- real
,  [emline_gsigma_nii_6549] REAL NULL -- real
,  [emline_gsigma_ha_6564] REAL NULL -- real
,  [emline_gsigma_nii_6585] REAL NULL -- real
,  [emline_gsigma_sii_6718] REAL NULL -- real
,  [emline_gsigma_sii_6732] REAL NULL -- real
,  [emline_gsigma_hei_3889] REAL NULL -- real
,  [emline_gsigma_ni_5199] REAL NULL -- real
,  [emline_gsigma_ni_5201] REAL NULL -- real
,  [emline_gsigma_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hei_3889] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_ni_5199] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_ni_5201] FLOAT NULL -- double precision
,  [emline_gsigma_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gsigma_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gsigma_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gsigma_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gsigma_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gsigma_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gsigma_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gsigma_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gsigma_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gsigma_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gsigma_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gsigma_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gsigma_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gsigma_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gsigma_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gsigma_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gsigma_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gsigma_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gsigma_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gsigma_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gsigma_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gsigma_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gsigma_mask_hei_3889] INTEGER NULL -- integer
,  [emline_gsigma_mask_ni_5199] INTEGER NULL -- integer
,  [emline_gsigma_mask_ni_5201] INTEGER NULL -- integer
,  [emline_instsigma_oii_3727] REAL NULL -- real
,  [emline_instsigma_oii_3729] REAL NULL -- real
,  [emline_instsigma_hthe_3798] REAL NULL -- real
,  [emline_instsigma_heta_3836] REAL NULL -- real
,  [emline_instsigma_neiii_3869] REAL NULL -- real
,  [emline_instsigma_hzet_3890] REAL NULL -- real
,  [emline_instsigma_neiii_3968] REAL NULL -- real
,  [emline_instsigma_heps_3971] REAL NULL -- real
,  [emline_instsigma_hdel_4102] REAL NULL -- real
,  [emline_instsigma_hgam_4341] REAL NULL -- real
,  [emline_instsigma_heii_4687] REAL NULL -- real
,  [emline_instsigma_hb_4862] REAL NULL -- real
,  [emline_instsigma_oiii_4960] REAL NULL -- real
,  [emline_instsigma_oiii_5008] REAL NULL -- real
,  [emline_instsigma_hei_5877] REAL NULL -- real
,  [emline_instsigma_oi_6302] REAL NULL -- real
,  [emline_instsigma_oi_6365] REAL NULL -- real
,  [emline_instsigma_nii_6549] REAL NULL -- real
,  [emline_instsigma_ha_6564] REAL NULL -- real
,  [emline_instsigma_nii_6585] REAL NULL -- real
,  [emline_instsigma_sii_6718] REAL NULL -- real
,  [emline_instsigma_sii_6732] REAL NULL -- real
,  [emline_instsigma_hei_3889] REAL NULL -- real
,  [emline_instsigma_ni_5199] REAL NULL -- real
,  [emline_instsigma_ni_5201] REAL NULL -- real
,  [emline_tplsigma_oii_3727] REAL NULL -- real
,  [emline_tplsigma_oii_3729] REAL NULL -- real
,  [emline_tplsigma_hthe_3798] REAL NULL -- real
,  [emline_tplsigma_heta_3836] REAL NULL -- real
,  [emline_tplsigma_neiii_3869] REAL NULL -- real
,  [emline_tplsigma_hzet_3890] REAL NULL -- real
,  [emline_tplsigma_neiii_3968] REAL NULL -- real
,  [emline_tplsigma_heps_3971] REAL NULL -- real
,  [emline_tplsigma_hdel_4102] REAL NULL -- real
,  [emline_tplsigma_hgam_4341] REAL NULL -- real
,  [emline_tplsigma_heii_4687] REAL NULL -- real
,  [emline_tplsigma_hb_4862] REAL NULL -- real
,  [emline_tplsigma_oiii_4960] REAL NULL -- real
,  [emline_tplsigma_oiii_5008] REAL NULL -- real
,  [emline_tplsigma_hei_5877] REAL NULL -- real
,  [emline_tplsigma_oi_6302] REAL NULL -- real
,  [emline_tplsigma_oi_6365] REAL NULL -- real
,  [emline_tplsigma_nii_6549] REAL NULL -- real
,  [emline_tplsigma_ha_6564] REAL NULL -- real
,  [emline_tplsigma_nii_6585] REAL NULL -- real
,  [emline_tplsigma_sii_6718] REAL NULL -- real
,  [emline_tplsigma_sii_6732] REAL NULL -- real
,  [emline_tplsigma_hei_3889] REAL NULL -- real
,  [emline_tplsigma_ni_5199] REAL NULL -- real
,  [emline_tplsigma_ni_5201] REAL NULL -- real
,  [emline_ga_oii_3727] REAL NULL -- real
,  [emline_ga_oii_3729] REAL NULL -- real
,  [emline_ga_hthe_3798] REAL NULL -- real
,  [emline_ga_heta_3836] REAL NULL -- real
,  [emline_ga_neiii_3869] REAL NULL -- real
,  [emline_ga_hzet_3890] REAL NULL -- real
,  [emline_ga_neiii_3968] REAL NULL -- real
,  [emline_ga_heps_3971] REAL NULL -- real
,  [emline_ga_hdel_4102] REAL NULL -- real
,  [emline_ga_hgam_4341] REAL NULL -- real
,  [emline_ga_heii_4687] REAL NULL -- real
,  [emline_ga_hb_4862] REAL NULL -- real
,  [emline_ga_oiii_4960] REAL NULL -- real
,  [emline_ga_oiii_5008] REAL NULL -- real
,  [emline_ga_hei_5877] REAL NULL -- real
,  [emline_ga_oi_6302] REAL NULL -- real
,  [emline_ga_oi_6365] REAL NULL -- real
,  [emline_ga_nii_6549] REAL NULL -- real
,  [emline_ga_ha_6564] REAL NULL -- real
,  [emline_ga_nii_6585] REAL NULL -- real
,  [emline_ga_sii_6718] REAL NULL -- real
,  [emline_ga_sii_6732] REAL NULL -- real
,  [emline_ga_hei_3889] REAL NULL -- real
,  [emline_ga_ni_5199] REAL NULL -- real
,  [emline_ga_ni_5201] REAL NULL -- real
,  [emline_ganr_oii_3727] REAL NULL -- real
,  [emline_ganr_oii_3729] REAL NULL -- real
,  [emline_ganr_hthe_3798] REAL NULL -- real
,  [emline_ganr_heta_3836] REAL NULL -- real
,  [emline_ganr_neiii_3869] REAL NULL -- real
,  [emline_ganr_hzet_3890] REAL NULL -- real
,  [emline_ganr_neiii_3968] REAL NULL -- real
,  [emline_ganr_heps_3971] REAL NULL -- real
,  [emline_ganr_hdel_4102] REAL NULL -- real
,  [emline_ganr_hgam_4341] REAL NULL -- real
,  [emline_ganr_heii_4687] REAL NULL -- real
,  [emline_ganr_hb_4862] REAL NULL -- real
,  [emline_ganr_oiii_4960] REAL NULL -- real
,  [emline_ganr_oiii_5008] REAL NULL -- real
,  [emline_ganr_hei_5877] REAL NULL -- real
,  [emline_ganr_oi_6302] REAL NULL -- real
,  [emline_ganr_oi_6365] REAL NULL -- real
,  [emline_ganr_nii_6549] REAL NULL -- real
,  [emline_ganr_ha_6564] REAL NULL -- real
,  [emline_ganr_nii_6585] REAL NULL -- real
,  [emline_ganr_sii_6718] REAL NULL -- real
,  [emline_ganr_sii_6732] REAL NULL -- real
,  [emline_ganr_hei_3889] REAL NULL -- real
,  [emline_ganr_ni_5199] REAL NULL -- real
,  [emline_ganr_ni_5201] REAL NULL -- real
,  [emline_fom_rms] REAL NULL -- real
,  [emline_fom_frms] REAL NULL -- real
,  [emline_fom_rchi2] REAL NULL -- real
,  [emline_fom_68th_perc_frac_resid] REAL NULL -- real
,  [emline_fom_99th_perc_frac_resid] REAL NULL -- real
,  [emline_fom_max_frac_resid] REAL NULL -- real
,  [emline_fom_68th_perc_per_pix_chi] REAL NULL -- real
,  [emline_fom_99th_perc_per_pix_chi] REAL NULL -- real
,  [emline_fom_max_per_pix_chi] REAL NULL -- real
,  [emline_lfom_oii_3727] REAL NULL -- real
,  [emline_lfom_oii_3729] REAL NULL -- real
,  [emline_lfom_hthe_3798] REAL NULL -- real
,  [emline_lfom_heta_3836] REAL NULL -- real
,  [emline_lfom_neiii_3869] REAL NULL -- real
,  [emline_lfom_hzet_3890] REAL NULL -- real
,  [emline_lfom_neiii_3968] REAL NULL -- real
,  [emline_lfom_heps_3971] REAL NULL -- real
,  [emline_lfom_hdel_4102] REAL NULL -- real
,  [emline_lfom_hgam_4341] REAL NULL -- real
,  [emline_lfom_heii_4687] REAL NULL -- real
,  [emline_lfom_hb_4862] REAL NULL -- real
,  [emline_lfom_oiii_4960] REAL NULL -- real
,  [emline_lfom_oiii_5008] REAL NULL -- real
,  [emline_lfom_hei_5877] REAL NULL -- real
,  [emline_lfom_oi_6302] REAL NULL -- real
,  [emline_lfom_oi_6365] REAL NULL -- real
,  [emline_lfom_nii_6549] REAL NULL -- real
,  [emline_lfom_ha_6564] REAL NULL -- real
,  [emline_lfom_nii_6585] REAL NULL -- real
,  [emline_lfom_sii_6718] REAL NULL -- real
,  [emline_lfom_sii_6732] REAL NULL -- real
,  [emline_lfom_hei_3889] REAL NULL -- real
,  [emline_lfom_ni_5199] REAL NULL -- real
,  [emline_lfom_ni_5201] REAL NULL -- real
,  [specindex_cn1] REAL NULL -- real
,  [specindex_cn2] REAL NULL -- real
,  [specindex_ca4227] REAL NULL -- real
,  [specindex_g4300] REAL NULL -- real
,  [specindex_fe4383] REAL NULL -- real
,  [specindex_ca4455] REAL NULL -- real
,  [specindex_fe4531] REAL NULL -- real
,  [specindex_c24668] REAL NULL -- real
,  [specindex_hb] REAL NULL -- real
,  [specindex_fe5015] REAL NULL -- real
,  [specindex_mg1] REAL NULL -- real
,  [specindex_mg2] REAL NULL -- real
,  [specindex_mgb] REAL NULL -- real
,  [specindex_fe5270] REAL NULL -- real
,  [specindex_fe5335] REAL NULL -- real
,  [specindex_fe5406] REAL NULL -- real
,  [specindex_fe5709] REAL NULL -- real
,  [specindex_fe5782] REAL NULL -- real
,  [specindex_nad] REAL NULL -- real
,  [specindex_tio1] REAL NULL -- real
,  [specindex_tio2] REAL NULL -- real
,  [specindex_hdeltaa] REAL NULL -- real
,  [specindex_hgammaa] REAL NULL -- real
,  [specindex_hdeltaf] REAL NULL -- real
,  [specindex_hgammaf] REAL NULL -- real
,  [specindex_cahk] REAL NULL -- real
,  [specindex_caii1] REAL NULL -- real
,  [specindex_caii2] REAL NULL -- real
,  [specindex_caii3] REAL NULL -- real
,  [specindex_pa17] REAL NULL -- real
,  [specindex_pa14] REAL NULL -- real
,  [specindex_pa12] REAL NULL -- real
,  [specindex_mgicvd] REAL NULL -- real
,  [specindex_naicvd] REAL NULL -- real
,  [specindex_mgiir] REAL NULL -- real
,  [specindex_fehcvd] REAL NULL -- real
,  [specindex_nai] REAL NULL -- real
,  [specindex_btio] REAL NULL -- real
,  [specindex_atio] REAL NULL -- real
,  [specindex_cah1] REAL NULL -- real
,  [specindex_cah2] REAL NULL -- real
,  [specindex_naisdss] REAL NULL -- real
,  [specindex_tio2sdss] REAL NULL -- real
,  [specindex_d4000] REAL NULL -- real
,  [specindex_dn4000] REAL NULL -- real
,  [specindex_tiocvd] REAL NULL -- real
,  [specindex_ivar_cn1] FLOAT NULL -- double precision
,  [specindex_ivar_cn2] FLOAT NULL -- double precision
,  [specindex_ivar_ca4227] FLOAT NULL -- double precision
,  [specindex_ivar_g4300] FLOAT NULL -- double precision
,  [specindex_ivar_fe4383] FLOAT NULL -- double precision
,  [specindex_ivar_ca4455] FLOAT NULL -- double precision
,  [specindex_ivar_fe4531] FLOAT NULL -- double precision
,  [specindex_ivar_c24668] FLOAT NULL -- double precision
,  [specindex_ivar_hb] FLOAT NULL -- double precision
,  [specindex_ivar_fe5015] FLOAT NULL -- double precision
,  [specindex_ivar_mg1] FLOAT NULL -- double precision
,  [specindex_ivar_mg2] FLOAT NULL -- double precision
,  [specindex_ivar_mgb] FLOAT NULL -- double precision
,  [specindex_ivar_fe5270] FLOAT NULL -- double precision
,  [specindex_ivar_fe5335] FLOAT NULL -- double precision
,  [specindex_ivar_fe5406] FLOAT NULL -- double precision
,  [specindex_ivar_fe5709] FLOAT NULL -- double precision
,  [specindex_ivar_fe5782] FLOAT NULL -- double precision
,  [specindex_ivar_nad] FLOAT NULL -- double precision
,  [specindex_ivar_tio1] FLOAT NULL -- double precision
,  [specindex_ivar_tio2] FLOAT NULL -- double precision
,  [specindex_ivar_hdeltaa] FLOAT NULL -- double precision
,  [specindex_ivar_hgammaa] FLOAT NULL -- double precision
,  [specindex_ivar_hdeltaf] FLOAT NULL -- double precision
,  [specindex_ivar_hgammaf] FLOAT NULL -- double precision
,  [specindex_ivar_cahk] FLOAT NULL -- double precision
,  [specindex_ivar_caii1] FLOAT NULL -- double precision
,  [specindex_ivar_caii2] FLOAT NULL -- double precision
,  [specindex_ivar_caii3] FLOAT NULL -- double precision
,  [specindex_ivar_pa17] FLOAT NULL -- double precision
,  [specindex_ivar_pa14] FLOAT NULL -- double precision
,  [specindex_ivar_pa12] FLOAT NULL -- double precision
,  [specindex_ivar_mgicvd] FLOAT NULL -- double precision
,  [specindex_ivar_naicvd] FLOAT NULL -- double precision
,  [specindex_ivar_mgiir] FLOAT NULL -- double precision
,  [specindex_ivar_fehcvd] FLOAT NULL -- double precision
,  [specindex_ivar_nai] FLOAT NULL -- double precision
,  [specindex_ivar_btio] FLOAT NULL -- double precision
,  [specindex_ivar_atio] FLOAT NULL -- double precision
,  [specindex_ivar_cah1] FLOAT NULL -- double precision
,  [specindex_ivar_cah2] FLOAT NULL -- double precision
,  [specindex_ivar_naisdss] FLOAT NULL -- double precision
,  [specindex_ivar_tio2sdss] FLOAT NULL -- double precision
,  [specindex_ivar_d4000] FLOAT NULL -- double precision
,  [specindex_ivar_dn4000] FLOAT NULL -- double precision
,  [specindex_ivar_tiocvd] FLOAT NULL -- double precision
,  [specindex_mask_cn1] INTEGER NULL -- integer
,  [specindex_mask_cn2] INTEGER NULL -- integer
,  [specindex_mask_ca4227] INTEGER NULL -- integer
,  [specindex_mask_g4300] INTEGER NULL -- integer
,  [specindex_mask_fe4383] INTEGER NULL -- integer
,  [specindex_mask_ca4455] INTEGER NULL -- integer
,  [specindex_mask_fe4531] INTEGER NULL -- integer
,  [specindex_mask_c24668] INTEGER NULL -- integer
,  [specindex_mask_hb] INTEGER NULL -- integer
,  [specindex_mask_fe5015] INTEGER NULL -- integer
,  [specindex_mask_mg1] INTEGER NULL -- integer
,  [specindex_mask_mg2] INTEGER NULL -- integer
,  [specindex_mask_mgb] INTEGER NULL -- integer
,  [specindex_mask_fe5270] INTEGER NULL -- integer
,  [specindex_mask_fe5335] INTEGER NULL -- integer
,  [specindex_mask_fe5406] INTEGER NULL -- integer
,  [specindex_mask_fe5709] INTEGER NULL -- integer
,  [specindex_mask_fe5782] INTEGER NULL -- integer
,  [specindex_mask_nad] INTEGER NULL -- integer
,  [specindex_mask_tio1] INTEGER NULL -- integer
,  [specindex_mask_tio2] INTEGER NULL -- integer
,  [specindex_mask_hdeltaa] INTEGER NULL -- integer
,  [specindex_mask_hgammaa] INTEGER NULL -- integer
,  [specindex_mask_hdeltaf] INTEGER NULL -- integer
,  [specindex_mask_hgammaf] INTEGER NULL -- integer
,  [specindex_mask_cahk] INTEGER NULL -- integer
,  [specindex_mask_caii1] INTEGER NULL -- integer
,  [specindex_mask_caii2] INTEGER NULL -- integer
,  [specindex_mask_caii3] INTEGER NULL -- integer
,  [specindex_mask_pa17] INTEGER NULL -- integer
,  [specindex_mask_pa14] INTEGER NULL -- integer
,  [specindex_mask_pa12] INTEGER NULL -- integer
,  [specindex_mask_mgicvd] INTEGER NULL -- integer
,  [specindex_mask_naicvd] INTEGER NULL -- integer
,  [specindex_mask_mgiir] INTEGER NULL -- integer
,  [specindex_mask_fehcvd] INTEGER NULL -- integer
,  [specindex_mask_nai] INTEGER NULL -- integer
,  [specindex_mask_btio] INTEGER NULL -- integer
,  [specindex_mask_atio] INTEGER NULL -- integer
,  [specindex_mask_cah1] INTEGER NULL -- integer
,  [specindex_mask_cah2] INTEGER NULL -- integer
,  [specindex_mask_naisdss] INTEGER NULL -- integer
,  [specindex_mask_tio2sdss] INTEGER NULL -- integer
,  [specindex_mask_d4000] INTEGER NULL -- integer
,  [specindex_mask_dn4000] INTEGER NULL -- integer
,  [specindex_mask_tiocvd] INTEGER NULL -- integer
,  [specindex_corr_cn1] REAL NULL -- real
,  [specindex_corr_cn2] REAL NULL -- real
,  [specindex_corr_ca4227] REAL NULL -- real
,  [specindex_corr_g4300] REAL NULL -- real
,  [specindex_corr_fe4383] REAL NULL -- real
,  [specindex_corr_ca4455] REAL NULL -- real
,  [specindex_corr_fe4531] REAL NULL -- real
,  [specindex_corr_c24668] REAL NULL -- real
,  [specindex_corr_hb] REAL NULL -- real
,  [specindex_corr_fe5015] REAL NULL -- real
,  [specindex_corr_mg1] REAL NULL -- real
,  [specindex_corr_mg2] REAL NULL -- real
,  [specindex_corr_mgb] REAL NULL -- real
,  [specindex_corr_fe5270] REAL NULL -- real
,  [specindex_corr_fe5335] REAL NULL -- real
,  [specindex_corr_fe5406] REAL NULL -- real
,  [specindex_corr_fe5709] REAL NULL -- real
,  [specindex_corr_fe5782] REAL NULL -- real
,  [specindex_corr_nad] REAL NULL -- real
,  [specindex_corr_tio1] REAL NULL -- real
,  [specindex_corr_tio2] REAL NULL -- real
,  [specindex_corr_hdeltaa] REAL NULL -- real
,  [specindex_corr_hgammaa] REAL NULL -- real
,  [specindex_corr_hdeltaf] REAL NULL -- real
,  [specindex_corr_hgammaf] REAL NULL -- real
,  [specindex_corr_cahk] REAL NULL -- real
,  [specindex_corr_caii1] REAL NULL -- real
,  [specindex_corr_caii2] REAL NULL -- real
,  [specindex_corr_caii3] REAL NULL -- real
,  [specindex_corr_pa17] REAL NULL -- real
,  [specindex_corr_pa14] REAL NULL -- real
,  [specindex_corr_pa12] REAL NULL -- real
,  [specindex_corr_mgicvd] REAL NULL -- real
,  [specindex_corr_naicvd] REAL NULL -- real
,  [specindex_corr_mgiir] REAL NULL -- real
,  [specindex_corr_fehcvd] REAL NULL -- real
,  [specindex_corr_nai] REAL NULL -- real
,  [specindex_corr_btio] REAL NULL -- real
,  [specindex_corr_atio] REAL NULL -- real
,  [specindex_corr_cah1] REAL NULL -- real
,  [specindex_corr_cah2] REAL NULL -- real
,  [specindex_corr_naisdss] REAL NULL -- real
,  [specindex_corr_tio2sdss] REAL NULL -- real
,  [specindex_corr_d4000] REAL NULL -- real
,  [specindex_corr_dn4000] REAL NULL -- real
,  [specindex_corr_tiocvd] REAL NULL -- real
)
with (location='manga.mangadapdb.[cleanspaxelprop8]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='current_default')
begin drop external table mangadapdb.[current_default] end

GO

CREATE EXTERNAL TABLE mangadapdb.[current_default] (
   [pk] INTEGER NOT NULL -- integer
,  [filename] NVARCHAR(MAX) NULL -- text
,  [filepath] NVARCHAR(MAX) NULL -- text
,  [file_pk] INTEGER NULL -- integer
)
with (location='manga.mangadapdb.[current_default]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='dapall')
begin drop external table mangadapdb.[dapall] end

GO

CREATE EXTERNAL TABLE mangadapdb.[dapall] (
   [pk] INTEGER NOT NULL -- integer
,  [file_pk] INTEGER NULL -- integer
,  [plate] INTEGER NULL -- integer
,  [ifudesign] INTEGER NULL -- integer
,  [plateifu] NVARCHAR(MAX) NULL -- character varying
,  [mangaid] NVARCHAR(MAX) NULL -- character varying
,  [drpallindx] INTEGER NULL -- integer
,  [mode] NVARCHAR(MAX) NULL -- character varying
,  [daptype] NVARCHAR(MAX) NULL -- character varying
,  [dapdone] NVARCHAR(MAX) NULL -- character varying
,  [objra] REAL NULL -- real
,  [objdec] REAL NULL -- real
,  [ifura] REAL NULL -- real
,  [ifudec] REAL NULL -- real
,  [mngtarg1] INTEGER NULL -- integer
,  [mngtarg2] INTEGER NULL -- integer
,  [mngtarg3] INTEGER NULL -- integer
,  [z] REAL NULL -- real
,  [ldist_z] REAL NULL -- real
,  [adist_z] REAL NULL -- real
,  [nsa_z] REAL NULL -- real
,  [nsa_zdist] REAL NULL -- real
,  [ldist_nsa_z] REAL NULL -- real
,  [adist_nsa_z] REAL NULL -- real
,  [nsa_elpetro_ba] REAL NULL -- real
,  [nsa_elpetro_phi] REAL NULL -- real
,  [nsa_elpetro_th50_r] REAL NULL -- real
,  [nsa_sersic_ba] REAL NULL -- real
,  [nsa_sersic_phi] REAL NULL -- real
,  [nsa_sersic_th50] REAL NULL -- real
,  [nsa_sersic_n] REAL NULL -- real
,  [versdrp2] NVARCHAR(MAX) NULL -- character varying
,  [versdrp3] NVARCHAR(MAX) NULL -- character varying
,  [verscore] NVARCHAR(MAX) NULL -- character varying
,  [versutil] NVARCHAR(MAX) NULL -- character varying
,  [versdap] NVARCHAR(MAX) NULL -- character varying
,  [drp3qual] INTEGER NULL -- integer
,  [dapqual] INTEGER NULL -- integer
,  [rdxqakey] NVARCHAR(MAX) NULL -- character varying
,  [binkey] NVARCHAR(MAX) NULL -- character varying
,  [sckey] NVARCHAR(MAX) NULL -- character varying
,  [elmkey] NVARCHAR(MAX) NULL -- character varying
,  [elfkey] NVARCHAR(MAX) NULL -- character varying
,  [sikey] NVARCHAR(MAX) NULL -- character varying
,  [bintype] NVARCHAR(MAX) NULL -- character varying
,  [binsnr] REAL NULL -- real
,  [tplkey] NVARCHAR(MAX) NULL -- character varying
,  [datedap] NVARCHAR(MAX) NULL -- character varying
,  [dapbins] INTEGER NULL -- integer
,  [rcov90] REAL NULL -- real
,  [snr_med_1] REAL NULL -- real
,  [snr_med_2] REAL NULL -- real
,  [snr_med_3] REAL NULL -- real
,  [snr_med_4] REAL NULL -- real
,  [snr_ring_1] REAL NULL -- real
,  [snr_ring_2] REAL NULL -- real
,  [snr_ring_3] REAL NULL -- real
,  [snr_ring_4] REAL NULL -- real
,  [sb_1re] REAL NULL -- real
,  [bin_rmax] REAL NULL -- real
,  [bin_r_n_1] REAL NULL -- real
,  [bin_r_n_2] REAL NULL -- real
,  [bin_r_n_3] REAL NULL -- real
,  [bin_r_snr_1] REAL NULL -- real
,  [bin_r_snr_2] REAL NULL -- real
,  [bin_r_snr_3] REAL NULL -- real
,  [stellar_z] REAL NULL -- real
,  [stellar_vel_lo] REAL NULL -- real
,  [stellar_vel_hi] REAL NULL -- real
,  [stellar_vel_lo_clip] REAL NULL -- real
,  [stellar_vel_hi_clip] REAL NULL -- real
,  [stellar_sigma_1re] REAL NULL -- real
,  [stellar_cont_rchi2_1re] REAL NULL -- real
,  [ha_z] REAL NULL -- real
,  [ha_gvel_lo] REAL NULL -- real
,  [ha_gvel_hi] REAL NULL -- real
,  [ha_gvel_lo_clip] REAL NULL -- real
,  [ha_gvel_hi_clip] REAL NULL -- real
,  [ha_gsigma_1re] REAL NULL -- real
,  [ha_gsigma_hi] REAL NULL -- real
,  [ha_gsigma_hi_clip] REAL NULL -- real
,  [emline_sflux_cen_oiid_3728] REAL NULL -- real
,  [emline_sflux_cen_oii_3729] REAL NULL -- real
,  [emline_sflux_cen_hthe_3798] REAL NULL -- real
,  [emline_sflux_cen_heta_3836] REAL NULL -- real
,  [emline_sflux_cen_neiii_3869] REAL NULL -- real
,  [emline_sflux_cen_hzet_3890] REAL NULL -- real
,  [emline_sflux_cen_neiii_3968] REAL NULL -- real
,  [emline_sflux_cen_heps_3971] REAL NULL -- real
,  [emline_sflux_cen_hdel_4102] REAL NULL -- real
,  [emline_sflux_cen_hgam_4341] REAL NULL -- real
,  [emline_sflux_cen_heii_4687] REAL NULL -- real
,  [emline_sflux_cen_hb_4862] REAL NULL -- real
,  [emline_sflux_cen_oiii_4960] REAL NULL -- real
,  [emline_sflux_cen_oiii_5008] REAL NULL -- real
,  [emline_sflux_cen_hei_5877] REAL NULL -- real
,  [emline_sflux_cen_oi_6302] REAL NULL -- real
,  [emline_sflux_cen_oi_6365] REAL NULL -- real
,  [emline_sflux_cen_nii_6549] REAL NULL -- real
,  [emline_sflux_cen_ha_6564] REAL NULL -- real
,  [emline_sflux_cen_nii_6585] REAL NULL -- real
,  [emline_sflux_cen_sii_6718] REAL NULL -- real
,  [emline_sflux_cen_sii_6732] REAL NULL -- real
,  [emline_sflux_1re_oiid_3728] REAL NULL -- real
,  [emline_sflux_1re_oii_3729] REAL NULL -- real
,  [emline_sflux_1re_hthe_3798] REAL NULL -- real
,  [emline_sflux_1re_heta_3836] REAL NULL -- real
,  [emline_sflux_1re_neiii_3869] REAL NULL -- real
,  [emline_sflux_1re_hzet_3890] REAL NULL -- real
,  [emline_sflux_1re_neiii_3968] REAL NULL -- real
,  [emline_sflux_1re_heps_3971] REAL NULL -- real
,  [emline_sflux_1re_hdel_4102] REAL NULL -- real
,  [emline_sflux_1re_hgam_4341] REAL NULL -- real
,  [emline_sflux_1re_heii_4687] REAL NULL -- real
,  [emline_sflux_1re_hb_4862] REAL NULL -- real
,  [emline_sflux_1re_oiii_4960] REAL NULL -- real
,  [emline_sflux_1re_oiii_5008] REAL NULL -- real
,  [emline_sflux_1re_hei_5877] REAL NULL -- real
,  [emline_sflux_1re_oi_6302] REAL NULL -- real
,  [emline_sflux_1re_oi_6365] REAL NULL -- real
,  [emline_sflux_1re_nii_6549] REAL NULL -- real
,  [emline_sflux_1re_ha_6564] REAL NULL -- real
,  [emline_sflux_1re_nii_6585] REAL NULL -- real
,  [emline_sflux_1re_sii_6718] REAL NULL -- real
,  [emline_sflux_1re_sii_6732] REAL NULL -- real
,  [emline_sflux_tot_oiid_3728] REAL NULL -- real
,  [emline_sflux_tot_oii_3729] REAL NULL -- real
,  [emline_sflux_tot_hthe_3798] REAL NULL -- real
,  [emline_sflux_tot_heta_3836] REAL NULL -- real
,  [emline_sflux_tot_neiii_3869] REAL NULL -- real
,  [emline_sflux_tot_hzet_3890] REAL NULL -- real
,  [emline_sflux_tot_neiii_3968] REAL NULL -- real
,  [emline_sflux_tot_heps_3971] REAL NULL -- real
,  [emline_sflux_tot_hdel_4102] REAL NULL -- real
,  [emline_sflux_tot_hgam_4341] REAL NULL -- real
,  [emline_sflux_tot_heii_4687] REAL NULL -- real
,  [emline_sflux_tot_hb_4862] REAL NULL -- real
,  [emline_sflux_tot_oiii_4960] REAL NULL -- real
,  [emline_sflux_tot_oiii_5008] REAL NULL -- real
,  [emline_sflux_tot_hei_5877] REAL NULL -- real
,  [emline_sflux_tot_oi_6302] REAL NULL -- real
,  [emline_sflux_tot_oi_6365] REAL NULL -- real
,  [emline_sflux_tot_nii_6549] REAL NULL -- real
,  [emline_sflux_tot_ha_6564] REAL NULL -- real
,  [emline_sflux_tot_nii_6585] REAL NULL -- real
,  [emline_sflux_tot_sii_6718] REAL NULL -- real
,  [emline_sflux_tot_sii_6732] REAL NULL -- real
,  [emline_ssb_1re_oiid_3728] REAL NULL -- real
,  [emline_ssb_1re_oii_3729] REAL NULL -- real
,  [emline_ssb_1re_hthe_3798] REAL NULL -- real
,  [emline_ssb_1re_heta_3836] REAL NULL -- real
,  [emline_ssb_1re_neiii_3869] REAL NULL -- real
,  [emline_ssb_1re_hzet_3890] REAL NULL -- real
,  [emline_ssb_1re_neiii_3968] REAL NULL -- real
,  [emline_ssb_1re_heps_3971] REAL NULL -- real
,  [emline_ssb_1re_hdel_4102] REAL NULL -- real
,  [emline_ssb_1re_hgam_4341] REAL NULL -- real
,  [emline_ssb_1re_heii_4687] REAL NULL -- real
,  [emline_ssb_1re_hb_4862] REAL NULL -- real
,  [emline_ssb_1re_oiii_4960] REAL NULL -- real
,  [emline_ssb_1re_oiii_5008] REAL NULL -- real
,  [emline_ssb_1re_hei_5877] REAL NULL -- real
,  [emline_ssb_1re_oi_6302] REAL NULL -- real
,  [emline_ssb_1re_oi_6365] REAL NULL -- real
,  [emline_ssb_1re_nii_6549] REAL NULL -- real
,  [emline_ssb_1re_ha_6564] REAL NULL -- real
,  [emline_ssb_1re_nii_6585] REAL NULL -- real
,  [emline_ssb_1re_sii_6718] REAL NULL -- real
,  [emline_ssb_1re_sii_6732] REAL NULL -- real
,  [emline_ssb_peak_oiid_3728] REAL NULL -- real
,  [emline_ssb_peak_oii_3729] REAL NULL -- real
,  [emline_ssb_peak_hthe_3798] REAL NULL -- real
,  [emline_ssb_peak_heta_3836] REAL NULL -- real
,  [emline_ssb_peak_neiii_3869] REAL NULL -- real
,  [emline_ssb_peak_hzet_3890] REAL NULL -- real
,  [emline_ssb_peak_neiii_3968] REAL NULL -- real
,  [emline_ssb_peak_heps_3971] REAL NULL -- real
,  [emline_ssb_peak_hdel_4102] REAL NULL -- real
,  [emline_ssb_peak_hgam_4341] REAL NULL -- real
,  [emline_ssb_peak_heii_4687] REAL NULL -- real
,  [emline_ssb_peak_hb_4862] REAL NULL -- real
,  [emline_ssb_peak_oiii_4960] REAL NULL -- real
,  [emline_ssb_peak_oiii_5008] REAL NULL -- real
,  [emline_ssb_peak_hei_5877] REAL NULL -- real
,  [emline_ssb_peak_oi_6302] REAL NULL -- real
,  [emline_ssb_peak_oi_6365] REAL NULL -- real
,  [emline_ssb_peak_nii_6549] REAL NULL -- real
,  [emline_ssb_peak_ha_6564] REAL NULL -- real
,  [emline_ssb_peak_nii_6585] REAL NULL -- real
,  [emline_ssb_peak_sii_6718] REAL NULL -- real
,  [emline_ssb_peak_sii_6732] REAL NULL -- real
,  [emline_sew_1re_oiid_3728] REAL NULL -- real
,  [emline_sew_1re_oii_3729] REAL NULL -- real
,  [emline_sew_1re_hthe_3798] REAL NULL -- real
,  [emline_sew_1re_heta_3836] REAL NULL -- real
,  [emline_sew_1re_neiii_3869] REAL NULL -- real
,  [emline_sew_1re_hzet_3890] REAL NULL -- real
,  [emline_sew_1re_neiii_3968] REAL NULL -- real
,  [emline_sew_1re_heps_3971] REAL NULL -- real
,  [emline_sew_1re_hdel_4102] REAL NULL -- real
,  [emline_sew_1re_hgam_4341] REAL NULL -- real
,  [emline_sew_1re_heii_4687] REAL NULL -- real
,  [emline_sew_1re_hb_4862] REAL NULL -- real
,  [emline_sew_1re_oiii_4960] REAL NULL -- real
,  [emline_sew_1re_oiii_5008] REAL NULL -- real
,  [emline_sew_1re_hei_5877] REAL NULL -- real
,  [emline_sew_1re_oi_6302] REAL NULL -- real
,  [emline_sew_1re_oi_6365] REAL NULL -- real
,  [emline_sew_1re_nii_6549] REAL NULL -- real
,  [emline_sew_1re_ha_6564] REAL NULL -- real
,  [emline_sew_1re_nii_6585] REAL NULL -- real
,  [emline_sew_1re_sii_6718] REAL NULL -- real
,  [emline_sew_1re_sii_6732] REAL NULL -- real
,  [emline_sew_peak_oiid_3728] REAL NULL -- real
,  [emline_sew_peak_oii_3729] REAL NULL -- real
,  [emline_sew_peak_hthe_3798] REAL NULL -- real
,  [emline_sew_peak_heta_3836] REAL NULL -- real
,  [emline_sew_peak_neiii_3869] REAL NULL -- real
,  [emline_sew_peak_hzet_3890] REAL NULL -- real
,  [emline_sew_peak_neiii_3968] REAL NULL -- real
,  [emline_sew_peak_heps_3971] REAL NULL -- real
,  [emline_sew_peak_hdel_4102] REAL NULL -- real
,  [emline_sew_peak_hgam_4341] REAL NULL -- real
,  [emline_sew_peak_heii_4687] REAL NULL -- real
,  [emline_sew_peak_hb_4862] REAL NULL -- real
,  [emline_sew_peak_oiii_4960] REAL NULL -- real
,  [emline_sew_peak_oiii_5008] REAL NULL -- real
,  [emline_sew_peak_hei_5877] REAL NULL -- real
,  [emline_sew_peak_oi_6302] REAL NULL -- real
,  [emline_sew_peak_oi_6365] REAL NULL -- real
,  [emline_sew_peak_nii_6549] REAL NULL -- real
,  [emline_sew_peak_ha_6564] REAL NULL -- real
,  [emline_sew_peak_nii_6585] REAL NULL -- real
,  [emline_sew_peak_sii_6718] REAL NULL -- real
,  [emline_sew_peak_sii_6732] REAL NULL -- real
,  [emline_gflux_cen_oii_3727] REAL NULL -- real
,  [emline_gflux_cen_oii_3729] REAL NULL -- real
,  [emline_gflux_cen_hthe_3798] REAL NULL -- real
,  [emline_gflux_cen_heta_3836] REAL NULL -- real
,  [emline_gflux_cen_neiii_3869] REAL NULL -- real
,  [emline_gflux_cen_hzet_3890] REAL NULL -- real
,  [emline_gflux_cen_neiii_3968] REAL NULL -- real
,  [emline_gflux_cen_heps_3971] REAL NULL -- real
,  [emline_gflux_cen_hdel_4102] REAL NULL -- real
,  [emline_gflux_cen_hgam_4341] REAL NULL -- real
,  [emline_gflux_cen_heii_4687] REAL NULL -- real
,  [emline_gflux_cen_hb_4862] REAL NULL -- real
,  [emline_gflux_cen_oiii_4960] REAL NULL -- real
,  [emline_gflux_cen_oiii_5008] REAL NULL -- real
,  [emline_gflux_cen_hei_5877] REAL NULL -- real
,  [emline_gflux_cen_oi_6302] REAL NULL -- real
,  [emline_gflux_cen_oi_6365] REAL NULL -- real
,  [emline_gflux_cen_nii_6549] REAL NULL -- real
,  [emline_gflux_cen_ha_6564] REAL NULL -- real
,  [emline_gflux_cen_nii_6585] REAL NULL -- real
,  [emline_gflux_cen_sii_6718] REAL NULL -- real
,  [emline_gflux_cen_sii_6732] REAL NULL -- real
,  [emline_gflux_1re_oii_3727] REAL NULL -- real
,  [emline_gflux_1re_oii_3729] REAL NULL -- real
,  [emline_gflux_1re_hthe_3798] REAL NULL -- real
,  [emline_gflux_1re_heta_3836] REAL NULL -- real
,  [emline_gflux_1re_neiii_3869] REAL NULL -- real
,  [emline_gflux_1re_hzet_3890] REAL NULL -- real
,  [emline_gflux_1re_neiii_3968] REAL NULL -- real
,  [emline_gflux_1re_heps_3971] REAL NULL -- real
,  [emline_gflux_1re_hdel_4102] REAL NULL -- real
,  [emline_gflux_1re_hgam_4341] REAL NULL -- real
,  [emline_gflux_1re_heii_4687] REAL NULL -- real
,  [emline_gflux_1re_hb_4862] REAL NULL -- real
,  [emline_gflux_1re_oiii_4960] REAL NULL -- real
,  [emline_gflux_1re_oiii_5008] REAL NULL -- real
,  [emline_gflux_1re_hei_5877] REAL NULL -- real
,  [emline_gflux_1re_oi_6302] REAL NULL -- real
,  [emline_gflux_1re_oi_6365] REAL NULL -- real
,  [emline_gflux_1re_nii_6549] REAL NULL -- real
,  [emline_gflux_1re_ha_6564] REAL NULL -- real
,  [emline_gflux_1re_nii_6585] REAL NULL -- real
,  [emline_gflux_1re_sii_6718] REAL NULL -- real
,  [emline_gflux_1re_sii_6732] REAL NULL -- real
,  [emline_gflux_tot_oii_3727] REAL NULL -- real
,  [emline_gflux_tot_oii_3729] REAL NULL -- real
,  [emline_gflux_tot_hthe_3798] REAL NULL -- real
,  [emline_gflux_tot_heta_3836] REAL NULL -- real
,  [emline_gflux_tot_neiii_3869] REAL NULL -- real
,  [emline_gflux_tot_hzet_3890] REAL NULL -- real
,  [emline_gflux_tot_neiii_3968] REAL NULL -- real
,  [emline_gflux_tot_heps_3971] REAL NULL -- real
,  [emline_gflux_tot_hdel_4102] REAL NULL -- real
,  [emline_gflux_tot_hgam_4341] REAL NULL -- real
,  [emline_gflux_tot_heii_4687] REAL NULL -- real
,  [emline_gflux_tot_hb_4862] REAL NULL -- real
,  [emline_gflux_tot_oiii_4960] REAL NULL -- real
,  [emline_gflux_tot_oiii_5008] REAL NULL -- real
,  [emline_gflux_tot_hei_5877] REAL NULL -- real
,  [emline_gflux_tot_oi_6302] REAL NULL -- real
,  [emline_gflux_tot_oi_6365] REAL NULL -- real
,  [emline_gflux_tot_nii_6549] REAL NULL -- real
,  [emline_gflux_tot_ha_6564] REAL NULL -- real
,  [emline_gflux_tot_nii_6585] REAL NULL -- real
,  [emline_gflux_tot_sii_6718] REAL NULL -- real
,  [emline_gflux_tot_sii_6732] REAL NULL -- real
,  [emline_gsb_1re_oii_3727] REAL NULL -- real
,  [emline_gsb_1re_oii_3729] REAL NULL -- real
,  [emline_gsb_1re_hthe_3798] REAL NULL -- real
,  [emline_gsb_1re_heta_3836] REAL NULL -- real
,  [emline_gsb_1re_neiii_3869] REAL NULL -- real
,  [emline_gsb_1re_hzet_3890] REAL NULL -- real
,  [emline_gsb_1re_neiii_3968] REAL NULL -- real
,  [emline_gsb_1re_heps_3971] REAL NULL -- real
,  [emline_gsb_1re_hdel_4102] REAL NULL -- real
,  [emline_gsb_1re_hgam_4341] REAL NULL -- real
,  [emline_gsb_1re_heii_4687] REAL NULL -- real
,  [emline_gsb_1re_hb_4862] REAL NULL -- real
,  [emline_gsb_1re_oiii_4960] REAL NULL -- real
,  [emline_gsb_1re_oiii_5008] REAL NULL -- real
,  [emline_gsb_1re_hei_5877] REAL NULL -- real
,  [emline_gsb_1re_oi_6302] REAL NULL -- real
,  [emline_gsb_1re_oi_6365] REAL NULL -- real
,  [emline_gsb_1re_nii_6549] REAL NULL -- real
,  [emline_gsb_1re_ha_6564] REAL NULL -- real
,  [emline_gsb_1re_nii_6585] REAL NULL -- real
,  [emline_gsb_1re_sii_6718] REAL NULL -- real
,  [emline_gsb_1re_sii_6732] REAL NULL -- real
,  [emline_gsb_peak_oii_3727] REAL NULL -- real
,  [emline_gsb_peak_oii_3729] REAL NULL -- real
,  [emline_gsb_peak_hthe_3798] REAL NULL -- real
,  [emline_gsb_peak_heta_3836] REAL NULL -- real
,  [emline_gsb_peak_neiii_3869] REAL NULL -- real
,  [emline_gsb_peak_hzet_3890] REAL NULL -- real
,  [emline_gsb_peak_neiii_3968] REAL NULL -- real
,  [emline_gsb_peak_heps_3971] REAL NULL -- real
,  [emline_gsb_peak_hdel_4102] REAL NULL -- real
,  [emline_gsb_peak_hgam_4341] REAL NULL -- real
,  [emline_gsb_peak_heii_4687] REAL NULL -- real
,  [emline_gsb_peak_hb_4862] REAL NULL -- real
,  [emline_gsb_peak_oiii_4960] REAL NULL -- real
,  [emline_gsb_peak_oiii_5008] REAL NULL -- real
,  [emline_gsb_peak_hei_5877] REAL NULL -- real
,  [emline_gsb_peak_oi_6302] REAL NULL -- real
,  [emline_gsb_peak_oi_6365] REAL NULL -- real
,  [emline_gsb_peak_nii_6549] REAL NULL -- real
,  [emline_gsb_peak_ha_6564] REAL NULL -- real
,  [emline_gsb_peak_nii_6585] REAL NULL -- real
,  [emline_gsb_peak_sii_6718] REAL NULL -- real
,  [emline_gsb_peak_sii_6732] REAL NULL -- real
,  [emline_gew_1re_oii_3727] REAL NULL -- real
,  [emline_gew_1re_oii_3729] REAL NULL -- real
,  [emline_gew_1re_hthe_3798] REAL NULL -- real
,  [emline_gew_1re_heta_3836] REAL NULL -- real
,  [emline_gew_1re_neiii_3869] REAL NULL -- real
,  [emline_gew_1re_hzet_3890] REAL NULL -- real
,  [emline_gew_1re_neiii_3968] REAL NULL -- real
,  [emline_gew_1re_heps_3971] REAL NULL -- real
,  [emline_gew_1re_hdel_4102] REAL NULL -- real
,  [emline_gew_1re_hgam_4341] REAL NULL -- real
,  [emline_gew_1re_heii_4687] REAL NULL -- real
,  [emline_gew_1re_hb_4862] REAL NULL -- real
,  [emline_gew_1re_oiii_4960] REAL NULL -- real
,  [emline_gew_1re_oiii_5008] REAL NULL -- real
,  [emline_gew_1re_hei_5877] REAL NULL -- real
,  [emline_gew_1re_oi_6302] REAL NULL -- real
,  [emline_gew_1re_oi_6365] REAL NULL -- real
,  [emline_gew_1re_nii_6549] REAL NULL -- real
,  [emline_gew_1re_ha_6564] REAL NULL -- real
,  [emline_gew_1re_nii_6585] REAL NULL -- real
,  [emline_gew_1re_sii_6718] REAL NULL -- real
,  [emline_gew_1re_sii_6732] REAL NULL -- real
,  [emline_gew_peak_oii_3727] REAL NULL -- real
,  [emline_gew_peak_oii_3729] REAL NULL -- real
,  [emline_gew_peak_hthe_3798] REAL NULL -- real
,  [emline_gew_peak_heta_3836] REAL NULL -- real
,  [emline_gew_peak_neiii_3869] REAL NULL -- real
,  [emline_gew_peak_hzet_3890] REAL NULL -- real
,  [emline_gew_peak_neiii_3968] REAL NULL -- real
,  [emline_gew_peak_heps_3971] REAL NULL -- real
,  [emline_gew_peak_hdel_4102] REAL NULL -- real
,  [emline_gew_peak_hgam_4341] REAL NULL -- real
,  [emline_gew_peak_heii_4687] REAL NULL -- real
,  [emline_gew_peak_hb_4862] REAL NULL -- real
,  [emline_gew_peak_oiii_4960] REAL NULL -- real
,  [emline_gew_peak_oiii_5008] REAL NULL -- real
,  [emline_gew_peak_hei_5877] REAL NULL -- real
,  [emline_gew_peak_oi_6302] REAL NULL -- real
,  [emline_gew_peak_oi_6365] REAL NULL -- real
,  [emline_gew_peak_nii_6549] REAL NULL -- real
,  [emline_gew_peak_ha_6564] REAL NULL -- real
,  [emline_gew_peak_nii_6585] REAL NULL -- real
,  [emline_gew_peak_sii_6718] REAL NULL -- real
,  [emline_gew_peak_sii_6732] REAL NULL -- real
,  [specindex_lo_cn1] REAL NULL -- real
,  [specindex_lo_cn2] REAL NULL -- real
,  [specindex_lo_ca4227] REAL NULL -- real
,  [specindex_lo_g4300] REAL NULL -- real
,  [specindex_lo_fe4383] REAL NULL -- real
,  [specindex_lo_ca4455] REAL NULL -- real
,  [specindex_lo_fe4531] REAL NULL -- real
,  [specindex_lo_c24668] REAL NULL -- real
,  [specindex_lo_hb] REAL NULL -- real
,  [specindex_lo_fe5015] REAL NULL -- real
,  [specindex_lo_mg1] REAL NULL -- real
,  [specindex_lo_mg2] REAL NULL -- real
,  [specindex_lo_mgb] REAL NULL -- real
,  [specindex_lo_fe5270] REAL NULL -- real
,  [specindex_lo_fe5335] REAL NULL -- real
,  [specindex_lo_fe5406] REAL NULL -- real
,  [specindex_lo_fe5709] REAL NULL -- real
,  [specindex_lo_fe5782] REAL NULL -- real
,  [specindex_lo_nad] REAL NULL -- real
,  [specindex_lo_tio1] REAL NULL -- real
,  [specindex_lo_tio2] REAL NULL -- real
,  [specindex_lo_hdeltaa] REAL NULL -- real
,  [specindex_lo_hgammaa] REAL NULL -- real
,  [specindex_lo_hdeltaf] REAL NULL -- real
,  [specindex_lo_hgammaf] REAL NULL -- real
,  [specindex_lo_cahk] REAL NULL -- real
,  [specindex_lo_caii1] REAL NULL -- real
,  [specindex_lo_caii2] REAL NULL -- real
,  [specindex_lo_caii3] REAL NULL -- real
,  [specindex_lo_pa17] REAL NULL -- real
,  [specindex_lo_pa14] REAL NULL -- real
,  [specindex_lo_pa12] REAL NULL -- real
,  [specindex_lo_mgicvd] REAL NULL -- real
,  [specindex_lo_naicvd] REAL NULL -- real
,  [specindex_lo_mgiir] REAL NULL -- real
,  [specindex_lo_fehcvd] REAL NULL -- real
,  [specindex_lo_nai] REAL NULL -- real
,  [specindex_lo_btio] REAL NULL -- real
,  [specindex_lo_atio] REAL NULL -- real
,  [specindex_lo_cah1] REAL NULL -- real
,  [specindex_lo_cah2] REAL NULL -- real
,  [specindex_lo_naisdss] REAL NULL -- real
,  [specindex_lo_tio2sdss] REAL NULL -- real
,  [specindex_lo_d4000] REAL NULL -- real
,  [specindex_lo_dn4000] REAL NULL -- real
,  [specindex_lo_tiocvd] REAL NULL -- real
,  [specindex_hi_cn1] REAL NULL -- real
,  [specindex_hi_cn2] REAL NULL -- real
,  [specindex_hi_ca4227] REAL NULL -- real
,  [specindex_hi_g4300] REAL NULL -- real
,  [specindex_hi_fe4383] REAL NULL -- real
,  [specindex_hi_ca4455] REAL NULL -- real
,  [specindex_hi_fe4531] REAL NULL -- real
,  [specindex_hi_c24668] REAL NULL -- real
,  [specindex_hi_hb] REAL NULL -- real
,  [specindex_hi_fe5015] REAL NULL -- real
,  [specindex_hi_mg1] REAL NULL -- real
,  [specindex_hi_mg2] REAL NULL -- real
,  [specindex_hi_mgb] REAL NULL -- real
,  [specindex_hi_fe5270] REAL NULL -- real
,  [specindex_hi_fe5335] REAL NULL -- real
,  [specindex_hi_fe5406] REAL NULL -- real
,  [specindex_hi_fe5709] REAL NULL -- real
,  [specindex_hi_fe5782] REAL NULL -- real
,  [specindex_hi_nad] REAL NULL -- real
,  [specindex_hi_tio1] REAL NULL -- real
,  [specindex_hi_tio2] REAL NULL -- real
,  [specindex_hi_hdeltaa] REAL NULL -- real
,  [specindex_hi_hgammaa] REAL NULL -- real
,  [specindex_hi_hdeltaf] REAL NULL -- real
,  [specindex_hi_hgammaf] REAL NULL -- real
,  [specindex_hi_cahk] REAL NULL -- real
,  [specindex_hi_caii1] REAL NULL -- real
,  [specindex_hi_caii2] REAL NULL -- real
,  [specindex_hi_caii3] REAL NULL -- real
,  [specindex_hi_pa17] REAL NULL -- real
,  [specindex_hi_pa14] REAL NULL -- real
,  [specindex_hi_pa12] REAL NULL -- real
,  [specindex_hi_mgicvd] REAL NULL -- real
,  [specindex_hi_naicvd] REAL NULL -- real
,  [specindex_hi_mgiir] REAL NULL -- real
,  [specindex_hi_fehcvd] REAL NULL -- real
,  [specindex_hi_nai] REAL NULL -- real
,  [specindex_hi_btio] REAL NULL -- real
,  [specindex_hi_atio] REAL NULL -- real
,  [specindex_hi_cah1] REAL NULL -- real
,  [specindex_hi_cah2] REAL NULL -- real
,  [specindex_hi_naisdss] REAL NULL -- real
,  [specindex_hi_tio2sdss] REAL NULL -- real
,  [specindex_hi_d4000] REAL NULL -- real
,  [specindex_hi_dn4000] REAL NULL -- real
,  [specindex_hi_tiocvd] REAL NULL -- real
,  [specindex_lo_clip_cn1] REAL NULL -- real
,  [specindex_lo_clip_cn2] REAL NULL -- real
,  [specindex_lo_clip_ca4227] REAL NULL -- real
,  [specindex_lo_clip_g4300] REAL NULL -- real
,  [specindex_lo_clip_fe4383] REAL NULL -- real
,  [specindex_lo_clip_ca4455] REAL NULL -- real
,  [specindex_lo_clip_fe4531] REAL NULL -- real
,  [specindex_lo_clip_c24668] REAL NULL -- real
,  [specindex_lo_clip_hb] REAL NULL -- real
,  [specindex_lo_clip_fe5015] REAL NULL -- real
,  [specindex_lo_clip_mg1] REAL NULL -- real
,  [specindex_lo_clip_mg2] REAL NULL -- real
,  [specindex_lo_clip_mgb] REAL NULL -- real
,  [specindex_lo_clip_fe5270] REAL NULL -- real
,  [specindex_lo_clip_fe5335] REAL NULL -- real
,  [specindex_lo_clip_fe5406] REAL NULL -- real
,  [specindex_lo_clip_fe5709] REAL NULL -- real
,  [specindex_lo_clip_fe5782] REAL NULL -- real
,  [specindex_lo_clip_nad] REAL NULL -- real
,  [specindex_lo_clip_tio1] REAL NULL -- real
,  [specindex_lo_clip_tio2] REAL NULL -- real
,  [specindex_lo_clip_hdeltaa] REAL NULL -- real
,  [specindex_lo_clip_hgammaa] REAL NULL -- real
,  [specindex_lo_clip_hdeltaf] REAL NULL -- real
,  [specindex_lo_clip_hgammaf] REAL NULL -- real
,  [specindex_lo_clip_cahk] REAL NULL -- real
,  [specindex_lo_clip_caii1] REAL NULL -- real
,  [specindex_lo_clip_caii2] REAL NULL -- real
,  [specindex_lo_clip_caii3] REAL NULL -- real
,  [specindex_lo_clip_pa17] REAL NULL -- real
,  [specindex_lo_clip_pa14] REAL NULL -- real
,  [specindex_lo_clip_pa12] REAL NULL -- real
,  [specindex_lo_clip_mgicvd] REAL NULL -- real
,  [specindex_lo_clip_naicvd] REAL NULL -- real
,  [specindex_lo_clip_mgiir] REAL NULL -- real
,  [specindex_lo_clip_fehcvd] REAL NULL -- real
,  [specindex_lo_clip_nai] REAL NULL -- real
,  [specindex_lo_clip_btio] REAL NULL -- real
,  [specindex_lo_clip_atio] REAL NULL -- real
,  [specindex_lo_clip_cah1] REAL NULL -- real
,  [specindex_lo_clip_cah2] REAL NULL -- real
,  [specindex_lo_clip_naisdss] REAL NULL -- real
,  [specindex_lo_clip_tio2sdss] REAL NULL -- real
,  [specindex_lo_clip_d4000] REAL NULL -- real
,  [specindex_lo_clip_dn4000] REAL NULL -- real
,  [specindex_lo_clip_tiocvd] REAL NULL -- real
,  [specindex_hi_clip_cn1] REAL NULL -- real
,  [specindex_hi_clip_cn2] REAL NULL -- real
,  [specindex_hi_clip_ca4227] REAL NULL -- real
,  [specindex_hi_clip_g4300] REAL NULL -- real
,  [specindex_hi_clip_fe4383] REAL NULL -- real
,  [specindex_hi_clip_ca4455] REAL NULL -- real
,  [specindex_hi_clip_fe4531] REAL NULL -- real
,  [specindex_hi_clip_c24668] REAL NULL -- real
,  [specindex_hi_clip_hb] REAL NULL -- real
,  [specindex_hi_clip_fe5015] REAL NULL -- real
,  [specindex_hi_clip_mg1] REAL NULL -- real
,  [specindex_hi_clip_mg2] REAL NULL -- real
,  [specindex_hi_clip_mgb] REAL NULL -- real
,  [specindex_hi_clip_fe5270] REAL NULL -- real
,  [specindex_hi_clip_fe5335] REAL NULL -- real
,  [specindex_hi_clip_fe5406] REAL NULL -- real
,  [specindex_hi_clip_fe5709] REAL NULL -- real
,  [specindex_hi_clip_fe5782] REAL NULL -- real
,  [specindex_hi_clip_nad] REAL NULL -- real
,  [specindex_hi_clip_tio1] REAL NULL -- real
,  [specindex_hi_clip_tio2] REAL NULL -- real
,  [specindex_hi_clip_hdeltaa] REAL NULL -- real
,  [specindex_hi_clip_hgammaa] REAL NULL -- real
,  [specindex_hi_clip_hdeltaf] REAL NULL -- real
,  [specindex_hi_clip_hgammaf] REAL NULL -- real
,  [specindex_hi_clip_cahk] REAL NULL -- real
,  [specindex_hi_clip_caii1] REAL NULL -- real
,  [specindex_hi_clip_caii2] REAL NULL -- real
,  [specindex_hi_clip_caii3] REAL NULL -- real
,  [specindex_hi_clip_pa17] REAL NULL -- real
,  [specindex_hi_clip_pa14] REAL NULL -- real
,  [specindex_hi_clip_pa12] REAL NULL -- real
,  [specindex_hi_clip_mgicvd] REAL NULL -- real
,  [specindex_hi_clip_naicvd] REAL NULL -- real
,  [specindex_hi_clip_mgiir] REAL NULL -- real
,  [specindex_hi_clip_fehcvd] REAL NULL -- real
,  [specindex_hi_clip_nai] REAL NULL -- real
,  [specindex_hi_clip_btio] REAL NULL -- real
,  [specindex_hi_clip_atio] REAL NULL -- real
,  [specindex_hi_clip_cah1] REAL NULL -- real
,  [specindex_hi_clip_cah2] REAL NULL -- real
,  [specindex_hi_clip_naisdss] REAL NULL -- real
,  [specindex_hi_clip_tio2sdss] REAL NULL -- real
,  [specindex_hi_clip_d4000] REAL NULL -- real
,  [specindex_hi_clip_dn4000] REAL NULL -- real
,  [specindex_hi_clip_tiocvd] REAL NULL -- real
,  [specindex_1re_cn1] REAL NULL -- real
,  [specindex_1re_cn2] REAL NULL -- real
,  [specindex_1re_ca4227] REAL NULL -- real
,  [specindex_1re_g4300] REAL NULL -- real
,  [specindex_1re_fe4383] REAL NULL -- real
,  [specindex_1re_ca4455] REAL NULL -- real
,  [specindex_1re_fe4531] REAL NULL -- real
,  [specindex_1re_c24668] REAL NULL -- real
,  [specindex_1re_hb] REAL NULL -- real
,  [specindex_1re_fe5015] REAL NULL -- real
,  [specindex_1re_mg1] REAL NULL -- real
,  [specindex_1re_mg2] REAL NULL -- real
,  [specindex_1re_mgb] REAL NULL -- real
,  [specindex_1re_fe5270] REAL NULL -- real
,  [specindex_1re_fe5335] REAL NULL -- real
,  [specindex_1re_fe5406] REAL NULL -- real
,  [specindex_1re_fe5709] REAL NULL -- real
,  [specindex_1re_fe5782] REAL NULL -- real
,  [specindex_1re_nad] REAL NULL -- real
,  [specindex_1re_tio1] REAL NULL -- real
,  [specindex_1re_tio2] REAL NULL -- real
,  [specindex_1re_hdeltaa] REAL NULL -- real
,  [specindex_1re_hgammaa] REAL NULL -- real
,  [specindex_1re_hdeltaf] REAL NULL -- real
,  [specindex_1re_hgammaf] REAL NULL -- real
,  [specindex_1re_cahk] REAL NULL -- real
,  [specindex_1re_caii1] REAL NULL -- real
,  [specindex_1re_caii2] REAL NULL -- real
,  [specindex_1re_caii3] REAL NULL -- real
,  [specindex_1re_pa17] REAL NULL -- real
,  [specindex_1re_pa14] REAL NULL -- real
,  [specindex_1re_pa12] REAL NULL -- real
,  [specindex_1re_mgicvd] REAL NULL -- real
,  [specindex_1re_naicvd] REAL NULL -- real
,  [specindex_1re_mgiir] REAL NULL -- real
,  [specindex_1re_fehcvd] REAL NULL -- real
,  [specindex_1re_nai] REAL NULL -- real
,  [specindex_1re_btio] REAL NULL -- real
,  [specindex_1re_atio] REAL NULL -- real
,  [specindex_1re_cah1] REAL NULL -- real
,  [specindex_1re_cah2] REAL NULL -- real
,  [specindex_1re_naisdss] REAL NULL -- real
,  [specindex_1re_tio2sdss] REAL NULL -- real
,  [specindex_1re_d4000] REAL NULL -- real
,  [specindex_1re_dn4000] REAL NULL -- real
,  [specindex_1re_tiocvd] REAL NULL -- real
,  [sfr_1re] REAL NULL -- real
,  [sfr_tot] REAL NULL -- real
,  [stellar_rchi2_1re] REAL NULL -- real
,  [emline_rchi2_1re] REAL NULL -- real
,  [emline_sflux_cen_hei_3889] REAL NULL -- real
,  [emline_sflux_cen_ni_5199] REAL NULL -- real
,  [emline_sflux_cen_ni_5201] REAL NULL -- real
,  [emline_sflux_1re_hei_3889] REAL NULL -- real
,  [emline_sflux_1re_ni_5199] REAL NULL -- real
,  [emline_sflux_1re_ni_5201] REAL NULL -- real
,  [emline_sflux_tot_hei_3889] REAL NULL -- real
,  [emline_sflux_tot_ni_5199] REAL NULL -- real
,  [emline_sflux_tot_ni_5201] REAL NULL -- real
,  [emline_ssb_1re_hei_3889] REAL NULL -- real
,  [emline_ssb_1re_ni_5199] REAL NULL -- real
,  [emline_ssb_1re_ni_5201] REAL NULL -- real
,  [emline_ssb_peak_hei_3889] REAL NULL -- real
,  [emline_ssb_peak_ni_5199] REAL NULL -- real
,  [emline_ssb_peak_ni_5201] REAL NULL -- real
,  [emline_sew_1re_hei_3889] REAL NULL -- real
,  [emline_sew_1re_ni_5199] REAL NULL -- real
,  [emline_sew_1re_ni_5201] REAL NULL -- real
,  [emline_sew_peak_hei_3889] REAL NULL -- real
,  [emline_sew_peak_ni_5199] REAL NULL -- real
,  [emline_sew_peak_ni_5201] REAL NULL -- real
,  [emline_gflux_cen_hei_3889] REAL NULL -- real
,  [emline_gflux_cen_ni_5199] REAL NULL -- real
,  [emline_gflux_cen_ni_5201] REAL NULL -- real
,  [emline_gflux_1re_hei_3889] REAL NULL -- real
,  [emline_gflux_1re_ni_5199] REAL NULL -- real
,  [emline_gflux_1re_ni_5201] REAL NULL -- real
,  [emline_gflux_tot_hei_3889] REAL NULL -- real
,  [emline_gflux_tot_ni_5199] REAL NULL -- real
,  [emline_gflux_tot_ni_5201] REAL NULL -- real
,  [emline_gsb_1re_hei_3889] REAL NULL -- real
,  [emline_gsb_1re_ni_5199] REAL NULL -- real
,  [emline_gsb_1re_ni_5201] REAL NULL -- real
,  [emline_gsb_peak_hei_3889] REAL NULL -- real
,  [emline_gsb_peak_ni_5199] REAL NULL -- real
,  [emline_gsb_peak_ni_5201] REAL NULL -- real
,  [emline_gew_1re_hei_3889] REAL NULL -- real
,  [emline_gew_1re_ni_5199] REAL NULL -- real
,  [emline_gew_1re_ni_5201] REAL NULL -- real
,  [emline_gew_peak_hei_3889] REAL NULL -- real
,  [emline_gew_peak_ni_5199] REAL NULL -- real
,  [emline_gew_peak_ni_5201] REAL NULL -- real
)
with (location='manga.mangadapdb.[dapall]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='executionplan')
begin drop external table mangadapdb.[executionplan] end

GO

CREATE EXTERNAL TABLE mangadapdb.[executionplan] (
   [pk] INTEGER NOT NULL -- integer
,  [id] INTEGER NULL -- integer
,  [comments] NVARCHAR(MAX) NULL -- text
)
with (location='manga.mangadapdb.[executionplan]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='extcol')
begin drop external table mangadapdb.[extcol] end

GO

CREATE EXTERNAL TABLE mangadapdb.[extcol] (
   [pk] INTEGER NOT NULL -- integer
,  [name] NVARCHAR(MAX) NULL -- text
)
with (location='manga.mangadapdb.[extcol]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='extname')
begin drop external table mangadapdb.[extname] end

GO

CREATE EXTERNAL TABLE mangadapdb.[extname] (
   [pk] INTEGER NOT NULL -- integer
,  [name] NVARCHAR(MAX) NULL -- text
)
with (location='manga.mangadapdb.[extname]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='exttype')
begin drop external table mangadapdb.[exttype] end

GO

CREATE EXTERNAL TABLE mangadapdb.[exttype] (
   [pk] INTEGER NOT NULL -- integer
,  [name] NVARCHAR(MAX) NULL -- text
)
with (location='manga.mangadapdb.[exttype]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='file')
begin drop external table mangadapdb.[file] end

GO

CREATE EXTERNAL TABLE mangadapdb.[file] (
   [pk] INTEGER NOT NULL -- integer
,  [filename] NVARCHAR(MAX) NULL -- text
,  [filepath] NVARCHAR(MAX) NULL -- text
,  [num_ext] INTEGER NULL -- integer
,  [filetype_pk] INTEGER NULL -- integer
,  [structure_pk] INTEGER NULL -- integer
,  [cube_pk] INTEGER NULL -- integer
,  [pipeline_info_pk] INTEGER NULL -- integer
)
with (location='manga.mangadapdb.[file]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='filetype')
begin drop external table mangadapdb.[filetype] end

GO

CREATE EXTERNAL TABLE mangadapdb.[filetype] (
   [pk] INTEGER NOT NULL -- integer
,  [value] NVARCHAR(MAX) NULL -- text
)
with (location='manga.mangadapdb.[filetype]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='hdu')
begin drop external table mangadapdb.[hdu] end

GO

CREATE EXTERNAL TABLE mangadapdb.[hdu] (
   [pk] INTEGER NOT NULL -- integer
,  [extname_pk] INTEGER NULL -- integer
,  [exttype_pk] INTEGER NULL -- integer
,  [extno] INTEGER NULL -- integer
,  [file_pk] INTEGER NULL -- integer
)
with (location='manga.mangadapdb.[hdu]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='hdu_to_extcol')
begin drop external table mangadapdb.[hdu_to_extcol] end

GO

CREATE EXTERNAL TABLE mangadapdb.[hdu_to_extcol] (
   [pk] INTEGER NOT NULL -- integer
,  [hdu_pk] INTEGER NULL -- integer
,  [extcol_pk] INTEGER NULL -- integer
)
with (location='manga.mangadapdb.[hdu_to_extcol]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='hdu_to_header_value')
begin drop external table mangadapdb.[hdu_to_header_value] end

GO

CREATE EXTERNAL TABLE mangadapdb.[hdu_to_header_value] (
   [pk] INTEGER NOT NULL -- integer
,  [hdu_pk] INTEGER NULL -- integer
,  [header_value_pk] INTEGER NULL -- integer
)
with (location='manga.mangadapdb.[hdu_to_header_value]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='header_keyword')
begin drop external table mangadapdb.[header_keyword] end

GO

CREATE EXTERNAL TABLE mangadapdb.[header_keyword] (
   [pk] INTEGER NOT NULL -- integer
,  [name] NVARCHAR(MAX) NULL -- text
)
with (location='manga.mangadapdb.[header_keyword]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='header_value')
begin drop external table mangadapdb.[header_value] end

GO

CREATE EXTERNAL TABLE mangadapdb.[header_value] (
   [pk] INTEGER NOT NULL -- integer
,  [value] NVARCHAR(MAX) NULL -- text
,  [index] INTEGER NULL -- integer
,  [comment] NVARCHAR(MAX) NULL -- text
,  [header_keyword_pk] INTEGER NULL -- integer
)
with (location='manga.mangadapdb.[header_value]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='modelcube')
begin drop external table mangadapdb.[modelcube] end

GO

CREATE EXTERNAL TABLE mangadapdb.[modelcube] (
   [pk] INTEGER NOT NULL -- integer
,  [file_pk] INTEGER NULL -- integer
)
with (location='manga.mangadapdb.[modelcube]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='spaxelprop')
begin drop external table mangadapdb.[spaxelprop] end

GO

CREATE EXTERNAL TABLE mangadapdb.[spaxelprop] (
   [pk] BIGINT NOT NULL -- bigint
,  [file_pk] INTEGER NULL -- integer
,  [spaxel_index] INTEGER NULL -- integer
,  [binid_pk] INTEGER NULL -- integer
,  [emline_gflux_oiid_3728] REAL NULL -- real
,  [emline_gflux_hb_4862] REAL NULL -- real
,  [emline_gflux_oiii_4960] REAL NULL -- real
,  [emline_gflux_oiii_5008] REAL NULL -- real
,  [emline_gflux_oi_6302] REAL NULL -- real
,  [emline_gflux_oi_6365] REAL NULL -- real
,  [emline_gflux_nii_6549] REAL NULL -- real
,  [emline_gflux_ha_6564] REAL NULL -- real
,  [emline_gflux_nii_6585] REAL NULL -- real
,  [emline_gflux_sii_6718] REAL NULL -- real
,  [emline_gflux_sii_6732] REAL NULL -- real
,  [emline_gflux_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gflux_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gflux_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gflux_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gflux_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gflux_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gflux_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_gflux_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gflux_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gflux_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gflux_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gflux_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gflux_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gflux_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gflux_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gflux_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gflux_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gvel_oiid_3728] REAL NULL -- real
,  [emline_gvel_hb_4862] REAL NULL -- real
,  [emline_gvel_oiii_4960] REAL NULL -- real
,  [emline_gvel_oiii_5008] REAL NULL -- real
,  [emline_gvel_oi_6302] REAL NULL -- real
,  [emline_gvel_oi_6365] REAL NULL -- real
,  [emline_gvel_nii_6549] REAL NULL -- real
,  [emline_gvel_ha_6564] REAL NULL -- real
,  [emline_gvel_nii_6585] REAL NULL -- real
,  [emline_gvel_sii_6718] REAL NULL -- real
,  [emline_gvel_sii_6732] REAL NULL -- real
,  [emline_gvel_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gvel_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gvel_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gvel_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gvel_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gvel_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gvel_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_gvel_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gvel_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gvel_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gvel_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gvel_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gvel_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gvel_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gvel_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gvel_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gvel_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gsigma_oiid_3728] REAL NULL -- real
,  [emline_gsigma_hb_4862] REAL NULL -- real
,  [emline_gsigma_oiii_4960] REAL NULL -- real
,  [emline_gsigma_oiii_5008] REAL NULL -- real
,  [emline_gsigma_oi_6302] REAL NULL -- real
,  [emline_gsigma_oi_6365] REAL NULL -- real
,  [emline_gsigma_nii_6549] REAL NULL -- real
,  [emline_gsigma_ha_6564] REAL NULL -- real
,  [emline_gsigma_nii_6585] REAL NULL -- real
,  [emline_gsigma_sii_6718] REAL NULL -- real
,  [emline_gsigma_sii_6732] REAL NULL -- real
,  [emline_gsigma_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gsigma_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_gsigma_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gsigma_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gsigma_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gsigma_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gsigma_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gsigma_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gsigma_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gsigma_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gsigma_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gsigma_mask_sii_6732] INTEGER NULL -- integer
,  [emline_instsigma_oiid_3728] REAL NULL -- real
,  [emline_instsigma_hb_4862] REAL NULL -- real
,  [emline_instsigma_oiii_4960] REAL NULL -- real
,  [emline_instsigma_oiii_5008] REAL NULL -- real
,  [emline_instsigma_oi_6302] REAL NULL -- real
,  [emline_instsigma_oi_6365] REAL NULL -- real
,  [emline_instsigma_nii_6549] REAL NULL -- real
,  [emline_instsigma_ha_6564] REAL NULL -- real
,  [emline_instsigma_nii_6585] REAL NULL -- real
,  [emline_instsigma_sii_6718] REAL NULL -- real
,  [emline_instsigma_sii_6732] REAL NULL -- real
,  [emline_ew_oiid_3728] REAL NULL -- real
,  [emline_ew_hb_4862] FLOAT NULL -- double precision
,  [emline_ew_oiii_4960] REAL NULL -- real
,  [emline_ew_oiii_5008] FLOAT NULL -- double precision
,  [emline_ew_oi_6302] FLOAT NULL -- double precision
,  [emline_ew_oi_6365] FLOAT NULL -- double precision
,  [emline_ew_nii_6549] FLOAT NULL -- double precision
,  [emline_ew_ha_6564] FLOAT NULL -- double precision
,  [emline_ew_nii_6585] FLOAT NULL -- double precision
,  [emline_ew_sii_6718] REAL NULL -- real
,  [emline_ew_sii_6732] REAL NULL -- real
,  [emline_ew_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_ew_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_ew_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_ew_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_ew_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_ew_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_ew_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_ew_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_ew_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_ew_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_ew_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_ew_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_ew_mask_hb_4862] INTEGER NULL -- integer
,  [emline_ew_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_ew_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_ew_mask_oi_6302] INTEGER NULL -- integer
,  [emline_ew_mask_oi_6365] INTEGER NULL -- integer
,  [emline_ew_mask_nii_6549] INTEGER NULL -- integer
,  [emline_ew_mask_ha_6564] INTEGER NULL -- integer
,  [emline_ew_mask_nii_6585] INTEGER NULL -- integer
,  [emline_ew_mask_sii_6718] INTEGER NULL -- integer
,  [emline_ew_mask_sii_6732] INTEGER NULL -- integer
,  [emline_sflux_oiid_3728] REAL NULL -- real
,  [emline_sflux_hb_4862] REAL NULL -- real
,  [emline_sflux_oiii_4960] REAL NULL -- real
,  [emline_sflux_oiii_5008] REAL NULL -- real
,  [emline_sflux_oi_6302] REAL NULL -- real
,  [emline_sflux_oi_6365] REAL NULL -- real
,  [emline_sflux_nii_6549] REAL NULL -- real
,  [emline_sflux_ha_6564] REAL NULL -- real
,  [emline_sflux_nii_6585] REAL NULL -- real
,  [emline_sflux_sii_6718] REAL NULL -- real
,  [emline_sflux_sii_6732] REAL NULL -- real
,  [emline_sflux_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_sflux_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_sflux_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_sflux_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_sflux_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_sflux_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_sflux_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_sflux_mask_hb_4862] INTEGER NULL -- integer
,  [emline_sflux_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_sflux_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_sflux_mask_oi_6302] INTEGER NULL -- integer
,  [emline_sflux_mask_oi_6365] INTEGER NULL -- integer
,  [emline_sflux_mask_nii_6549] INTEGER NULL -- integer
,  [emline_sflux_mask_ha_6564] INTEGER NULL -- integer
,  [emline_sflux_mask_nii_6585] INTEGER NULL -- integer
,  [emline_sflux_mask_sii_6718] INTEGER NULL -- integer
,  [emline_sflux_mask_sii_6732] INTEGER NULL -- integer
,  [stellar_vel] REAL NULL -- real
,  [stellar_vel_ivar] FLOAT NULL -- double precision
,  [stellar_vel_mask] INTEGER NULL -- integer
,  [stellar_sigma] REAL NULL -- real
,  [stellar_sigma_ivar] FLOAT NULL -- double precision
,  [stellar_sigma_mask] INTEGER NULL -- integer
,  [specindex_d4000] REAL NULL -- real
,  [specindex_caii0p39] REAL NULL -- real
,  [specindex_hdeltaa] REAL NULL -- real
,  [specindex_cn1] REAL NULL -- real
,  [specindex_cn2] REAL NULL -- real
,  [specindex_ca4227] REAL NULL -- real
,  [specindex_hgammaa] REAL NULL -- real
,  [specindex_fe4668] REAL NULL -- real
,  [specindex_hb] REAL NULL -- real
,  [specindex_mgb] REAL NULL -- real
,  [specindex_fe5270] REAL NULL -- real
,  [specindex_fe5335] REAL NULL -- real
,  [specindex_fe5406] REAL NULL -- real
,  [specindex_nad] REAL NULL -- real
,  [specindex_tio1] REAL NULL -- real
,  [specindex_tio2] REAL NULL -- real
,  [specindex_nai0p82] REAL NULL -- real
,  [specindex_caii0p86a] REAL NULL -- real
,  [specindex_caii0p86b] REAL NULL -- real
,  [specindex_caii0p86c] REAL NULL -- real
,  [specindex_mgi0p88] REAL NULL -- real
,  [specindex_tio0p89] REAL NULL -- real
,  [specindex_feh0p99] REAL NULL -- real
,  [specindex_ivar_d4000] FLOAT NULL -- double precision
,  [specindex_ivar_caii0p39] FLOAT NULL -- double precision
,  [specindex_ivar_hdeltaa] FLOAT NULL -- double precision
,  [specindex_ivar_cn1] FLOAT NULL -- double precision
,  [specindex_ivar_cn2] FLOAT NULL -- double precision
,  [specindex_ivar_ca4227] FLOAT NULL -- double precision
,  [specindex_ivar_hgammaa] FLOAT NULL -- double precision
,  [specindex_ivar_fe4668] FLOAT NULL -- double precision
,  [specindex_ivar_hb] FLOAT NULL -- double precision
,  [specindex_ivar_mgb] FLOAT NULL -- double precision
,  [specindex_ivar_fe5270] FLOAT NULL -- double precision
,  [specindex_ivar_fe5335] FLOAT NULL -- double precision
,  [specindex_ivar_fe5406] FLOAT NULL -- double precision
,  [specindex_ivar_nad] FLOAT NULL -- double precision
,  [specindex_ivar_tio1] FLOAT NULL -- double precision
,  [specindex_ivar_tio2] FLOAT NULL -- double precision
,  [specindex_ivar_nai0p82] FLOAT NULL -- double precision
,  [specindex_ivar_caii0p86a] FLOAT NULL -- double precision
,  [specindex_ivar_caii0p86b] FLOAT NULL -- double precision
,  [specindex_ivar_caii0p86c] FLOAT NULL -- double precision
,  [specindex_ivar_mgi0p88] FLOAT NULL -- double precision
,  [specindex_ivar_tio0p89] FLOAT NULL -- double precision
,  [specindex_ivar_feh0p99] FLOAT NULL -- double precision
,  [specindex_mask_d4000] INTEGER NULL -- integer
,  [specindex_mask_caii0p39] INTEGER NULL -- integer
,  [specindex_mask_hdeltaa] INTEGER NULL -- integer
,  [specindex_mask_cn1] INTEGER NULL -- integer
,  [specindex_mask_cn2] INTEGER NULL -- integer
,  [specindex_mask_ca4227] INTEGER NULL -- integer
,  [specindex_mask_hgammaa] INTEGER NULL -- integer
,  [specindex_mask_fe4668] INTEGER NULL -- integer
,  [specindex_mask_hb] INTEGER NULL -- integer
,  [specindex_mask_mgb] INTEGER NULL -- integer
,  [specindex_mask_fe5270] INTEGER NULL -- integer
,  [specindex_mask_fe5335] INTEGER NULL -- integer
,  [specindex_mask_fe5406] INTEGER NULL -- integer
,  [specindex_mask_nad] INTEGER NULL -- integer
,  [specindex_mask_tio1] INTEGER NULL -- integer
,  [specindex_mask_tio2] INTEGER NULL -- integer
,  [specindex_mask_nai0p82] INTEGER NULL -- integer
,  [specindex_mask_caii0p86a] INTEGER NULL -- integer
,  [specindex_mask_caii0p86b] INTEGER NULL -- integer
,  [specindex_mask_caii0p86c] INTEGER NULL -- integer
,  [specindex_mask_mgi0p88] INTEGER NULL -- integer
,  [specindex_mask_tio0p89] INTEGER NULL -- integer
,  [specindex_mask_feh0p99] INTEGER NULL -- integer
,  [binid] INTEGER NULL -- integer
,  [x] INTEGER NULL -- integer
,  [y] INTEGER NULL -- integer
)
with (location='manga.mangadapdb.[spaxelprop]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='spaxelprop5')
begin drop external table mangadapdb.[spaxelprop5] end

GO

CREATE EXTERNAL TABLE mangadapdb.[spaxelprop5] (
   [pk] BIGINT NOT NULL -- bigint
,  [file_pk] INTEGER NULL -- integer
,  [spaxel_index] INTEGER NULL -- integer
,  [binid_pk] INTEGER NULL -- integer
,  [spx_skycoo_on_sky_x] REAL NULL -- real
,  [spx_skycoo_on_sky_y] REAL NULL -- real
,  [spx_ellcoo_elliptical_radius] REAL NULL -- real
,  [spx_ellcoo_elliptical_azimuth] REAL NULL -- real
,  [spx_mflux] REAL NULL -- real
,  [spx_mflux_ivar] FLOAT NULL -- double precision
,  [spx_snr] REAL NULL -- real
,  [binid] INTEGER NULL -- integer
,  [bin_lwskycoo_lum_weighted_on_sky_x] REAL NULL -- real
,  [bin_lwskycoo_lum_weighted_on_sky_y] REAL NULL -- real
,  [bin_lwellcoo_lum_weighted_elliptical_radius] REAL NULL -- real
,  [bin_lwellcoo_lum_weighted_elliptical_azimuth] REAL NULL -- real
,  [bin_area] REAL NULL -- real
,  [bin_farea] REAL NULL -- real
,  [bin_mflux] REAL NULL -- real
,  [bin_mflux_ivar] FLOAT NULL -- double precision
,  [bin_mflux_mask] INTEGER NULL -- integer
,  [bin_snr] REAL NULL -- real
,  [stellar_vel] REAL NULL -- real
,  [stellar_vel_ivar] FLOAT NULL -- double precision
,  [stellar_vel_mask] INTEGER NULL -- integer
,  [stellar_sigma] REAL NULL -- real
,  [stellar_sigma_ivar] FLOAT NULL -- double precision
,  [stellar_sigma_mask] INTEGER NULL -- integer
,  [stellar_sigmacorr] REAL NULL -- real
,  [stellar_cont_fresid_68th_percentile] REAL NULL -- real
,  [stellar_cont_fresid_99th_percentile] REAL NULL -- real
,  [stellar_cont_rchi2] REAL NULL -- real
,  [emline_sflux_oiid_3728] REAL NULL -- real
,  [emline_sflux_hb_4862] REAL NULL -- real
,  [emline_sflux_oiii_4960] REAL NULL -- real
,  [emline_sflux_oiii_5008] REAL NULL -- real
,  [emline_sflux_oi_6302] REAL NULL -- real
,  [emline_sflux_oi_6365] REAL NULL -- real
,  [emline_sflux_nii_6549] REAL NULL -- real
,  [emline_sflux_ha_6564] REAL NULL -- real
,  [emline_sflux_nii_6585] REAL NULL -- real
,  [emline_sflux_sii_6718] REAL NULL -- real
,  [emline_sflux_sii_6732] REAL NULL -- real
,  [emline_sflux_oii_3727] REAL NULL -- real
,  [emline_sflux_oii_3729] REAL NULL -- real
,  [emline_sflux_heps_3971] REAL NULL -- real
,  [emline_sflux_hdel_4102] REAL NULL -- real
,  [emline_sflux_hgam_4341] REAL NULL -- real
,  [emline_sflux_heii_4687] REAL NULL -- real
,  [emline_sflux_hei_5877] REAL NULL -- real
,  [emline_sflux_siii_8831] REAL NULL -- real
,  [emline_sflux_siii_9071] REAL NULL -- real
,  [emline_sflux_siii_9533] REAL NULL -- real
,  [emline_sflux_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_sflux_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_sflux_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_sflux_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_sflux_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_sflux_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_sflux_ivar_siii_8831] FLOAT NULL -- double precision
,  [emline_sflux_ivar_siii_9071] FLOAT NULL -- double precision
,  [emline_sflux_ivar_siii_9533] FLOAT NULL -- double precision
,  [emline_sflux_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_sflux_mask_hb_4862] INTEGER NULL -- integer
,  [emline_sflux_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_sflux_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_sflux_mask_oi_6302] INTEGER NULL -- integer
,  [emline_sflux_mask_oi_6365] INTEGER NULL -- integer
,  [emline_sflux_mask_nii_6549] INTEGER NULL -- integer
,  [emline_sflux_mask_ha_6564] INTEGER NULL -- integer
,  [emline_sflux_mask_nii_6585] INTEGER NULL -- integer
,  [emline_sflux_mask_sii_6718] INTEGER NULL -- integer
,  [emline_sflux_mask_sii_6732] INTEGER NULL -- integer
,  [emline_sflux_mask_oii_3727] INTEGER NULL -- integer
,  [emline_sflux_mask_oii_3729] INTEGER NULL -- integer
,  [emline_sflux_mask_heps_3971] INTEGER NULL -- integer
,  [emline_sflux_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_sflux_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_sflux_mask_heii_4687] INTEGER NULL -- integer
,  [emline_sflux_mask_hei_5877] INTEGER NULL -- integer
,  [emline_sflux_mask_siii_8831] INTEGER NULL -- integer
,  [emline_sflux_mask_siii_9071] INTEGER NULL -- integer
,  [emline_sflux_mask_siii_9533] INTEGER NULL -- integer
,  [emline_sew_oiid_3728] FLOAT NULL -- double precision
,  [emline_sew_hb_4862] FLOAT NULL -- double precision
,  [emline_sew_oiii_4960] FLOAT NULL -- double precision
,  [emline_sew_oiii_5008] FLOAT NULL -- double precision
,  [emline_sew_oi_6302] FLOAT NULL -- double precision
,  [emline_sew_oi_6365] FLOAT NULL -- double precision
,  [emline_sew_nii_6549] FLOAT NULL -- double precision
,  [emline_sew_ha_6564] FLOAT NULL -- double precision
,  [emline_sew_nii_6585] FLOAT NULL -- double precision
,  [emline_sew_sii_6718] FLOAT NULL -- double precision
,  [emline_sew_sii_6732] FLOAT NULL -- double precision
,  [emline_sew_oii_3727] FLOAT NULL -- double precision
,  [emline_sew_oii_3729] FLOAT NULL -- double precision
,  [emline_sew_heps_3971] FLOAT NULL -- double precision
,  [emline_sew_hdel_4102] FLOAT NULL -- double precision
,  [emline_sew_hgam_4341] FLOAT NULL -- double precision
,  [emline_sew_heii_4687] FLOAT NULL -- double precision
,  [emline_sew_hei_5877] FLOAT NULL -- double precision
,  [emline_sew_siii_8831] FLOAT NULL -- double precision
,  [emline_sew_siii_9071] FLOAT NULL -- double precision
,  [emline_sew_siii_9533] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_sew_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_sew_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_sew_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_sew_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_sew_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_sew_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_sew_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_sew_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_sew_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_sew_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_sew_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_sew_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_sew_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_sew_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_sew_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_sew_ivar_siii_8831] FLOAT NULL -- double precision
,  [emline_sew_ivar_siii_9071] FLOAT NULL -- double precision
,  [emline_sew_ivar_siii_9533] FLOAT NULL -- double precision
,  [emline_sew_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_sew_mask_hb_4862] INTEGER NULL -- integer
,  [emline_sew_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_sew_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_sew_mask_oi_6302] INTEGER NULL -- integer
,  [emline_sew_mask_oi_6365] INTEGER NULL -- integer
,  [emline_sew_mask_nii_6549] INTEGER NULL -- integer
,  [emline_sew_mask_ha_6564] INTEGER NULL -- integer
,  [emline_sew_mask_nii_6585] INTEGER NULL -- integer
,  [emline_sew_mask_sii_6718] INTEGER NULL -- integer
,  [emline_sew_mask_sii_6732] INTEGER NULL -- integer
,  [emline_sew_mask_oii_3727] INTEGER NULL -- integer
,  [emline_sew_mask_oii_3729] INTEGER NULL -- integer
,  [emline_sew_mask_heps_3971] INTEGER NULL -- integer
,  [emline_sew_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_sew_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_sew_mask_heii_4687] INTEGER NULL -- integer
,  [emline_sew_mask_hei_5877] INTEGER NULL -- integer
,  [emline_sew_mask_siii_8831] INTEGER NULL -- integer
,  [emline_sew_mask_siii_9071] INTEGER NULL -- integer
,  [emline_sew_mask_siii_9533] INTEGER NULL -- integer
,  [emline_gflux_oiid_3728] REAL NULL -- real
,  [emline_gflux_hb_4862] REAL NULL -- real
,  [emline_gflux_oiii_4960] REAL NULL -- real
,  [emline_gflux_oiii_5008] FLOAT NULL -- double precision
,  [emline_gflux_oi_6302] REAL NULL -- real
,  [emline_gflux_oi_6365] REAL NULL -- real
,  [emline_gflux_nii_6549] REAL NULL -- real
,  [emline_gflux_ha_6564] FLOAT NULL -- double precision
,  [emline_gflux_nii_6585] FLOAT NULL -- double precision
,  [emline_gflux_sii_6718] REAL NULL -- real
,  [emline_gflux_sii_6732] FLOAT NULL -- double precision
,  [emline_gflux_oii_3727] FLOAT NULL -- double precision
,  [emline_gflux_oii_3729] REAL NULL -- real
,  [emline_gflux_heps_3971] REAL NULL -- real
,  [emline_gflux_hdel_4102] REAL NULL -- real
,  [emline_gflux_hgam_4341] REAL NULL -- real
,  [emline_gflux_heii_4687] REAL NULL -- real
,  [emline_gflux_hei_5877] REAL NULL -- real
,  [emline_gflux_siii_8831] REAL NULL -- real
,  [emline_gflux_siii_9071] REAL NULL -- real
,  [emline_gflux_siii_9533] REAL NULL -- real
,  [emline_gflux_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gflux_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gflux_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gflux_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gflux_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gflux_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gflux_ivar_siii_8831] FLOAT NULL -- double precision
,  [emline_gflux_ivar_siii_9071] FLOAT NULL -- double precision
,  [emline_gflux_ivar_siii_9533] FLOAT NULL -- double precision
,  [emline_gflux_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_gflux_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gflux_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gflux_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gflux_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gflux_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gflux_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gflux_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gflux_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gflux_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gflux_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gflux_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gflux_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gflux_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gflux_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gflux_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gflux_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gflux_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gflux_mask_siii_8831] INTEGER NULL -- integer
,  [emline_gflux_mask_siii_9071] INTEGER NULL -- integer
,  [emline_gflux_mask_siii_9533] INTEGER NULL -- integer
,  [emline_gvel_oiid_3728] REAL NULL -- real
,  [emline_gvel_hb_4862] REAL NULL -- real
,  [emline_gvel_oiii_4960] REAL NULL -- real
,  [emline_gvel_oiii_5008] REAL NULL -- real
,  [emline_gvel_oi_6302] REAL NULL -- real
,  [emline_gvel_oi_6365] REAL NULL -- real
,  [emline_gvel_nii_6549] REAL NULL -- real
,  [emline_gvel_ha_6564] REAL NULL -- real
,  [emline_gvel_nii_6585] REAL NULL -- real
,  [emline_gvel_sii_6718] REAL NULL -- real
,  [emline_gvel_sii_6732] REAL NULL -- real
,  [emline_gvel_oii_3727] REAL NULL -- real
,  [emline_gvel_oii_3729] REAL NULL -- real
,  [emline_gvel_heps_3971] REAL NULL -- real
,  [emline_gvel_hdel_4102] REAL NULL -- real
,  [emline_gvel_hgam_4341] REAL NULL -- real
,  [emline_gvel_heii_4687] REAL NULL -- real
,  [emline_gvel_hei_5877] REAL NULL -- real
,  [emline_gvel_siii_8831] REAL NULL -- real
,  [emline_gvel_siii_9071] REAL NULL -- real
,  [emline_gvel_siii_9533] REAL NULL -- real
,  [emline_gvel_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gvel_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gvel_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gvel_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gvel_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gvel_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gvel_ivar_siii_8831] FLOAT NULL -- double precision
,  [emline_gvel_ivar_siii_9071] FLOAT NULL -- double precision
,  [emline_gvel_ivar_siii_9533] FLOAT NULL -- double precision
,  [emline_gvel_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_gvel_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gvel_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gvel_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gvel_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gvel_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gvel_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gvel_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gvel_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gvel_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gvel_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gvel_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gvel_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gvel_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gvel_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gvel_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gvel_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gvel_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gvel_mask_siii_8831] INTEGER NULL -- integer
,  [emline_gvel_mask_siii_9071] INTEGER NULL -- integer
,  [emline_gvel_mask_siii_9533] INTEGER NULL -- integer
,  [emline_gsigma_oiid_3728] REAL NULL -- real
,  [emline_gsigma_hb_4862] REAL NULL -- real
,  [emline_gsigma_oiii_4960] REAL NULL -- real
,  [emline_gsigma_oiii_5008] REAL NULL -- real
,  [emline_gsigma_oi_6302] REAL NULL -- real
,  [emline_gsigma_oi_6365] REAL NULL -- real
,  [emline_gsigma_nii_6549] REAL NULL -- real
,  [emline_gsigma_ha_6564] REAL NULL -- real
,  [emline_gsigma_nii_6585] REAL NULL -- real
,  [emline_gsigma_sii_6718] REAL NULL -- real
,  [emline_gsigma_sii_6732] REAL NULL -- real
,  [emline_gsigma_oii_3727] REAL NULL -- real
,  [emline_gsigma_oii_3729] REAL NULL -- real
,  [emline_gsigma_heps_3971] REAL NULL -- real
,  [emline_gsigma_hdel_4102] REAL NULL -- real
,  [emline_gsigma_hgam_4341] REAL NULL -- real
,  [emline_gsigma_heii_4687] REAL NULL -- real
,  [emline_gsigma_hei_5877] REAL NULL -- real
,  [emline_gsigma_siii_8831] REAL NULL -- real
,  [emline_gsigma_siii_9071] REAL NULL -- real
,  [emline_gsigma_siii_9533] REAL NULL -- real
,  [emline_gsigma_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_siii_8831] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_siii_9071] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_siii_9533] FLOAT NULL -- double precision
,  [emline_gsigma_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_gsigma_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gsigma_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gsigma_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gsigma_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gsigma_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gsigma_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gsigma_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gsigma_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gsigma_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gsigma_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gsigma_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gsigma_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gsigma_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gsigma_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gsigma_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gsigma_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gsigma_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gsigma_mask_siii_8831] INTEGER NULL -- integer
,  [emline_gsigma_mask_siii_9071] INTEGER NULL -- integer
,  [emline_gsigma_mask_siii_9533] INTEGER NULL -- integer
,  [emline_instsigma_oiid_3728] REAL NULL -- real
,  [emline_instsigma_hb_4862] REAL NULL -- real
,  [emline_instsigma_oiii_4960] REAL NULL -- real
,  [emline_instsigma_oiii_5008] REAL NULL -- real
,  [emline_instsigma_oi_6302] REAL NULL -- real
,  [emline_instsigma_oi_6365] REAL NULL -- real
,  [emline_instsigma_nii_6549] REAL NULL -- real
,  [emline_instsigma_ha_6564] REAL NULL -- real
,  [emline_instsigma_nii_6585] REAL NULL -- real
,  [emline_instsigma_sii_6718] REAL NULL -- real
,  [emline_instsigma_sii_6732] REAL NULL -- real
,  [emline_instsigma_oii_3727] REAL NULL -- real
,  [emline_instsigma_oii_3729] REAL NULL -- real
,  [emline_instsigma_heps_3971] REAL NULL -- real
,  [emline_instsigma_hdel_4102] REAL NULL -- real
,  [emline_instsigma_hgam_4341] REAL NULL -- real
,  [emline_instsigma_heii_4687] REAL NULL -- real
,  [emline_instsigma_hei_5877] REAL NULL -- real
,  [emline_instsigma_siii_8831] REAL NULL -- real
,  [emline_instsigma_siii_9071] REAL NULL -- real
,  [emline_instsigma_siii_9533] REAL NULL -- real
,  [specindex_d4000] REAL NULL -- real
,  [specindex_dn4000] REAL NULL -- real
,  [specindex_ivar_d4000] FLOAT NULL -- double precision
,  [specindex_ivar_dn4000] FLOAT NULL -- double precision
,  [specindex_mask_d4000] INTEGER NULL -- integer
,  [specindex_mask_dn4000] INTEGER NULL -- integer
,  [specindex_corr_d4000] REAL NULL -- real
,  [specindex_corr_dn4000] REAL NULL -- real
,  [x] INTEGER NULL -- integer
,  [y] INTEGER NULL -- integer
)
with (location='manga.mangadapdb.[spaxelprop5]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='spaxelprop6')
begin drop external table mangadapdb.[spaxelprop6] end

GO

CREATE EXTERNAL TABLE mangadapdb.[spaxelprop6] (
   [pk] BIGINT NOT NULL -- bigint
,  [file_pk] INTEGER NULL -- integer
,  [spaxel_index] INTEGER NULL -- integer
,  [binid_pk] INTEGER NULL -- integer
,  [x] INTEGER NULL -- integer
,  [y] INTEGER NULL -- integer
,  [spx_skycoo_on_sky_x] REAL NULL -- real
,  [spx_skycoo_on_sky_y] REAL NULL -- real
,  [spx_ellcoo_elliptical_radius] REAL NULL -- real
,  [spx_ellcoo_r_re] REAL NULL -- real
,  [spx_ellcoo_elliptical_azimuth] REAL NULL -- real
,  [spx_mflux] REAL NULL -- real
,  [spx_mflux_ivar] FLOAT NULL -- double precision
,  [spx_snr] REAL NULL -- real
,  [binid_binned_spectra] INTEGER NULL -- integer
,  [binid_stellar_continua] INTEGER NULL -- integer
,  [binid_em_line_moments] INTEGER NULL -- integer
,  [binid_em_line_models] INTEGER NULL -- integer
,  [binid_spectral_indices] INTEGER NULL -- integer
,  [bin_lwskycoo_lum_weighted_on_sky_x] REAL NULL -- real
,  [bin_lwskycoo_lum_weighted_on_sky_y] REAL NULL -- real
,  [bin_lwellcoo_lum_weighted_elliptical_radius] REAL NULL -- real
,  [bin_lwellcoo_r_re] REAL NULL -- real
,  [bin_lwellcoo_lum_weighted_elliptical_azimuth] REAL NULL -- real
,  [bin_area] REAL NULL -- real
,  [bin_farea] REAL NULL -- real
,  [bin_mflux] REAL NULL -- real
,  [bin_mflux_ivar] FLOAT NULL -- double precision
,  [bin_mflux_mask] INTEGER NULL -- integer
,  [bin_snr] REAL NULL -- real
,  [stellar_vel] REAL NULL -- real
,  [stellar_vel_ivar] FLOAT NULL -- double precision
,  [stellar_vel_mask] INTEGER NULL -- integer
,  [stellar_sigma] REAL NULL -- real
,  [stellar_sigma_ivar] FLOAT NULL -- double precision
,  [stellar_sigma_mask] INTEGER NULL -- integer
,  [stellar_sigmacorr] REAL NULL -- real
,  [stellar_cont_fresid_68th_percentile] REAL NULL -- real
,  [stellar_cont_fresid_99th_percentile] REAL NULL -- real
,  [stellar_cont_rchi2] REAL NULL -- real
,  [emline_sflux_oiid_3728] REAL NULL -- real
,  [emline_sflux_oii_3729] REAL NULL -- real
,  [emline_sflux_hthe_3798] REAL NULL -- real
,  [emline_sflux_heta_3836] REAL NULL -- real
,  [emline_sflux_neiii_3869] REAL NULL -- real
,  [emline_sflux_hzet_3890] REAL NULL -- real
,  [emline_sflux_neiii_3968] REAL NULL -- real
,  [emline_sflux_heps_3971] REAL NULL -- real
,  [emline_sflux_hdel_4102] REAL NULL -- real
,  [emline_sflux_hgam_4341] REAL NULL -- real
,  [emline_sflux_heii_4687] REAL NULL -- real
,  [emline_sflux_hb_4862] REAL NULL -- real
,  [emline_sflux_oiii_4960] REAL NULL -- real
,  [emline_sflux_oiii_5008] REAL NULL -- real
,  [emline_sflux_hei_5877] REAL NULL -- real
,  [emline_sflux_oi_6302] REAL NULL -- real
,  [emline_sflux_oi_6365] REAL NULL -- real
,  [emline_sflux_nii_6549] REAL NULL -- real
,  [emline_sflux_ha_6564] REAL NULL -- real
,  [emline_sflux_nii_6585] REAL NULL -- real
,  [emline_sflux_sii_6718] REAL NULL -- real
,  [emline_sflux_sii_6732] REAL NULL -- real
,  [emline_sflux_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_sflux_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_sflux_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_sflux_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_sflux_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_sflux_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_sflux_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_sflux_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_sflux_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_sflux_mask_oii_3729] INTEGER NULL -- integer
,  [emline_sflux_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_sflux_mask_heta_3836] INTEGER NULL -- integer
,  [emline_sflux_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_sflux_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_sflux_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_sflux_mask_heps_3971] INTEGER NULL -- integer
,  [emline_sflux_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_sflux_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_sflux_mask_heii_4687] INTEGER NULL -- integer
,  [emline_sflux_mask_hb_4862] INTEGER NULL -- integer
,  [emline_sflux_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_sflux_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_sflux_mask_hei_5877] INTEGER NULL -- integer
,  [emline_sflux_mask_oi_6302] INTEGER NULL -- integer
,  [emline_sflux_mask_oi_6365] INTEGER NULL -- integer
,  [emline_sflux_mask_nii_6549] INTEGER NULL -- integer
,  [emline_sflux_mask_ha_6564] INTEGER NULL -- integer
,  [emline_sflux_mask_nii_6585] INTEGER NULL -- integer
,  [emline_sflux_mask_sii_6718] INTEGER NULL -- integer
,  [emline_sflux_mask_sii_6732] INTEGER NULL -- integer
,  [emline_sew_oiid_3728] FLOAT NULL -- double precision
,  [emline_sew_oii_3729] FLOAT NULL -- double precision
,  [emline_sew_hthe_3798] FLOAT NULL -- double precision
,  [emline_sew_heta_3836] FLOAT NULL -- double precision
,  [emline_sew_neiii_3869] FLOAT NULL -- double precision
,  [emline_sew_hzet_3890] FLOAT NULL -- double precision
,  [emline_sew_neiii_3968] FLOAT NULL -- double precision
,  [emline_sew_heps_3971] FLOAT NULL -- double precision
,  [emline_sew_hdel_4102] FLOAT NULL -- double precision
,  [emline_sew_hgam_4341] FLOAT NULL -- double precision
,  [emline_sew_heii_4687] FLOAT NULL -- double precision
,  [emline_sew_hb_4862] FLOAT NULL -- double precision
,  [emline_sew_oiii_4960] FLOAT NULL -- double precision
,  [emline_sew_oiii_5008] FLOAT NULL -- double precision
,  [emline_sew_hei_5877] FLOAT NULL -- double precision
,  [emline_sew_oi_6302] FLOAT NULL -- double precision
,  [emline_sew_oi_6365] FLOAT NULL -- double precision
,  [emline_sew_nii_6549] FLOAT NULL -- double precision
,  [emline_sew_ha_6564] FLOAT NULL -- double precision
,  [emline_sew_nii_6585] FLOAT NULL -- double precision
,  [emline_sew_sii_6718] FLOAT NULL -- double precision
,  [emline_sew_sii_6732] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_sew_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_sew_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_sew_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_sew_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_sew_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_sew_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_sew_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_sew_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_sew_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_sew_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_sew_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_sew_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_sew_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_sew_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_sew_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_sew_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_sew_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_sew_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_sew_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_sew_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_sew_mask_oii_3729] INTEGER NULL -- integer
,  [emline_sew_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_sew_mask_heta_3836] INTEGER NULL -- integer
,  [emline_sew_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_sew_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_sew_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_sew_mask_heps_3971] INTEGER NULL -- integer
,  [emline_sew_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_sew_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_sew_mask_heii_4687] INTEGER NULL -- integer
,  [emline_sew_mask_hb_4862] INTEGER NULL -- integer
,  [emline_sew_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_sew_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_sew_mask_hei_5877] INTEGER NULL -- integer
,  [emline_sew_mask_oi_6302] INTEGER NULL -- integer
,  [emline_sew_mask_oi_6365] INTEGER NULL -- integer
,  [emline_sew_mask_nii_6549] INTEGER NULL -- integer
,  [emline_sew_mask_ha_6564] INTEGER NULL -- integer
,  [emline_sew_mask_nii_6585] INTEGER NULL -- integer
,  [emline_sew_mask_sii_6718] INTEGER NULL -- integer
,  [emline_sew_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gflux_oii_3727] REAL NULL -- real
,  [emline_gflux_oii_3729] REAL NULL -- real
,  [emline_gflux_hthe_3798] REAL NULL -- real
,  [emline_gflux_heta_3836] REAL NULL -- real
,  [emline_gflux_neiii_3869] REAL NULL -- real
,  [emline_gflux_hzet_3890] REAL NULL -- real
,  [emline_gflux_neiii_3968] REAL NULL -- real
,  [emline_gflux_heps_3971] REAL NULL -- real
,  [emline_gflux_hdel_4102] REAL NULL -- real
,  [emline_gflux_hgam_4341] REAL NULL -- real
,  [emline_gflux_heii_4687] REAL NULL -- real
,  [emline_gflux_hb_4862] REAL NULL -- real
,  [emline_gflux_oiii_4960] REAL NULL -- real
,  [emline_gflux_oiii_5008] REAL NULL -- real
,  [emline_gflux_hei_5877] REAL NULL -- real
,  [emline_gflux_oi_6302] REAL NULL -- real
,  [emline_gflux_oi_6365] REAL NULL -- real
,  [emline_gflux_nii_6549] REAL NULL -- real
,  [emline_gflux_ha_6564] REAL NULL -- real
,  [emline_gflux_nii_6585] REAL NULL -- real
,  [emline_gflux_sii_6718] REAL NULL -- real
,  [emline_gflux_sii_6732] REAL NULL -- real
,  [emline_gflux_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gflux_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gflux_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gflux_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gflux_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gflux_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gflux_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gflux_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gflux_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gflux_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gflux_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gflux_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gflux_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gflux_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gflux_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gflux_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gflux_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gflux_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gflux_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gflux_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gflux_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gflux_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gflux_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gflux_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gflux_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gflux_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gflux_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gflux_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gflux_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gflux_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gew_oii_3727] FLOAT NULL -- double precision
,  [emline_gew_oii_3729] FLOAT NULL -- double precision
,  [emline_gew_hthe_3798] FLOAT NULL -- double precision
,  [emline_gew_heta_3836] FLOAT NULL -- double precision
,  [emline_gew_neiii_3869] FLOAT NULL -- double precision
,  [emline_gew_hzet_3890] FLOAT NULL -- double precision
,  [emline_gew_neiii_3968] FLOAT NULL -- double precision
,  [emline_gew_heps_3971] FLOAT NULL -- double precision
,  [emline_gew_hdel_4102] FLOAT NULL -- double precision
,  [emline_gew_hgam_4341] FLOAT NULL -- double precision
,  [emline_gew_heii_4687] FLOAT NULL -- double precision
,  [emline_gew_hb_4862] FLOAT NULL -- double precision
,  [emline_gew_oiii_4960] FLOAT NULL -- double precision
,  [emline_gew_oiii_5008] FLOAT NULL -- double precision
,  [emline_gew_hei_5877] FLOAT NULL -- double precision
,  [emline_gew_oi_6302] FLOAT NULL -- double precision
,  [emline_gew_oi_6365] FLOAT NULL -- double precision
,  [emline_gew_nii_6549] FLOAT NULL -- double precision
,  [emline_gew_ha_6564] FLOAT NULL -- double precision
,  [emline_gew_nii_6585] FLOAT NULL -- double precision
,  [emline_gew_sii_6718] FLOAT NULL -- double precision
,  [emline_gew_sii_6732] FLOAT NULL -- double precision
,  [emline_gew_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gew_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gew_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gew_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gew_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gew_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gew_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gew_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gew_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gew_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gew_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gew_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gew_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gew_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gew_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gew_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gew_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gew_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gew_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gew_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gew_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gew_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gew_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gew_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gew_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gew_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gew_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gew_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gew_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gew_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gew_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gew_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gew_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gew_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gew_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gew_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gew_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gew_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gew_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gew_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gew_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gew_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gew_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gew_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gvel_oii_3727] REAL NULL -- real
,  [emline_gvel_oii_3729] REAL NULL -- real
,  [emline_gvel_hthe_3798] REAL NULL -- real
,  [emline_gvel_heta_3836] REAL NULL -- real
,  [emline_gvel_neiii_3869] REAL NULL -- real
,  [emline_gvel_hzet_3890] REAL NULL -- real
,  [emline_gvel_neiii_3968] REAL NULL -- real
,  [emline_gvel_heps_3971] REAL NULL -- real
,  [emline_gvel_hdel_4102] REAL NULL -- real
,  [emline_gvel_hgam_4341] REAL NULL -- real
,  [emline_gvel_heii_4687] REAL NULL -- real
,  [emline_gvel_hb_4862] REAL NULL -- real
,  [emline_gvel_oiii_4960] REAL NULL -- real
,  [emline_gvel_oiii_5008] REAL NULL -- real
,  [emline_gvel_hei_5877] REAL NULL -- real
,  [emline_gvel_oi_6302] REAL NULL -- real
,  [emline_gvel_oi_6365] REAL NULL -- real
,  [emline_gvel_nii_6549] REAL NULL -- real
,  [emline_gvel_ha_6564] REAL NULL -- real
,  [emline_gvel_nii_6585] REAL NULL -- real
,  [emline_gvel_sii_6718] REAL NULL -- real
,  [emline_gvel_sii_6732] REAL NULL -- real
,  [emline_gvel_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gvel_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gvel_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gvel_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gvel_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gvel_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gvel_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gvel_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gvel_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gvel_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gvel_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gvel_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gvel_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gvel_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gvel_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gvel_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gvel_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gvel_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gvel_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gvel_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gvel_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gvel_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gvel_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gvel_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gvel_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gvel_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gvel_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gvel_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gvel_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gvel_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gsigma_oii_3727] REAL NULL -- real
,  [emline_gsigma_oii_3729] REAL NULL -- real
,  [emline_gsigma_hthe_3798] REAL NULL -- real
,  [emline_gsigma_heta_3836] REAL NULL -- real
,  [emline_gsigma_neiii_3869] REAL NULL -- real
,  [emline_gsigma_hzet_3890] REAL NULL -- real
,  [emline_gsigma_neiii_3968] REAL NULL -- real
,  [emline_gsigma_heps_3971] REAL NULL -- real
,  [emline_gsigma_hdel_4102] REAL NULL -- real
,  [emline_gsigma_hgam_4341] REAL NULL -- real
,  [emline_gsigma_heii_4687] REAL NULL -- real
,  [emline_gsigma_hb_4862] REAL NULL -- real
,  [emline_gsigma_oiii_4960] REAL NULL -- real
,  [emline_gsigma_oiii_5008] REAL NULL -- real
,  [emline_gsigma_hei_5877] REAL NULL -- real
,  [emline_gsigma_oi_6302] REAL NULL -- real
,  [emline_gsigma_oi_6365] REAL NULL -- real
,  [emline_gsigma_nii_6549] REAL NULL -- real
,  [emline_gsigma_ha_6564] REAL NULL -- real
,  [emline_gsigma_nii_6585] REAL NULL -- real
,  [emline_gsigma_sii_6718] REAL NULL -- real
,  [emline_gsigma_sii_6732] REAL NULL -- real
,  [emline_gsigma_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gsigma_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gsigma_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gsigma_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gsigma_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gsigma_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gsigma_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gsigma_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gsigma_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gsigma_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gsigma_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gsigma_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gsigma_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gsigma_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gsigma_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gsigma_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gsigma_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gsigma_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gsigma_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gsigma_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gsigma_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gsigma_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gsigma_mask_sii_6732] INTEGER NULL -- integer
,  [emline_instsigma_oii_3727] REAL NULL -- real
,  [emline_instsigma_oii_3729] REAL NULL -- real
,  [emline_instsigma_hthe_3798] REAL NULL -- real
,  [emline_instsigma_heta_3836] REAL NULL -- real
,  [emline_instsigma_neiii_3869] REAL NULL -- real
,  [emline_instsigma_hzet_3890] REAL NULL -- real
,  [emline_instsigma_neiii_3968] REAL NULL -- real
,  [emline_instsigma_heps_3971] REAL NULL -- real
,  [emline_instsigma_hdel_4102] REAL NULL -- real
,  [emline_instsigma_hgam_4341] REAL NULL -- real
,  [emline_instsigma_heii_4687] REAL NULL -- real
,  [emline_instsigma_hb_4862] REAL NULL -- real
,  [emline_instsigma_oiii_4960] REAL NULL -- real
,  [emline_instsigma_oiii_5008] REAL NULL -- real
,  [emline_instsigma_hei_5877] REAL NULL -- real
,  [emline_instsigma_oi_6302] REAL NULL -- real
,  [emline_instsigma_oi_6365] REAL NULL -- real
,  [emline_instsigma_nii_6549] REAL NULL -- real
,  [emline_instsigma_ha_6564] REAL NULL -- real
,  [emline_instsigma_nii_6585] REAL NULL -- real
,  [emline_instsigma_sii_6718] REAL NULL -- real
,  [emline_instsigma_sii_6732] REAL NULL -- real
,  [emline_tplsigma_oii_3727] REAL NULL -- real
,  [emline_tplsigma_oii_3729] REAL NULL -- real
,  [emline_tplsigma_hthe_3798] REAL NULL -- real
,  [emline_tplsigma_heta_3836] REAL NULL -- real
,  [emline_tplsigma_neiii_3869] REAL NULL -- real
,  [emline_tplsigma_hzet_3890] REAL NULL -- real
,  [emline_tplsigma_neiii_3968] REAL NULL -- real
,  [emline_tplsigma_heps_3971] REAL NULL -- real
,  [emline_tplsigma_hdel_4102] REAL NULL -- real
,  [emline_tplsigma_hgam_4341] REAL NULL -- real
,  [emline_tplsigma_heii_4687] REAL NULL -- real
,  [emline_tplsigma_hb_4862] REAL NULL -- real
,  [emline_tplsigma_oiii_4960] REAL NULL -- real
,  [emline_tplsigma_oiii_5008] REAL NULL -- real
,  [emline_tplsigma_hei_5877] REAL NULL -- real
,  [emline_tplsigma_oi_6302] REAL NULL -- real
,  [emline_tplsigma_oi_6365] REAL NULL -- real
,  [emline_tplsigma_nii_6549] REAL NULL -- real
,  [emline_tplsigma_ha_6564] REAL NULL -- real
,  [emline_tplsigma_nii_6585] REAL NULL -- real
,  [emline_tplsigma_sii_6718] REAL NULL -- real
,  [emline_tplsigma_sii_6732] REAL NULL -- real
,  [specindex_cn1] REAL NULL -- real
,  [specindex_cn2] REAL NULL -- real
,  [specindex_ca4227] REAL NULL -- real
,  [specindex_g4300] REAL NULL -- real
,  [specindex_fe4383] REAL NULL -- real
,  [specindex_ca4455] REAL NULL -- real
,  [specindex_fe4531] REAL NULL -- real
,  [specindex_c24668] REAL NULL -- real
,  [specindex_hb] REAL NULL -- real
,  [specindex_fe5015] REAL NULL -- real
,  [specindex_mg1] REAL NULL -- real
,  [specindex_mg2] REAL NULL -- real
,  [specindex_mgb] REAL NULL -- real
,  [specindex_fe5270] REAL NULL -- real
,  [specindex_fe5335] REAL NULL -- real
,  [specindex_fe5406] REAL NULL -- real
,  [specindex_fe5709] REAL NULL -- real
,  [specindex_fe5782] REAL NULL -- real
,  [specindex_nad] REAL NULL -- real
,  [specindex_tio1] REAL NULL -- real
,  [specindex_tio2] REAL NULL -- real
,  [specindex_hdeltaa] REAL NULL -- real
,  [specindex_hgammaa] REAL NULL -- real
,  [specindex_hdeltaf] REAL NULL -- real
,  [specindex_hgammaf] REAL NULL -- real
,  [specindex_cahk] REAL NULL -- real
,  [specindex_caii1] REAL NULL -- real
,  [specindex_caii2] REAL NULL -- real
,  [specindex_caii3] REAL NULL -- real
,  [specindex_pa17] REAL NULL -- real
,  [specindex_pa14] REAL NULL -- real
,  [specindex_pa12] REAL NULL -- real
,  [specindex_mgicvd] REAL NULL -- real
,  [specindex_naicvd] REAL NULL -- real
,  [specindex_mgiir] REAL NULL -- real
,  [specindex_fehcvd] REAL NULL -- real
,  [specindex_nai] REAL NULL -- real
,  [specindex_btio] REAL NULL -- real
,  [specindex_atio] REAL NULL -- real
,  [specindex_cah1] REAL NULL -- real
,  [specindex_cah2] REAL NULL -- real
,  [specindex_naisdss] REAL NULL -- real
,  [specindex_tio2sdss] REAL NULL -- real
,  [specindex_d4000] REAL NULL -- real
,  [specindex_dn4000] REAL NULL -- real
,  [specindex_tiocvd] REAL NULL -- real
,  [specindex_ivar_cn1] FLOAT NULL -- double precision
,  [specindex_ivar_cn2] FLOAT NULL -- double precision
,  [specindex_ivar_ca4227] FLOAT NULL -- double precision
,  [specindex_ivar_g4300] FLOAT NULL -- double precision
,  [specindex_ivar_fe4383] FLOAT NULL -- double precision
,  [specindex_ivar_ca4455] FLOAT NULL -- double precision
,  [specindex_ivar_fe4531] FLOAT NULL -- double precision
,  [specindex_ivar_c24668] FLOAT NULL -- double precision
,  [specindex_ivar_hb] FLOAT NULL -- double precision
,  [specindex_ivar_fe5015] FLOAT NULL -- double precision
,  [specindex_ivar_mg1] FLOAT NULL -- double precision
,  [specindex_ivar_mg2] FLOAT NULL -- double precision
,  [specindex_ivar_mgb] FLOAT NULL -- double precision
,  [specindex_ivar_fe5270] FLOAT NULL -- double precision
,  [specindex_ivar_fe5335] FLOAT NULL -- double precision
,  [specindex_ivar_fe5406] FLOAT NULL -- double precision
,  [specindex_ivar_fe5709] FLOAT NULL -- double precision
,  [specindex_ivar_fe5782] FLOAT NULL -- double precision
,  [specindex_ivar_nad] FLOAT NULL -- double precision
,  [specindex_ivar_tio1] FLOAT NULL -- double precision
,  [specindex_ivar_tio2] FLOAT NULL -- double precision
,  [specindex_ivar_hdeltaa] FLOAT NULL -- double precision
,  [specindex_ivar_hgammaa] FLOAT NULL -- double precision
,  [specindex_ivar_hdeltaf] FLOAT NULL -- double precision
,  [specindex_ivar_hgammaf] FLOAT NULL -- double precision
,  [specindex_ivar_cahk] FLOAT NULL -- double precision
,  [specindex_ivar_caii1] FLOAT NULL -- double precision
,  [specindex_ivar_caii2] FLOAT NULL -- double precision
,  [specindex_ivar_caii3] FLOAT NULL -- double precision
,  [specindex_ivar_pa17] FLOAT NULL -- double precision
,  [specindex_ivar_pa14] FLOAT NULL -- double precision
,  [specindex_ivar_pa12] FLOAT NULL -- double precision
,  [specindex_ivar_mgicvd] FLOAT NULL -- double precision
,  [specindex_ivar_naicvd] FLOAT NULL -- double precision
,  [specindex_ivar_mgiir] FLOAT NULL -- double precision
,  [specindex_ivar_fehcvd] FLOAT NULL -- double precision
,  [specindex_ivar_nai] FLOAT NULL -- double precision
,  [specindex_ivar_btio] FLOAT NULL -- double precision
,  [specindex_ivar_atio] FLOAT NULL -- double precision
,  [specindex_ivar_cah1] FLOAT NULL -- double precision
,  [specindex_ivar_cah2] FLOAT NULL -- double precision
,  [specindex_ivar_naisdss] FLOAT NULL -- double precision
,  [specindex_ivar_tio2sdss] FLOAT NULL -- double precision
,  [specindex_ivar_d4000] FLOAT NULL -- double precision
,  [specindex_ivar_dn4000] FLOAT NULL -- double precision
,  [specindex_ivar_tiocvd] FLOAT NULL -- double precision
,  [specindex_mask_cn1] INTEGER NULL -- integer
,  [specindex_mask_cn2] INTEGER NULL -- integer
,  [specindex_mask_ca4227] INTEGER NULL -- integer
,  [specindex_mask_g4300] INTEGER NULL -- integer
,  [specindex_mask_fe4383] INTEGER NULL -- integer
,  [specindex_mask_ca4455] INTEGER NULL -- integer
,  [specindex_mask_fe4531] INTEGER NULL -- integer
,  [specindex_mask_c24668] INTEGER NULL -- integer
,  [specindex_mask_hb] INTEGER NULL -- integer
,  [specindex_mask_fe5015] INTEGER NULL -- integer
,  [specindex_mask_mg1] INTEGER NULL -- integer
,  [specindex_mask_mg2] INTEGER NULL -- integer
,  [specindex_mask_mgb] INTEGER NULL -- integer
,  [specindex_mask_fe5270] INTEGER NULL -- integer
,  [specindex_mask_fe5335] INTEGER NULL -- integer
,  [specindex_mask_fe5406] INTEGER NULL -- integer
,  [specindex_mask_fe5709] INTEGER NULL -- integer
,  [specindex_mask_fe5782] INTEGER NULL -- integer
,  [specindex_mask_nad] INTEGER NULL -- integer
,  [specindex_mask_tio1] INTEGER NULL -- integer
,  [specindex_mask_tio2] INTEGER NULL -- integer
,  [specindex_mask_hdeltaa] INTEGER NULL -- integer
,  [specindex_mask_hgammaa] INTEGER NULL -- integer
,  [specindex_mask_hdeltaf] INTEGER NULL -- integer
,  [specindex_mask_hgammaf] INTEGER NULL -- integer
,  [specindex_mask_cahk] INTEGER NULL -- integer
,  [specindex_mask_caii1] INTEGER NULL -- integer
,  [specindex_mask_caii2] INTEGER NULL -- integer
,  [specindex_mask_caii3] INTEGER NULL -- integer
,  [specindex_mask_pa17] INTEGER NULL -- integer
,  [specindex_mask_pa14] INTEGER NULL -- integer
,  [specindex_mask_pa12] INTEGER NULL -- integer
,  [specindex_mask_mgicvd] INTEGER NULL -- integer
,  [specindex_mask_naicvd] INTEGER NULL -- integer
,  [specindex_mask_mgiir] INTEGER NULL -- integer
,  [specindex_mask_fehcvd] INTEGER NULL -- integer
,  [specindex_mask_nai] INTEGER NULL -- integer
,  [specindex_mask_btio] INTEGER NULL -- integer
,  [specindex_mask_atio] INTEGER NULL -- integer
,  [specindex_mask_cah1] INTEGER NULL -- integer
,  [specindex_mask_cah2] INTEGER NULL -- integer
,  [specindex_mask_naisdss] INTEGER NULL -- integer
,  [specindex_mask_tio2sdss] INTEGER NULL -- integer
,  [specindex_mask_d4000] INTEGER NULL -- integer
,  [specindex_mask_dn4000] INTEGER NULL -- integer
,  [specindex_mask_tiocvd] INTEGER NULL -- integer
,  [specindex_corr_cn1] REAL NULL -- real
,  [specindex_corr_cn2] REAL NULL -- real
,  [specindex_corr_ca4227] REAL NULL -- real
,  [specindex_corr_g4300] REAL NULL -- real
,  [specindex_corr_fe4383] REAL NULL -- real
,  [specindex_corr_ca4455] REAL NULL -- real
,  [specindex_corr_fe4531] REAL NULL -- real
,  [specindex_corr_c24668] REAL NULL -- real
,  [specindex_corr_hb] REAL NULL -- real
,  [specindex_corr_fe5015] REAL NULL -- real
,  [specindex_corr_mg1] REAL NULL -- real
,  [specindex_corr_mg2] REAL NULL -- real
,  [specindex_corr_mgb] REAL NULL -- real
,  [specindex_corr_fe5270] REAL NULL -- real
,  [specindex_corr_fe5335] REAL NULL -- real
,  [specindex_corr_fe5406] REAL NULL -- real
,  [specindex_corr_fe5709] REAL NULL -- real
,  [specindex_corr_fe5782] REAL NULL -- real
,  [specindex_corr_nad] REAL NULL -- real
,  [specindex_corr_tio1] REAL NULL -- real
,  [specindex_corr_tio2] REAL NULL -- real
,  [specindex_corr_hdeltaa] REAL NULL -- real
,  [specindex_corr_hgammaa] REAL NULL -- real
,  [specindex_corr_hdeltaf] REAL NULL -- real
,  [specindex_corr_hgammaf] REAL NULL -- real
,  [specindex_corr_cahk] REAL NULL -- real
,  [specindex_corr_caii1] REAL NULL -- real
,  [specindex_corr_caii2] REAL NULL -- real
,  [specindex_corr_caii3] REAL NULL -- real
,  [specindex_corr_pa17] REAL NULL -- real
,  [specindex_corr_pa14] REAL NULL -- real
,  [specindex_corr_pa12] REAL NULL -- real
,  [specindex_corr_mgicvd] REAL NULL -- real
,  [specindex_corr_naicvd] REAL NULL -- real
,  [specindex_corr_mgiir] REAL NULL -- real
,  [specindex_corr_fehcvd] REAL NULL -- real
,  [specindex_corr_nai] REAL NULL -- real
,  [specindex_corr_btio] REAL NULL -- real
,  [specindex_corr_atio] REAL NULL -- real
,  [specindex_corr_cah1] REAL NULL -- real
,  [specindex_corr_cah2] REAL NULL -- real
,  [specindex_corr_naisdss] REAL NULL -- real
,  [specindex_corr_tio2sdss] REAL NULL -- real
,  [specindex_corr_d4000] REAL NULL -- real
,  [specindex_corr_dn4000] REAL NULL -- real
,  [specindex_corr_tiocvd] REAL NULL -- real
)
with (location='manga.mangadapdb.[spaxelprop6]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='spaxelprop7')
begin drop external table mangadapdb.[spaxelprop7] end

GO

CREATE EXTERNAL TABLE mangadapdb.[spaxelprop7] (
   [pk] BIGINT NOT NULL -- bigint
,  [file_pk] INTEGER NULL -- integer
,  [spaxel_index] INTEGER NULL -- integer
,  [binid_pk] INTEGER NULL -- integer
,  [x] INTEGER NULL -- integer
,  [y] INTEGER NULL -- integer
,  [spx_skycoo_on_sky_x] REAL NULL -- real
,  [spx_skycoo_on_sky_y] REAL NULL -- real
,  [spx_ellcoo_elliptical_radius] REAL NULL -- real
,  [spx_ellcoo_r_re] REAL NULL -- real
,  [spx_ellcoo_elliptical_azimuth] REAL NULL -- real
,  [spx_mflux] REAL NULL -- real
,  [spx_mflux_ivar] FLOAT NULL -- double precision
,  [spx_snr] REAL NULL -- real
,  [binid_binned_spectra] INTEGER NULL -- integer
,  [binid_stellar_continua] INTEGER NULL -- integer
,  [binid_em_line_moments] INTEGER NULL -- integer
,  [binid_em_line_models] INTEGER NULL -- integer
,  [binid_spectral_indices] INTEGER NULL -- integer
,  [bin_lwskycoo_lum_weighted_on_sky_x] REAL NULL -- real
,  [bin_lwskycoo_lum_weighted_on_sky_y] REAL NULL -- real
,  [bin_lwellcoo_lum_weighted_elliptical_radius] REAL NULL -- real
,  [bin_lwellcoo_r_re] REAL NULL -- real
,  [bin_lwellcoo_lum_weighted_elliptical_azimuth] REAL NULL -- real
,  [bin_area] REAL NULL -- real
,  [bin_farea] REAL NULL -- real
,  [bin_mflux] REAL NULL -- real
,  [bin_mflux_ivar] FLOAT NULL -- double precision
,  [bin_mflux_mask] INTEGER NULL -- integer
,  [bin_snr] REAL NULL -- real
,  [stellar_vel] REAL NULL -- real
,  [stellar_vel_ivar] FLOAT NULL -- double precision
,  [stellar_vel_mask] INTEGER NULL -- integer
,  [stellar_sigma] REAL NULL -- real
,  [stellar_sigma_ivar] FLOAT NULL -- double precision
,  [stellar_sigma_mask] INTEGER NULL -- integer
,  [stellar_sigmacorr] REAL NULL -- real
,  [stellar_cont_fresid_68th_percentile] REAL NULL -- real
,  [stellar_cont_fresid_99th_percentile] REAL NULL -- real
,  [stellar_cont_rchi2] REAL NULL -- real
,  [emline_sflux_oiid_3728] REAL NULL -- real
,  [emline_sflux_oii_3729] REAL NULL -- real
,  [emline_sflux_hthe_3798] REAL NULL -- real
,  [emline_sflux_heta_3836] REAL NULL -- real
,  [emline_sflux_neiii_3869] REAL NULL -- real
,  [emline_sflux_hzet_3890] REAL NULL -- real
,  [emline_sflux_neiii_3968] REAL NULL -- real
,  [emline_sflux_heps_3971] REAL NULL -- real
,  [emline_sflux_hdel_4102] REAL NULL -- real
,  [emline_sflux_hgam_4341] REAL NULL -- real
,  [emline_sflux_heii_4687] REAL NULL -- real
,  [emline_sflux_hb_4862] REAL NULL -- real
,  [emline_sflux_oiii_4960] REAL NULL -- real
,  [emline_sflux_oiii_5008] REAL NULL -- real
,  [emline_sflux_hei_5877] REAL NULL -- real
,  [emline_sflux_oi_6302] REAL NULL -- real
,  [emline_sflux_oi_6365] REAL NULL -- real
,  [emline_sflux_nii_6549] REAL NULL -- real
,  [emline_sflux_ha_6564] REAL NULL -- real
,  [emline_sflux_nii_6585] REAL NULL -- real
,  [emline_sflux_sii_6718] REAL NULL -- real
,  [emline_sflux_sii_6732] REAL NULL -- real
,  [emline_sflux_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_sflux_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_sflux_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_sflux_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_sflux_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_sflux_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_sflux_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_sflux_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_sflux_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_sflux_mask_oii_3729] INTEGER NULL -- integer
,  [emline_sflux_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_sflux_mask_heta_3836] INTEGER NULL -- integer
,  [emline_sflux_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_sflux_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_sflux_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_sflux_mask_heps_3971] INTEGER NULL -- integer
,  [emline_sflux_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_sflux_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_sflux_mask_heii_4687] INTEGER NULL -- integer
,  [emline_sflux_mask_hb_4862] INTEGER NULL -- integer
,  [emline_sflux_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_sflux_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_sflux_mask_hei_5877] INTEGER NULL -- integer
,  [emline_sflux_mask_oi_6302] INTEGER NULL -- integer
,  [emline_sflux_mask_oi_6365] INTEGER NULL -- integer
,  [emline_sflux_mask_nii_6549] INTEGER NULL -- integer
,  [emline_sflux_mask_ha_6564] INTEGER NULL -- integer
,  [emline_sflux_mask_nii_6585] INTEGER NULL -- integer
,  [emline_sflux_mask_sii_6718] INTEGER NULL -- integer
,  [emline_sflux_mask_sii_6732] INTEGER NULL -- integer
,  [emline_sew_oiid_3728] FLOAT NULL -- double precision
,  [emline_sew_oii_3729] FLOAT NULL -- double precision
,  [emline_sew_hthe_3798] FLOAT NULL -- double precision
,  [emline_sew_heta_3836] FLOAT NULL -- double precision
,  [emline_sew_neiii_3869] FLOAT NULL -- double precision
,  [emline_sew_hzet_3890] FLOAT NULL -- double precision
,  [emline_sew_neiii_3968] FLOAT NULL -- double precision
,  [emline_sew_heps_3971] FLOAT NULL -- double precision
,  [emline_sew_hdel_4102] FLOAT NULL -- double precision
,  [emline_sew_hgam_4341] FLOAT NULL -- double precision
,  [emline_sew_heii_4687] FLOAT NULL -- double precision
,  [emline_sew_hb_4862] FLOAT NULL -- double precision
,  [emline_sew_oiii_4960] FLOAT NULL -- double precision
,  [emline_sew_oiii_5008] FLOAT NULL -- double precision
,  [emline_sew_hei_5877] FLOAT NULL -- double precision
,  [emline_sew_oi_6302] FLOAT NULL -- double precision
,  [emline_sew_oi_6365] FLOAT NULL -- double precision
,  [emline_sew_nii_6549] FLOAT NULL -- double precision
,  [emline_sew_ha_6564] FLOAT NULL -- double precision
,  [emline_sew_nii_6585] FLOAT NULL -- double precision
,  [emline_sew_sii_6718] FLOAT NULL -- double precision
,  [emline_sew_sii_6732] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_sew_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_sew_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_sew_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_sew_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_sew_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_sew_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_sew_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_sew_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_sew_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_sew_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_sew_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_sew_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_sew_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_sew_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_sew_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_sew_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_sew_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_sew_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_sew_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_sew_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_sew_mask_oii_3729] INTEGER NULL -- integer
,  [emline_sew_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_sew_mask_heta_3836] INTEGER NULL -- integer
,  [emline_sew_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_sew_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_sew_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_sew_mask_heps_3971] INTEGER NULL -- integer
,  [emline_sew_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_sew_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_sew_mask_heii_4687] INTEGER NULL -- integer
,  [emline_sew_mask_hb_4862] INTEGER NULL -- integer
,  [emline_sew_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_sew_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_sew_mask_hei_5877] INTEGER NULL -- integer
,  [emline_sew_mask_oi_6302] INTEGER NULL -- integer
,  [emline_sew_mask_oi_6365] INTEGER NULL -- integer
,  [emline_sew_mask_nii_6549] INTEGER NULL -- integer
,  [emline_sew_mask_ha_6564] INTEGER NULL -- integer
,  [emline_sew_mask_nii_6585] INTEGER NULL -- integer
,  [emline_sew_mask_sii_6718] INTEGER NULL -- integer
,  [emline_sew_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gflux_oii_3727] REAL NULL -- real
,  [emline_gflux_oii_3729] REAL NULL -- real
,  [emline_gflux_hthe_3798] REAL NULL -- real
,  [emline_gflux_heta_3836] REAL NULL -- real
,  [emline_gflux_neiii_3869] REAL NULL -- real
,  [emline_gflux_hzet_3890] REAL NULL -- real
,  [emline_gflux_neiii_3968] REAL NULL -- real
,  [emline_gflux_heps_3971] REAL NULL -- real
,  [emline_gflux_hdel_4102] REAL NULL -- real
,  [emline_gflux_hgam_4341] REAL NULL -- real
,  [emline_gflux_heii_4687] REAL NULL -- real
,  [emline_gflux_hb_4862] REAL NULL -- real
,  [emline_gflux_oiii_4960] REAL NULL -- real
,  [emline_gflux_oiii_5008] REAL NULL -- real
,  [emline_gflux_hei_5877] REAL NULL -- real
,  [emline_gflux_oi_6302] REAL NULL -- real
,  [emline_gflux_oi_6365] REAL NULL -- real
,  [emline_gflux_nii_6549] REAL NULL -- real
,  [emline_gflux_ha_6564] REAL NULL -- real
,  [emline_gflux_nii_6585] REAL NULL -- real
,  [emline_gflux_sii_6718] REAL NULL -- real
,  [emline_gflux_sii_6732] REAL NULL -- real
,  [emline_gflux_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gflux_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gflux_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gflux_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gflux_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gflux_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gflux_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gflux_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gflux_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gflux_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gflux_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gflux_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gflux_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gflux_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gflux_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gflux_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gflux_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gflux_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gflux_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gflux_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gflux_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gflux_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gflux_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gflux_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gflux_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gflux_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gflux_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gflux_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gflux_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gflux_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gew_oii_3727] FLOAT NULL -- double precision
,  [emline_gew_oii_3729] FLOAT NULL -- double precision
,  [emline_gew_hthe_3798] FLOAT NULL -- double precision
,  [emline_gew_heta_3836] FLOAT NULL -- double precision
,  [emline_gew_neiii_3869] FLOAT NULL -- double precision
,  [emline_gew_hzet_3890] FLOAT NULL -- double precision
,  [emline_gew_neiii_3968] FLOAT NULL -- double precision
,  [emline_gew_heps_3971] FLOAT NULL -- double precision
,  [emline_gew_hdel_4102] FLOAT NULL -- double precision
,  [emline_gew_hgam_4341] FLOAT NULL -- double precision
,  [emline_gew_heii_4687] FLOAT NULL -- double precision
,  [emline_gew_hb_4862] FLOAT NULL -- double precision
,  [emline_gew_oiii_4960] FLOAT NULL -- double precision
,  [emline_gew_oiii_5008] FLOAT NULL -- double precision
,  [emline_gew_hei_5877] FLOAT NULL -- double precision
,  [emline_gew_oi_6302] FLOAT NULL -- double precision
,  [emline_gew_oi_6365] FLOAT NULL -- double precision
,  [emline_gew_nii_6549] FLOAT NULL -- double precision
,  [emline_gew_ha_6564] FLOAT NULL -- double precision
,  [emline_gew_nii_6585] FLOAT NULL -- double precision
,  [emline_gew_sii_6718] FLOAT NULL -- double precision
,  [emline_gew_sii_6732] FLOAT NULL -- double precision
,  [emline_gew_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gew_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gew_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gew_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gew_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gew_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gew_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gew_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gew_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gew_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gew_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gew_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gew_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gew_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gew_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gew_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gew_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gew_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gew_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gew_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gew_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gew_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gew_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gew_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gew_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gew_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gew_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gew_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gew_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gew_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gew_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gew_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gew_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gew_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gew_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gew_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gew_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gew_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gew_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gew_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gew_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gew_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gew_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gew_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gvel_oii_3727] REAL NULL -- real
,  [emline_gvel_oii_3729] REAL NULL -- real
,  [emline_gvel_hthe_3798] REAL NULL -- real
,  [emline_gvel_heta_3836] REAL NULL -- real
,  [emline_gvel_neiii_3869] REAL NULL -- real
,  [emline_gvel_hzet_3890] REAL NULL -- real
,  [emline_gvel_neiii_3968] REAL NULL -- real
,  [emline_gvel_heps_3971] REAL NULL -- real
,  [emline_gvel_hdel_4102] REAL NULL -- real
,  [emline_gvel_hgam_4341] REAL NULL -- real
,  [emline_gvel_heii_4687] REAL NULL -- real
,  [emline_gvel_hb_4862] REAL NULL -- real
,  [emline_gvel_oiii_4960] REAL NULL -- real
,  [emline_gvel_oiii_5008] REAL NULL -- real
,  [emline_gvel_hei_5877] REAL NULL -- real
,  [emline_gvel_oi_6302] REAL NULL -- real
,  [emline_gvel_oi_6365] REAL NULL -- real
,  [emline_gvel_nii_6549] REAL NULL -- real
,  [emline_gvel_ha_6564] REAL NULL -- real
,  [emline_gvel_nii_6585] REAL NULL -- real
,  [emline_gvel_sii_6718] REAL NULL -- real
,  [emline_gvel_sii_6732] REAL NULL -- real
,  [emline_gvel_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gvel_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gvel_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gvel_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gvel_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gvel_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gvel_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gvel_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gvel_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gvel_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gvel_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gvel_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gvel_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gvel_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gvel_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gvel_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gvel_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gvel_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gvel_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gvel_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gvel_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gvel_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gvel_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gvel_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gvel_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gvel_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gvel_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gvel_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gvel_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gvel_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gsigma_oii_3727] REAL NULL -- real
,  [emline_gsigma_oii_3729] REAL NULL -- real
,  [emline_gsigma_hthe_3798] REAL NULL -- real
,  [emline_gsigma_heta_3836] REAL NULL -- real
,  [emline_gsigma_neiii_3869] REAL NULL -- real
,  [emline_gsigma_hzet_3890] REAL NULL -- real
,  [emline_gsigma_neiii_3968] REAL NULL -- real
,  [emline_gsigma_heps_3971] REAL NULL -- real
,  [emline_gsigma_hdel_4102] REAL NULL -- real
,  [emline_gsigma_hgam_4341] REAL NULL -- real
,  [emline_gsigma_heii_4687] REAL NULL -- real
,  [emline_gsigma_hb_4862] REAL NULL -- real
,  [emline_gsigma_oiii_4960] REAL NULL -- real
,  [emline_gsigma_oiii_5008] REAL NULL -- real
,  [emline_gsigma_hei_5877] REAL NULL -- real
,  [emline_gsigma_oi_6302] REAL NULL -- real
,  [emline_gsigma_oi_6365] REAL NULL -- real
,  [emline_gsigma_nii_6549] REAL NULL -- real
,  [emline_gsigma_ha_6564] REAL NULL -- real
,  [emline_gsigma_nii_6585] REAL NULL -- real
,  [emline_gsigma_sii_6718] REAL NULL -- real
,  [emline_gsigma_sii_6732] REAL NULL -- real
,  [emline_gsigma_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gsigma_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gsigma_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gsigma_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gsigma_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gsigma_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gsigma_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gsigma_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gsigma_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gsigma_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gsigma_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gsigma_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gsigma_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gsigma_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gsigma_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gsigma_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gsigma_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gsigma_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gsigma_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gsigma_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gsigma_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gsigma_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gsigma_mask_sii_6732] INTEGER NULL -- integer
,  [emline_instsigma_oii_3727] REAL NULL -- real
,  [emline_instsigma_oii_3729] REAL NULL -- real
,  [emline_instsigma_hthe_3798] REAL NULL -- real
,  [emline_instsigma_heta_3836] REAL NULL -- real
,  [emline_instsigma_neiii_3869] REAL NULL -- real
,  [emline_instsigma_hzet_3890] REAL NULL -- real
,  [emline_instsigma_neiii_3968] REAL NULL -- real
,  [emline_instsigma_heps_3971] REAL NULL -- real
,  [emline_instsigma_hdel_4102] REAL NULL -- real
,  [emline_instsigma_hgam_4341] REAL NULL -- real
,  [emline_instsigma_heii_4687] REAL NULL -- real
,  [emline_instsigma_hb_4862] REAL NULL -- real
,  [emline_instsigma_oiii_4960] REAL NULL -- real
,  [emline_instsigma_oiii_5008] REAL NULL -- real
,  [emline_instsigma_hei_5877] REAL NULL -- real
,  [emline_instsigma_oi_6302] REAL NULL -- real
,  [emline_instsigma_oi_6365] REAL NULL -- real
,  [emline_instsigma_nii_6549] REAL NULL -- real
,  [emline_instsigma_ha_6564] REAL NULL -- real
,  [emline_instsigma_nii_6585] REAL NULL -- real
,  [emline_instsigma_sii_6718] REAL NULL -- real
,  [emline_instsigma_sii_6732] REAL NULL -- real
,  [emline_tplsigma_oii_3727] REAL NULL -- real
,  [emline_tplsigma_oii_3729] REAL NULL -- real
,  [emline_tplsigma_hthe_3798] REAL NULL -- real
,  [emline_tplsigma_heta_3836] REAL NULL -- real
,  [emline_tplsigma_neiii_3869] REAL NULL -- real
,  [emline_tplsigma_hzet_3890] REAL NULL -- real
,  [emline_tplsigma_neiii_3968] REAL NULL -- real
,  [emline_tplsigma_heps_3971] REAL NULL -- real
,  [emline_tplsigma_hdel_4102] REAL NULL -- real
,  [emline_tplsigma_hgam_4341] REAL NULL -- real
,  [emline_tplsigma_heii_4687] REAL NULL -- real
,  [emline_tplsigma_hb_4862] REAL NULL -- real
,  [emline_tplsigma_oiii_4960] REAL NULL -- real
,  [emline_tplsigma_oiii_5008] REAL NULL -- real
,  [emline_tplsigma_hei_5877] REAL NULL -- real
,  [emline_tplsigma_oi_6302] REAL NULL -- real
,  [emline_tplsigma_oi_6365] REAL NULL -- real
,  [emline_tplsigma_nii_6549] REAL NULL -- real
,  [emline_tplsigma_ha_6564] REAL NULL -- real
,  [emline_tplsigma_nii_6585] REAL NULL -- real
,  [emline_tplsigma_sii_6718] REAL NULL -- real
,  [emline_tplsigma_sii_6732] REAL NULL -- real
,  [specindex_cn1] REAL NULL -- real
,  [specindex_cn2] REAL NULL -- real
,  [specindex_ca4227] REAL NULL -- real
,  [specindex_g4300] REAL NULL -- real
,  [specindex_fe4383] REAL NULL -- real
,  [specindex_ca4455] REAL NULL -- real
,  [specindex_fe4531] REAL NULL -- real
,  [specindex_c24668] REAL NULL -- real
,  [specindex_hb] REAL NULL -- real
,  [specindex_fe5015] REAL NULL -- real
,  [specindex_mg1] REAL NULL -- real
,  [specindex_mg2] REAL NULL -- real
,  [specindex_mgb] REAL NULL -- real
,  [specindex_fe5270] REAL NULL -- real
,  [specindex_fe5335] REAL NULL -- real
,  [specindex_fe5406] REAL NULL -- real
,  [specindex_fe5709] REAL NULL -- real
,  [specindex_fe5782] REAL NULL -- real
,  [specindex_nad] REAL NULL -- real
,  [specindex_tio1] REAL NULL -- real
,  [specindex_tio2] REAL NULL -- real
,  [specindex_hdeltaa] REAL NULL -- real
,  [specindex_hgammaa] REAL NULL -- real
,  [specindex_hdeltaf] REAL NULL -- real
,  [specindex_hgammaf] REAL NULL -- real
,  [specindex_cahk] REAL NULL -- real
,  [specindex_caii1] REAL NULL -- real
,  [specindex_caii2] REAL NULL -- real
,  [specindex_caii3] REAL NULL -- real
,  [specindex_pa17] REAL NULL -- real
,  [specindex_pa14] REAL NULL -- real
,  [specindex_pa12] REAL NULL -- real
,  [specindex_mgicvd] REAL NULL -- real
,  [specindex_naicvd] REAL NULL -- real
,  [specindex_mgiir] REAL NULL -- real
,  [specindex_fehcvd] REAL NULL -- real
,  [specindex_nai] REAL NULL -- real
,  [specindex_btio] REAL NULL -- real
,  [specindex_atio] REAL NULL -- real
,  [specindex_cah1] REAL NULL -- real
,  [specindex_cah2] REAL NULL -- real
,  [specindex_naisdss] REAL NULL -- real
,  [specindex_tio2sdss] REAL NULL -- real
,  [specindex_d4000] REAL NULL -- real
,  [specindex_dn4000] REAL NULL -- real
,  [specindex_tiocvd] REAL NULL -- real
,  [specindex_ivar_cn1] FLOAT NULL -- double precision
,  [specindex_ivar_cn2] FLOAT NULL -- double precision
,  [specindex_ivar_ca4227] FLOAT NULL -- double precision
,  [specindex_ivar_g4300] FLOAT NULL -- double precision
,  [specindex_ivar_fe4383] FLOAT NULL -- double precision
,  [specindex_ivar_ca4455] FLOAT NULL -- double precision
,  [specindex_ivar_fe4531] FLOAT NULL -- double precision
,  [specindex_ivar_c24668] FLOAT NULL -- double precision
,  [specindex_ivar_hb] FLOAT NULL -- double precision
,  [specindex_ivar_fe5015] FLOAT NULL -- double precision
,  [specindex_ivar_mg1] FLOAT NULL -- double precision
,  [specindex_ivar_mg2] FLOAT NULL -- double precision
,  [specindex_ivar_mgb] FLOAT NULL -- double precision
,  [specindex_ivar_fe5270] FLOAT NULL -- double precision
,  [specindex_ivar_fe5335] FLOAT NULL -- double precision
,  [specindex_ivar_fe5406] FLOAT NULL -- double precision
,  [specindex_ivar_fe5709] FLOAT NULL -- double precision
,  [specindex_ivar_fe5782] FLOAT NULL -- double precision
,  [specindex_ivar_nad] FLOAT NULL -- double precision
,  [specindex_ivar_tio1] FLOAT NULL -- double precision
,  [specindex_ivar_tio2] FLOAT NULL -- double precision
,  [specindex_ivar_hdeltaa] FLOAT NULL -- double precision
,  [specindex_ivar_hgammaa] FLOAT NULL -- double precision
,  [specindex_ivar_hdeltaf] FLOAT NULL -- double precision
,  [specindex_ivar_hgammaf] FLOAT NULL -- double precision
,  [specindex_ivar_cahk] FLOAT NULL -- double precision
,  [specindex_ivar_caii1] FLOAT NULL -- double precision
,  [specindex_ivar_caii2] FLOAT NULL -- double precision
,  [specindex_ivar_caii3] FLOAT NULL -- double precision
,  [specindex_ivar_pa17] FLOAT NULL -- double precision
,  [specindex_ivar_pa14] FLOAT NULL -- double precision
,  [specindex_ivar_pa12] FLOAT NULL -- double precision
,  [specindex_ivar_mgicvd] FLOAT NULL -- double precision
,  [specindex_ivar_naicvd] FLOAT NULL -- double precision
,  [specindex_ivar_mgiir] FLOAT NULL -- double precision
,  [specindex_ivar_fehcvd] FLOAT NULL -- double precision
,  [specindex_ivar_nai] FLOAT NULL -- double precision
,  [specindex_ivar_btio] FLOAT NULL -- double precision
,  [specindex_ivar_atio] FLOAT NULL -- double precision
,  [specindex_ivar_cah1] FLOAT NULL -- double precision
,  [specindex_ivar_cah2] FLOAT NULL -- double precision
,  [specindex_ivar_naisdss] FLOAT NULL -- double precision
,  [specindex_ivar_tio2sdss] FLOAT NULL -- double precision
,  [specindex_ivar_d4000] FLOAT NULL -- double precision
,  [specindex_ivar_dn4000] FLOAT NULL -- double precision
,  [specindex_ivar_tiocvd] FLOAT NULL -- double precision
,  [specindex_mask_cn1] INTEGER NULL -- integer
,  [specindex_mask_cn2] INTEGER NULL -- integer
,  [specindex_mask_ca4227] INTEGER NULL -- integer
,  [specindex_mask_g4300] INTEGER NULL -- integer
,  [specindex_mask_fe4383] INTEGER NULL -- integer
,  [specindex_mask_ca4455] INTEGER NULL -- integer
,  [specindex_mask_fe4531] INTEGER NULL -- integer
,  [specindex_mask_c24668] INTEGER NULL -- integer
,  [specindex_mask_hb] INTEGER NULL -- integer
,  [specindex_mask_fe5015] INTEGER NULL -- integer
,  [specindex_mask_mg1] INTEGER NULL -- integer
,  [specindex_mask_mg2] INTEGER NULL -- integer
,  [specindex_mask_mgb] INTEGER NULL -- integer
,  [specindex_mask_fe5270] INTEGER NULL -- integer
,  [specindex_mask_fe5335] INTEGER NULL -- integer
,  [specindex_mask_fe5406] INTEGER NULL -- integer
,  [specindex_mask_fe5709] INTEGER NULL -- integer
,  [specindex_mask_fe5782] INTEGER NULL -- integer
,  [specindex_mask_nad] INTEGER NULL -- integer
,  [specindex_mask_tio1] INTEGER NULL -- integer
,  [specindex_mask_tio2] INTEGER NULL -- integer
,  [specindex_mask_hdeltaa] INTEGER NULL -- integer
,  [specindex_mask_hgammaa] INTEGER NULL -- integer
,  [specindex_mask_hdeltaf] INTEGER NULL -- integer
,  [specindex_mask_hgammaf] INTEGER NULL -- integer
,  [specindex_mask_cahk] INTEGER NULL -- integer
,  [specindex_mask_caii1] INTEGER NULL -- integer
,  [specindex_mask_caii2] INTEGER NULL -- integer
,  [specindex_mask_caii3] INTEGER NULL -- integer
,  [specindex_mask_pa17] INTEGER NULL -- integer
,  [specindex_mask_pa14] INTEGER NULL -- integer
,  [specindex_mask_pa12] INTEGER NULL -- integer
,  [specindex_mask_mgicvd] INTEGER NULL -- integer
,  [specindex_mask_naicvd] INTEGER NULL -- integer
,  [specindex_mask_mgiir] INTEGER NULL -- integer
,  [specindex_mask_fehcvd] INTEGER NULL -- integer
,  [specindex_mask_nai] INTEGER NULL -- integer
,  [specindex_mask_btio] INTEGER NULL -- integer
,  [specindex_mask_atio] INTEGER NULL -- integer
,  [specindex_mask_cah1] INTEGER NULL -- integer
,  [specindex_mask_cah2] INTEGER NULL -- integer
,  [specindex_mask_naisdss] INTEGER NULL -- integer
,  [specindex_mask_tio2sdss] INTEGER NULL -- integer
,  [specindex_mask_d4000] INTEGER NULL -- integer
,  [specindex_mask_dn4000] INTEGER NULL -- integer
,  [specindex_mask_tiocvd] INTEGER NULL -- integer
,  [specindex_corr_cn1] REAL NULL -- real
,  [specindex_corr_cn2] REAL NULL -- real
,  [specindex_corr_ca4227] REAL NULL -- real
,  [specindex_corr_g4300] REAL NULL -- real
,  [specindex_corr_fe4383] REAL NULL -- real
,  [specindex_corr_ca4455] REAL NULL -- real
,  [specindex_corr_fe4531] REAL NULL -- real
,  [specindex_corr_c24668] REAL NULL -- real
,  [specindex_corr_hb] REAL NULL -- real
,  [specindex_corr_fe5015] REAL NULL -- real
,  [specindex_corr_mg1] REAL NULL -- real
,  [specindex_corr_mg2] REAL NULL -- real
,  [specindex_corr_mgb] REAL NULL -- real
,  [specindex_corr_fe5270] REAL NULL -- real
,  [specindex_corr_fe5335] REAL NULL -- real
,  [specindex_corr_fe5406] REAL NULL -- real
,  [specindex_corr_fe5709] REAL NULL -- real
,  [specindex_corr_fe5782] REAL NULL -- real
,  [specindex_corr_nad] REAL NULL -- real
,  [specindex_corr_tio1] REAL NULL -- real
,  [specindex_corr_tio2] REAL NULL -- real
,  [specindex_corr_hdeltaa] REAL NULL -- real
,  [specindex_corr_hgammaa] REAL NULL -- real
,  [specindex_corr_hdeltaf] REAL NULL -- real
,  [specindex_corr_hgammaf] REAL NULL -- real
,  [specindex_corr_cahk] REAL NULL -- real
,  [specindex_corr_caii1] REAL NULL -- real
,  [specindex_corr_caii2] REAL NULL -- real
,  [specindex_corr_caii3] REAL NULL -- real
,  [specindex_corr_pa17] REAL NULL -- real
,  [specindex_corr_pa14] REAL NULL -- real
,  [specindex_corr_pa12] REAL NULL -- real
,  [specindex_corr_mgicvd] REAL NULL -- real
,  [specindex_corr_naicvd] REAL NULL -- real
,  [specindex_corr_mgiir] REAL NULL -- real
,  [specindex_corr_fehcvd] REAL NULL -- real
,  [specindex_corr_nai] REAL NULL -- real
,  [specindex_corr_btio] REAL NULL -- real
,  [specindex_corr_atio] REAL NULL -- real
,  [specindex_corr_cah1] REAL NULL -- real
,  [specindex_corr_cah2] REAL NULL -- real
,  [specindex_corr_naisdss] REAL NULL -- real
,  [specindex_corr_tio2sdss] REAL NULL -- real
,  [specindex_corr_d4000] REAL NULL -- real
,  [specindex_corr_dn4000] REAL NULL -- real
,  [specindex_corr_tiocvd] REAL NULL -- real
)
with (location='manga.mangadapdb.[spaxelprop7]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='spaxelprop8')
begin drop external table mangadapdb.[spaxelprop8] end

GO

CREATE EXTERNAL TABLE mangadapdb.[spaxelprop8] (
   [pk] BIGINT NOT NULL -- bigint
,  [file_pk] INTEGER NULL -- integer
,  [spaxel_index] INTEGER NULL -- integer
,  [binid_pk] INTEGER NULL -- integer
,  [x] INTEGER NULL -- integer
,  [y] INTEGER NULL -- integer
,  [spx_skycoo_on_sky_x] REAL NULL -- real
,  [spx_skycoo_on_sky_y] REAL NULL -- real
,  [spx_ellcoo_elliptical_radius] REAL NULL -- real
,  [spx_ellcoo_r_re] REAL NULL -- real
,  [spx_ellcoo_elliptical_azimuth] REAL NULL -- real
,  [spx_mflux] REAL NULL -- real
,  [spx_mflux_ivar] FLOAT NULL -- double precision
,  [spx_snr] REAL NULL -- real
,  [binid_binned_spectra] INTEGER NULL -- integer
,  [binid_stellar_continua] INTEGER NULL -- integer
,  [binid_em_line_moments] INTEGER NULL -- integer
,  [binid_em_line_models] INTEGER NULL -- integer
,  [binid_spectral_indices] INTEGER NULL -- integer
,  [bin_lwskycoo_lum_weighted_on_sky_x] REAL NULL -- real
,  [bin_lwskycoo_lum_weighted_on_sky_y] REAL NULL -- real
,  [bin_lwellcoo_lum_weighted_elliptical_radius] REAL NULL -- real
,  [bin_lwellcoo_r_re] REAL NULL -- real
,  [bin_lwellcoo_lum_weighted_elliptical_azimuth] REAL NULL -- real
,  [bin_area] REAL NULL -- real
,  [bin_farea] REAL NULL -- real
,  [bin_mflux] REAL NULL -- real
,  [bin_mflux_ivar] FLOAT NULL -- double precision
,  [bin_mflux_mask] INTEGER NULL -- integer
,  [bin_snr] REAL NULL -- real
,  [stellar_vel] REAL NULL -- real
,  [stellar_vel_ivar] FLOAT NULL -- double precision
,  [stellar_vel_mask] INTEGER NULL -- integer
,  [stellar_sigma] REAL NULL -- real
,  [stellar_sigma_ivar] FLOAT NULL -- double precision
,  [stellar_sigma_mask] INTEGER NULL -- integer
,  [stellar_sigmacorr_resolution_difference] REAL NULL -- real
,  [stellar_sigmacorr_fit] REAL NULL -- real
,  [stellar_fom_rms] REAL NULL -- real
,  [stellar_fom_frms] REAL NULL -- real
,  [stellar_fom_rchi2] REAL NULL -- real
,  [stellar_fom_68th_perc_frac_resid] REAL NULL -- real
,  [stellar_fom_99th_perc_frac_resid] REAL NULL -- real
,  [stellar_fom_max_frac_resid] REAL NULL -- real
,  [stellar_fom_68th_perc_per_pix_chi] REAL NULL -- real
,  [stellar_fom_99th_perc_per_pix_chi] REAL NULL -- real
,  [stellar_fom_max_per_pix_chi] REAL NULL -- real
,  [emline_sflux_oiid_3728] REAL NULL -- real
,  [emline_sflux_oii_3729] REAL NULL -- real
,  [emline_sflux_hthe_3798] REAL NULL -- real
,  [emline_sflux_heta_3836] REAL NULL -- real
,  [emline_sflux_neiii_3869] REAL NULL -- real
,  [emline_sflux_hzet_3890] REAL NULL -- real
,  [emline_sflux_neiii_3968] REAL NULL -- real
,  [emline_sflux_heps_3971] REAL NULL -- real
,  [emline_sflux_hdel_4102] REAL NULL -- real
,  [emline_sflux_hgam_4341] REAL NULL -- real
,  [emline_sflux_heii_4687] REAL NULL -- real
,  [emline_sflux_hb_4862] REAL NULL -- real
,  [emline_sflux_oiii_4960] REAL NULL -- real
,  [emline_sflux_oiii_5008] REAL NULL -- real
,  [emline_sflux_hei_5877] REAL NULL -- real
,  [emline_sflux_oi_6302] REAL NULL -- real
,  [emline_sflux_oi_6365] REAL NULL -- real
,  [emline_sflux_nii_6549] REAL NULL -- real
,  [emline_sflux_ha_6564] REAL NULL -- real
,  [emline_sflux_nii_6585] REAL NULL -- real
,  [emline_sflux_sii_6718] REAL NULL -- real
,  [emline_sflux_sii_6732] REAL NULL -- real
,  [emline_sflux_hei_3889] REAL NULL -- real
,  [emline_sflux_ni_5199] REAL NULL -- real
,  [emline_sflux_ni_5201] REAL NULL -- real
,  [emline_sflux_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_sflux_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_sflux_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_sflux_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_sflux_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_sflux_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_sflux_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_sflux_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_sflux_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_sflux_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_sflux_ivar_hei_3889] FLOAT NULL -- double precision
,  [emline_sflux_ivar_ni_5199] FLOAT NULL -- double precision
,  [emline_sflux_ivar_ni_5201] FLOAT NULL -- double precision
,  [emline_sflux_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_sflux_mask_oii_3729] INTEGER NULL -- integer
,  [emline_sflux_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_sflux_mask_heta_3836] INTEGER NULL -- integer
,  [emline_sflux_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_sflux_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_sflux_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_sflux_mask_heps_3971] INTEGER NULL -- integer
,  [emline_sflux_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_sflux_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_sflux_mask_heii_4687] INTEGER NULL -- integer
,  [emline_sflux_mask_hb_4862] INTEGER NULL -- integer
,  [emline_sflux_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_sflux_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_sflux_mask_hei_5877] INTEGER NULL -- integer
,  [emline_sflux_mask_oi_6302] INTEGER NULL -- integer
,  [emline_sflux_mask_oi_6365] INTEGER NULL -- integer
,  [emline_sflux_mask_nii_6549] INTEGER NULL -- integer
,  [emline_sflux_mask_ha_6564] INTEGER NULL -- integer
,  [emline_sflux_mask_nii_6585] INTEGER NULL -- integer
,  [emline_sflux_mask_sii_6718] INTEGER NULL -- integer
,  [emline_sflux_mask_sii_6732] INTEGER NULL -- integer
,  [emline_sflux_mask_hei_3889] INTEGER NULL -- integer
,  [emline_sflux_mask_ni_5199] INTEGER NULL -- integer
,  [emline_sflux_mask_ni_5201] INTEGER NULL -- integer
,  [emline_sew_oiid_3728] FLOAT NULL -- double precision
,  [emline_sew_oii_3729] FLOAT NULL -- double precision
,  [emline_sew_hthe_3798] FLOAT NULL -- double precision
,  [emline_sew_heta_3836] FLOAT NULL -- double precision
,  [emline_sew_neiii_3869] FLOAT NULL -- double precision
,  [emline_sew_hzet_3890] FLOAT NULL -- double precision
,  [emline_sew_neiii_3968] FLOAT NULL -- double precision
,  [emline_sew_heps_3971] FLOAT NULL -- double precision
,  [emline_sew_hdel_4102] FLOAT NULL -- double precision
,  [emline_sew_hgam_4341] FLOAT NULL -- double precision
,  [emline_sew_heii_4687] FLOAT NULL -- double precision
,  [emline_sew_hb_4862] FLOAT NULL -- double precision
,  [emline_sew_oiii_4960] FLOAT NULL -- double precision
,  [emline_sew_oiii_5008] FLOAT NULL -- double precision
,  [emline_sew_hei_5877] FLOAT NULL -- double precision
,  [emline_sew_oi_6302] FLOAT NULL -- double precision
,  [emline_sew_oi_6365] FLOAT NULL -- double precision
,  [emline_sew_nii_6549] FLOAT NULL -- double precision
,  [emline_sew_ha_6564] FLOAT NULL -- double precision
,  [emline_sew_nii_6585] FLOAT NULL -- double precision
,  [emline_sew_sii_6718] FLOAT NULL -- double precision
,  [emline_sew_sii_6732] FLOAT NULL -- double precision
,  [emline_sew_hei_3889] FLOAT NULL -- double precision
,  [emline_sew_ni_5199] FLOAT NULL -- double precision
,  [emline_sew_ni_5201] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiid_3728] FLOAT NULL -- double precision
,  [emline_sew_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_sew_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_sew_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_sew_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_sew_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_sew_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_sew_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_sew_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_sew_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_sew_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_sew_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_sew_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_sew_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_sew_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_sew_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_sew_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_sew_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_sew_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_sew_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_sew_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_sew_ivar_hei_3889] FLOAT NULL -- double precision
,  [emline_sew_ivar_ni_5199] FLOAT NULL -- double precision
,  [emline_sew_ivar_ni_5201] FLOAT NULL -- double precision
,  [emline_sew_mask_oiid_3728] INTEGER NULL -- integer
,  [emline_sew_mask_oii_3729] INTEGER NULL -- integer
,  [emline_sew_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_sew_mask_heta_3836] INTEGER NULL -- integer
,  [emline_sew_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_sew_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_sew_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_sew_mask_heps_3971] INTEGER NULL -- integer
,  [emline_sew_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_sew_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_sew_mask_heii_4687] INTEGER NULL -- integer
,  [emline_sew_mask_hb_4862] INTEGER NULL -- integer
,  [emline_sew_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_sew_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_sew_mask_hei_5877] INTEGER NULL -- integer
,  [emline_sew_mask_oi_6302] INTEGER NULL -- integer
,  [emline_sew_mask_oi_6365] INTEGER NULL -- integer
,  [emline_sew_mask_nii_6549] INTEGER NULL -- integer
,  [emline_sew_mask_ha_6564] INTEGER NULL -- integer
,  [emline_sew_mask_nii_6585] INTEGER NULL -- integer
,  [emline_sew_mask_sii_6718] INTEGER NULL -- integer
,  [emline_sew_mask_sii_6732] INTEGER NULL -- integer
,  [emline_sew_mask_hei_3889] INTEGER NULL -- integer
,  [emline_sew_mask_ni_5199] INTEGER NULL -- integer
,  [emline_sew_mask_ni_5201] INTEGER NULL -- integer
,  [emline_gflux_oii_3727] REAL NULL -- real
,  [emline_gflux_oii_3729] REAL NULL -- real
,  [emline_gflux_hthe_3798] REAL NULL -- real
,  [emline_gflux_heta_3836] REAL NULL -- real
,  [emline_gflux_neiii_3869] REAL NULL -- real
,  [emline_gflux_hzet_3890] REAL NULL -- real
,  [emline_gflux_neiii_3968] REAL NULL -- real
,  [emline_gflux_heps_3971] REAL NULL -- real
,  [emline_gflux_hdel_4102] REAL NULL -- real
,  [emline_gflux_hgam_4341] REAL NULL -- real
,  [emline_gflux_heii_4687] REAL NULL -- real
,  [emline_gflux_hb_4862] REAL NULL -- real
,  [emline_gflux_oiii_4960] REAL NULL -- real
,  [emline_gflux_oiii_5008] REAL NULL -- real
,  [emline_gflux_hei_5877] REAL NULL -- real
,  [emline_gflux_oi_6302] REAL NULL -- real
,  [emline_gflux_oi_6365] REAL NULL -- real
,  [emline_gflux_nii_6549] REAL NULL -- real
,  [emline_gflux_ha_6564] REAL NULL -- real
,  [emline_gflux_nii_6585] REAL NULL -- real
,  [emline_gflux_sii_6718] REAL NULL -- real
,  [emline_gflux_sii_6732] REAL NULL -- real
,  [emline_gflux_hei_3889] REAL NULL -- real
,  [emline_gflux_ni_5199] REAL NULL -- real
,  [emline_gflux_ni_5201] REAL NULL -- real
,  [emline_gflux_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gflux_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gflux_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gflux_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gflux_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gflux_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gflux_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gflux_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gflux_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gflux_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gflux_ivar_hei_3889] FLOAT NULL -- double precision
,  [emline_gflux_ivar_ni_5199] FLOAT NULL -- double precision
,  [emline_gflux_ivar_ni_5201] FLOAT NULL -- double precision
,  [emline_gflux_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gflux_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gflux_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gflux_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gflux_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gflux_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gflux_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gflux_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gflux_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gflux_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gflux_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gflux_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gflux_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gflux_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gflux_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gflux_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gflux_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gflux_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gflux_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gflux_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gflux_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gflux_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gflux_mask_hei_3889] INTEGER NULL -- integer
,  [emline_gflux_mask_ni_5199] INTEGER NULL -- integer
,  [emline_gflux_mask_ni_5201] INTEGER NULL -- integer
,  [emline_gew_oii_3727] FLOAT NULL -- double precision
,  [emline_gew_oii_3729] FLOAT NULL -- double precision
,  [emline_gew_hthe_3798] FLOAT NULL -- double precision
,  [emline_gew_heta_3836] FLOAT NULL -- double precision
,  [emline_gew_neiii_3869] FLOAT NULL -- double precision
,  [emline_gew_hzet_3890] FLOAT NULL -- double precision
,  [emline_gew_neiii_3968] FLOAT NULL -- double precision
,  [emline_gew_heps_3971] FLOAT NULL -- double precision
,  [emline_gew_hdel_4102] FLOAT NULL -- double precision
,  [emline_gew_hgam_4341] FLOAT NULL -- double precision
,  [emline_gew_heii_4687] FLOAT NULL -- double precision
,  [emline_gew_hb_4862] FLOAT NULL -- double precision
,  [emline_gew_oiii_4960] FLOAT NULL -- double precision
,  [emline_gew_oiii_5008] FLOAT NULL -- double precision
,  [emline_gew_hei_5877] FLOAT NULL -- double precision
,  [emline_gew_oi_6302] FLOAT NULL -- double precision
,  [emline_gew_oi_6365] FLOAT NULL -- double precision
,  [emline_gew_nii_6549] FLOAT NULL -- double precision
,  [emline_gew_ha_6564] FLOAT NULL -- double precision
,  [emline_gew_nii_6585] FLOAT NULL -- double precision
,  [emline_gew_sii_6718] FLOAT NULL -- double precision
,  [emline_gew_sii_6732] FLOAT NULL -- double precision
,  [emline_gew_hei_3889] FLOAT NULL -- double precision
,  [emline_gew_ni_5199] FLOAT NULL -- double precision
,  [emline_gew_ni_5201] FLOAT NULL -- double precision
,  [emline_gew_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gew_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gew_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gew_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gew_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gew_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gew_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gew_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gew_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gew_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gew_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gew_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gew_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gew_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gew_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gew_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gew_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gew_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gew_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gew_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gew_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gew_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gew_ivar_hei_3889] FLOAT NULL -- double precision
,  [emline_gew_ivar_ni_5199] FLOAT NULL -- double precision
,  [emline_gew_ivar_ni_5201] FLOAT NULL -- double precision
,  [emline_gew_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gew_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gew_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gew_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gew_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gew_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gew_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gew_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gew_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gew_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gew_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gew_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gew_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gew_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gew_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gew_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gew_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gew_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gew_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gew_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gew_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gew_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gew_mask_hei_3889] INTEGER NULL -- integer
,  [emline_gew_mask_ni_5199] INTEGER NULL -- integer
,  [emline_gew_mask_ni_5201] INTEGER NULL -- integer
,  [emline_gvel_oii_3727] REAL NULL -- real
,  [emline_gvel_oii_3729] REAL NULL -- real
,  [emline_gvel_hthe_3798] REAL NULL -- real
,  [emline_gvel_heta_3836] REAL NULL -- real
,  [emline_gvel_neiii_3869] REAL NULL -- real
,  [emline_gvel_hzet_3890] REAL NULL -- real
,  [emline_gvel_neiii_3968] REAL NULL -- real
,  [emline_gvel_heps_3971] REAL NULL -- real
,  [emline_gvel_hdel_4102] REAL NULL -- real
,  [emline_gvel_hgam_4341] REAL NULL -- real
,  [emline_gvel_heii_4687] REAL NULL -- real
,  [emline_gvel_hb_4862] REAL NULL -- real
,  [emline_gvel_oiii_4960] REAL NULL -- real
,  [emline_gvel_oiii_5008] REAL NULL -- real
,  [emline_gvel_hei_5877] REAL NULL -- real
,  [emline_gvel_oi_6302] REAL NULL -- real
,  [emline_gvel_oi_6365] REAL NULL -- real
,  [emline_gvel_nii_6549] REAL NULL -- real
,  [emline_gvel_ha_6564] REAL NULL -- real
,  [emline_gvel_nii_6585] REAL NULL -- real
,  [emline_gvel_sii_6718] REAL NULL -- real
,  [emline_gvel_sii_6732] REAL NULL -- real
,  [emline_gvel_hei_3889] REAL NULL -- real
,  [emline_gvel_ni_5199] REAL NULL -- real
,  [emline_gvel_ni_5201] REAL NULL -- real
,  [emline_gvel_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gvel_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gvel_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gvel_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gvel_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gvel_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gvel_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gvel_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gvel_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gvel_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gvel_ivar_hei_3889] FLOAT NULL -- double precision
,  [emline_gvel_ivar_ni_5199] FLOAT NULL -- double precision
,  [emline_gvel_ivar_ni_5201] FLOAT NULL -- double precision
,  [emline_gvel_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gvel_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gvel_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gvel_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gvel_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gvel_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gvel_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gvel_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gvel_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gvel_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gvel_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gvel_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gvel_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gvel_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gvel_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gvel_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gvel_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gvel_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gvel_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gvel_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gvel_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gvel_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gvel_mask_hei_3889] INTEGER NULL -- integer
,  [emline_gvel_mask_ni_5199] INTEGER NULL -- integer
,  [emline_gvel_mask_ni_5201] INTEGER NULL -- integer
,  [emline_gsigma_oii_3727] REAL NULL -- real
,  [emline_gsigma_oii_3729] REAL NULL -- real
,  [emline_gsigma_hthe_3798] REAL NULL -- real
,  [emline_gsigma_heta_3836] REAL NULL -- real
,  [emline_gsigma_neiii_3869] REAL NULL -- real
,  [emline_gsigma_hzet_3890] REAL NULL -- real
,  [emline_gsigma_neiii_3968] REAL NULL -- real
,  [emline_gsigma_heps_3971] REAL NULL -- real
,  [emline_gsigma_hdel_4102] REAL NULL -- real
,  [emline_gsigma_hgam_4341] REAL NULL -- real
,  [emline_gsigma_heii_4687] REAL NULL -- real
,  [emline_gsigma_hb_4862] REAL NULL -- real
,  [emline_gsigma_oiii_4960] REAL NULL -- real
,  [emline_gsigma_oiii_5008] REAL NULL -- real
,  [emline_gsigma_hei_5877] REAL NULL -- real
,  [emline_gsigma_oi_6302] REAL NULL -- real
,  [emline_gsigma_oi_6365] REAL NULL -- real
,  [emline_gsigma_nii_6549] REAL NULL -- real
,  [emline_gsigma_ha_6564] REAL NULL -- real
,  [emline_gsigma_nii_6585] REAL NULL -- real
,  [emline_gsigma_sii_6718] REAL NULL -- real
,  [emline_gsigma_sii_6732] REAL NULL -- real
,  [emline_gsigma_hei_3889] REAL NULL -- real
,  [emline_gsigma_ni_5199] REAL NULL -- real
,  [emline_gsigma_ni_5201] REAL NULL -- real
,  [emline_gsigma_ivar_oii_3727] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oii_3729] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hthe_3798] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heta_3836] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_neiii_3869] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hzet_3890] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_neiii_3968] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heps_3971] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hdel_4102] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hgam_4341] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_heii_4687] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hb_4862] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oiii_4960] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oiii_5008] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hei_5877] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oi_6302] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_oi_6365] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_nii_6549] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_ha_6564] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_nii_6585] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_sii_6718] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_sii_6732] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_hei_3889] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_ni_5199] FLOAT NULL -- double precision
,  [emline_gsigma_ivar_ni_5201] FLOAT NULL -- double precision
,  [emline_gsigma_mask_oii_3727] INTEGER NULL -- integer
,  [emline_gsigma_mask_oii_3729] INTEGER NULL -- integer
,  [emline_gsigma_mask_hthe_3798] INTEGER NULL -- integer
,  [emline_gsigma_mask_heta_3836] INTEGER NULL -- integer
,  [emline_gsigma_mask_neiii_3869] INTEGER NULL -- integer
,  [emline_gsigma_mask_hzet_3890] INTEGER NULL -- integer
,  [emline_gsigma_mask_neiii_3968] INTEGER NULL -- integer
,  [emline_gsigma_mask_heps_3971] INTEGER NULL -- integer
,  [emline_gsigma_mask_hdel_4102] INTEGER NULL -- integer
,  [emline_gsigma_mask_hgam_4341] INTEGER NULL -- integer
,  [emline_gsigma_mask_heii_4687] INTEGER NULL -- integer
,  [emline_gsigma_mask_hb_4862] INTEGER NULL -- integer
,  [emline_gsigma_mask_oiii_4960] INTEGER NULL -- integer
,  [emline_gsigma_mask_oiii_5008] INTEGER NULL -- integer
,  [emline_gsigma_mask_hei_5877] INTEGER NULL -- integer
,  [emline_gsigma_mask_oi_6302] INTEGER NULL -- integer
,  [emline_gsigma_mask_oi_6365] INTEGER NULL -- integer
,  [emline_gsigma_mask_nii_6549] INTEGER NULL -- integer
,  [emline_gsigma_mask_ha_6564] INTEGER NULL -- integer
,  [emline_gsigma_mask_nii_6585] INTEGER NULL -- integer
,  [emline_gsigma_mask_sii_6718] INTEGER NULL -- integer
,  [emline_gsigma_mask_sii_6732] INTEGER NULL -- integer
,  [emline_gsigma_mask_hei_3889] INTEGER NULL -- integer
,  [emline_gsigma_mask_ni_5199] INTEGER NULL -- integer
,  [emline_gsigma_mask_ni_5201] INTEGER NULL -- integer
,  [emline_instsigma_oii_3727] REAL NULL -- real
,  [emline_instsigma_oii_3729] REAL NULL -- real
,  [emline_instsigma_hthe_3798] REAL NULL -- real
,  [emline_instsigma_heta_3836] REAL NULL -- real
,  [emline_instsigma_neiii_3869] REAL NULL -- real
,  [emline_instsigma_hzet_3890] REAL NULL -- real
,  [emline_instsigma_neiii_3968] REAL NULL -- real
,  [emline_instsigma_heps_3971] REAL NULL -- real
,  [emline_instsigma_hdel_4102] REAL NULL -- real
,  [emline_instsigma_hgam_4341] REAL NULL -- real
,  [emline_instsigma_heii_4687] REAL NULL -- real
,  [emline_instsigma_hb_4862] REAL NULL -- real
,  [emline_instsigma_oiii_4960] REAL NULL -- real
,  [emline_instsigma_oiii_5008] REAL NULL -- real
,  [emline_instsigma_hei_5877] REAL NULL -- real
,  [emline_instsigma_oi_6302] REAL NULL -- real
,  [emline_instsigma_oi_6365] REAL NULL -- real
,  [emline_instsigma_nii_6549] REAL NULL -- real
,  [emline_instsigma_ha_6564] REAL NULL -- real
,  [emline_instsigma_nii_6585] REAL NULL -- real
,  [emline_instsigma_sii_6718] REAL NULL -- real
,  [emline_instsigma_sii_6732] REAL NULL -- real
,  [emline_instsigma_hei_3889] REAL NULL -- real
,  [emline_instsigma_ni_5199] REAL NULL -- real
,  [emline_instsigma_ni_5201] REAL NULL -- real
,  [emline_tplsigma_oii_3727] REAL NULL -- real
,  [emline_tplsigma_oii_3729] REAL NULL -- real
,  [emline_tplsigma_hthe_3798] REAL NULL -- real
,  [emline_tplsigma_heta_3836] REAL NULL -- real
,  [emline_tplsigma_neiii_3869] REAL NULL -- real
,  [emline_tplsigma_hzet_3890] REAL NULL -- real
,  [emline_tplsigma_neiii_3968] REAL NULL -- real
,  [emline_tplsigma_heps_3971] REAL NULL -- real
,  [emline_tplsigma_hdel_4102] REAL NULL -- real
,  [emline_tplsigma_hgam_4341] REAL NULL -- real
,  [emline_tplsigma_heii_4687] REAL NULL -- real
,  [emline_tplsigma_hb_4862] REAL NULL -- real
,  [emline_tplsigma_oiii_4960] REAL NULL -- real
,  [emline_tplsigma_oiii_5008] REAL NULL -- real
,  [emline_tplsigma_hei_5877] REAL NULL -- real
,  [emline_tplsigma_oi_6302] REAL NULL -- real
,  [emline_tplsigma_oi_6365] REAL NULL -- real
,  [emline_tplsigma_nii_6549] REAL NULL -- real
,  [emline_tplsigma_ha_6564] REAL NULL -- real
,  [emline_tplsigma_nii_6585] REAL NULL -- real
,  [emline_tplsigma_sii_6718] REAL NULL -- real
,  [emline_tplsigma_sii_6732] REAL NULL -- real
,  [emline_tplsigma_hei_3889] REAL NULL -- real
,  [emline_tplsigma_ni_5199] REAL NULL -- real
,  [emline_tplsigma_ni_5201] REAL NULL -- real
,  [emline_ga_oii_3727] REAL NULL -- real
,  [emline_ga_oii_3729] REAL NULL -- real
,  [emline_ga_hthe_3798] REAL NULL -- real
,  [emline_ga_heta_3836] REAL NULL -- real
,  [emline_ga_neiii_3869] REAL NULL -- real
,  [emline_ga_hzet_3890] REAL NULL -- real
,  [emline_ga_neiii_3968] REAL NULL -- real
,  [emline_ga_heps_3971] REAL NULL -- real
,  [emline_ga_hdel_4102] REAL NULL -- real
,  [emline_ga_hgam_4341] REAL NULL -- real
,  [emline_ga_heii_4687] REAL NULL -- real
,  [emline_ga_hb_4862] REAL NULL -- real
,  [emline_ga_oiii_4960] REAL NULL -- real
,  [emline_ga_oiii_5008] REAL NULL -- real
,  [emline_ga_hei_5877] REAL NULL -- real
,  [emline_ga_oi_6302] REAL NULL -- real
,  [emline_ga_oi_6365] REAL NULL -- real
,  [emline_ga_nii_6549] REAL NULL -- real
,  [emline_ga_ha_6564] REAL NULL -- real
,  [emline_ga_nii_6585] REAL NULL -- real
,  [emline_ga_sii_6718] REAL NULL -- real
,  [emline_ga_sii_6732] REAL NULL -- real
,  [emline_ga_hei_3889] REAL NULL -- real
,  [emline_ga_ni_5199] REAL NULL -- real
,  [emline_ga_ni_5201] REAL NULL -- real
,  [emline_ganr_oii_3727] REAL NULL -- real
,  [emline_ganr_oii_3729] REAL NULL -- real
,  [emline_ganr_hthe_3798] REAL NULL -- real
,  [emline_ganr_heta_3836] REAL NULL -- real
,  [emline_ganr_neiii_3869] REAL NULL -- real
,  [emline_ganr_hzet_3890] REAL NULL -- real
,  [emline_ganr_neiii_3968] REAL NULL -- real
,  [emline_ganr_heps_3971] REAL NULL -- real
,  [emline_ganr_hdel_4102] REAL NULL -- real
,  [emline_ganr_hgam_4341] REAL NULL -- real
,  [emline_ganr_heii_4687] REAL NULL -- real
,  [emline_ganr_hb_4862] REAL NULL -- real
,  [emline_ganr_oiii_4960] REAL NULL -- real
,  [emline_ganr_oiii_5008] REAL NULL -- real
,  [emline_ganr_hei_5877] REAL NULL -- real
,  [emline_ganr_oi_6302] REAL NULL -- real
,  [emline_ganr_oi_6365] REAL NULL -- real
,  [emline_ganr_nii_6549] REAL NULL -- real
,  [emline_ganr_ha_6564] REAL NULL -- real
,  [emline_ganr_nii_6585] REAL NULL -- real
,  [emline_ganr_sii_6718] REAL NULL -- real
,  [emline_ganr_sii_6732] REAL NULL -- real
,  [emline_ganr_hei_3889] REAL NULL -- real
,  [emline_ganr_ni_5199] REAL NULL -- real
,  [emline_ganr_ni_5201] REAL NULL -- real
,  [emline_fom_rms] REAL NULL -- real
,  [emline_fom_frms] REAL NULL -- real
,  [emline_fom_rchi2] REAL NULL -- real
,  [emline_fom_68th_perc_frac_resid] REAL NULL -- real
,  [emline_fom_99th_perc_frac_resid] REAL NULL -- real
,  [emline_fom_max_frac_resid] REAL NULL -- real
,  [emline_fom_68th_perc_per_pix_chi] REAL NULL -- real
,  [emline_fom_99th_perc_per_pix_chi] REAL NULL -- real
,  [emline_fom_max_per_pix_chi] REAL NULL -- real
,  [emline_lfom_oii_3727] REAL NULL -- real
,  [emline_lfom_oii_3729] REAL NULL -- real
,  [emline_lfom_hthe_3798] REAL NULL -- real
,  [emline_lfom_heta_3836] REAL NULL -- real
,  [emline_lfom_neiii_3869] REAL NULL -- real
,  [emline_lfom_hzet_3890] REAL NULL -- real
,  [emline_lfom_neiii_3968] REAL NULL -- real
,  [emline_lfom_heps_3971] REAL NULL -- real
,  [emline_lfom_hdel_4102] REAL NULL -- real
,  [emline_lfom_hgam_4341] REAL NULL -- real
,  [emline_lfom_heii_4687] REAL NULL -- real
,  [emline_lfom_hb_4862] REAL NULL -- real
,  [emline_lfom_oiii_4960] REAL NULL -- real
,  [emline_lfom_oiii_5008] REAL NULL -- real
,  [emline_lfom_hei_5877] REAL NULL -- real
,  [emline_lfom_oi_6302] REAL NULL -- real
,  [emline_lfom_oi_6365] REAL NULL -- real
,  [emline_lfom_nii_6549] REAL NULL -- real
,  [emline_lfom_ha_6564] REAL NULL -- real
,  [emline_lfom_nii_6585] REAL NULL -- real
,  [emline_lfom_sii_6718] REAL NULL -- real
,  [emline_lfom_sii_6732] REAL NULL -- real
,  [emline_lfom_hei_3889] REAL NULL -- real
,  [emline_lfom_ni_5199] REAL NULL -- real
,  [emline_lfom_ni_5201] REAL NULL -- real
,  [specindex_cn1] REAL NULL -- real
,  [specindex_cn2] REAL NULL -- real
,  [specindex_ca4227] REAL NULL -- real
,  [specindex_g4300] REAL NULL -- real
,  [specindex_fe4383] REAL NULL -- real
,  [specindex_ca4455] REAL NULL -- real
,  [specindex_fe4531] REAL NULL -- real
,  [specindex_c24668] REAL NULL -- real
,  [specindex_hb] REAL NULL -- real
,  [specindex_fe5015] REAL NULL -- real
,  [specindex_mg1] REAL NULL -- real
,  [specindex_mg2] REAL NULL -- real
,  [specindex_mgb] REAL NULL -- real
,  [specindex_fe5270] REAL NULL -- real
,  [specindex_fe5335] REAL NULL -- real
,  [specindex_fe5406] REAL NULL -- real
,  [specindex_fe5709] REAL NULL -- real
,  [specindex_fe5782] REAL NULL -- real
,  [specindex_nad] REAL NULL -- real
,  [specindex_tio1] REAL NULL -- real
,  [specindex_tio2] REAL NULL -- real
,  [specindex_hdeltaa] REAL NULL -- real
,  [specindex_hgammaa] REAL NULL -- real
,  [specindex_hdeltaf] REAL NULL -- real
,  [specindex_hgammaf] REAL NULL -- real
,  [specindex_cahk] REAL NULL -- real
,  [specindex_caii1] REAL NULL -- real
,  [specindex_caii2] REAL NULL -- real
,  [specindex_caii3] REAL NULL -- real
,  [specindex_pa17] REAL NULL -- real
,  [specindex_pa14] REAL NULL -- real
,  [specindex_pa12] REAL NULL -- real
,  [specindex_mgicvd] REAL NULL -- real
,  [specindex_naicvd] REAL NULL -- real
,  [specindex_mgiir] REAL NULL -- real
,  [specindex_fehcvd] REAL NULL -- real
,  [specindex_nai] REAL NULL -- real
,  [specindex_btio] REAL NULL -- real
,  [specindex_atio] REAL NULL -- real
,  [specindex_cah1] REAL NULL -- real
,  [specindex_cah2] REAL NULL -- real
,  [specindex_naisdss] REAL NULL -- real
,  [specindex_tio2sdss] REAL NULL -- real
,  [specindex_d4000] REAL NULL -- real
,  [specindex_dn4000] REAL NULL -- real
,  [specindex_tiocvd] REAL NULL -- real
,  [specindex_ivar_cn1] FLOAT NULL -- double precision
,  [specindex_ivar_cn2] FLOAT NULL -- double precision
,  [specindex_ivar_ca4227] FLOAT NULL -- double precision
,  [specindex_ivar_g4300] FLOAT NULL -- double precision
,  [specindex_ivar_fe4383] FLOAT NULL -- double precision
,  [specindex_ivar_ca4455] FLOAT NULL -- double precision
,  [specindex_ivar_fe4531] FLOAT NULL -- double precision
,  [specindex_ivar_c24668] FLOAT NULL -- double precision
,  [specindex_ivar_hb] FLOAT NULL -- double precision
,  [specindex_ivar_fe5015] FLOAT NULL -- double precision
,  [specindex_ivar_mg1] FLOAT NULL -- double precision
,  [specindex_ivar_mg2] FLOAT NULL -- double precision
,  [specindex_ivar_mgb] FLOAT NULL -- double precision
,  [specindex_ivar_fe5270] FLOAT NULL -- double precision
,  [specindex_ivar_fe5335] FLOAT NULL -- double precision
,  [specindex_ivar_fe5406] FLOAT NULL -- double precision
,  [specindex_ivar_fe5709] FLOAT NULL -- double precision
,  [specindex_ivar_fe5782] FLOAT NULL -- double precision
,  [specindex_ivar_nad] FLOAT NULL -- double precision
,  [specindex_ivar_tio1] FLOAT NULL -- double precision
,  [specindex_ivar_tio2] FLOAT NULL -- double precision
,  [specindex_ivar_hdeltaa] FLOAT NULL -- double precision
,  [specindex_ivar_hgammaa] FLOAT NULL -- double precision
,  [specindex_ivar_hdeltaf] FLOAT NULL -- double precision
,  [specindex_ivar_hgammaf] FLOAT NULL -- double precision
,  [specindex_ivar_cahk] FLOAT NULL -- double precision
,  [specindex_ivar_caii1] FLOAT NULL -- double precision
,  [specindex_ivar_caii2] FLOAT NULL -- double precision
,  [specindex_ivar_caii3] FLOAT NULL -- double precision
,  [specindex_ivar_pa17] FLOAT NULL -- double precision
,  [specindex_ivar_pa14] FLOAT NULL -- double precision
,  [specindex_ivar_pa12] FLOAT NULL -- double precision
,  [specindex_ivar_mgicvd] FLOAT NULL -- double precision
,  [specindex_ivar_naicvd] FLOAT NULL -- double precision
,  [specindex_ivar_mgiir] FLOAT NULL -- double precision
,  [specindex_ivar_fehcvd] FLOAT NULL -- double precision
,  [specindex_ivar_nai] FLOAT NULL -- double precision
,  [specindex_ivar_btio] FLOAT NULL -- double precision
,  [specindex_ivar_atio] FLOAT NULL -- double precision
,  [specindex_ivar_cah1] FLOAT NULL -- double precision
,  [specindex_ivar_cah2] FLOAT NULL -- double precision
,  [specindex_ivar_naisdss] FLOAT NULL -- double precision
,  [specindex_ivar_tio2sdss] FLOAT NULL -- double precision
,  [specindex_ivar_d4000] FLOAT NULL -- double precision
,  [specindex_ivar_dn4000] FLOAT NULL -- double precision
,  [specindex_ivar_tiocvd] FLOAT NULL -- double precision
,  [specindex_mask_cn1] INTEGER NULL -- integer
,  [specindex_mask_cn2] INTEGER NULL -- integer
,  [specindex_mask_ca4227] INTEGER NULL -- integer
,  [specindex_mask_g4300] INTEGER NULL -- integer
,  [specindex_mask_fe4383] INTEGER NULL -- integer
,  [specindex_mask_ca4455] INTEGER NULL -- integer
,  [specindex_mask_fe4531] INTEGER NULL -- integer
,  [specindex_mask_c24668] INTEGER NULL -- integer
,  [specindex_mask_hb] INTEGER NULL -- integer
,  [specindex_mask_fe5015] INTEGER NULL -- integer
,  [specindex_mask_mg1] INTEGER NULL -- integer
,  [specindex_mask_mg2] INTEGER NULL -- integer
,  [specindex_mask_mgb] INTEGER NULL -- integer
,  [specindex_mask_fe5270] INTEGER NULL -- integer
,  [specindex_mask_fe5335] INTEGER NULL -- integer
,  [specindex_mask_fe5406] INTEGER NULL -- integer
,  [specindex_mask_fe5709] INTEGER NULL -- integer
,  [specindex_mask_fe5782] INTEGER NULL -- integer
,  [specindex_mask_nad] INTEGER NULL -- integer
,  [specindex_mask_tio1] INTEGER NULL -- integer
,  [specindex_mask_tio2] INTEGER NULL -- integer
,  [specindex_mask_hdeltaa] INTEGER NULL -- integer
,  [specindex_mask_hgammaa] INTEGER NULL -- integer
,  [specindex_mask_hdeltaf] INTEGER NULL -- integer
,  [specindex_mask_hgammaf] INTEGER NULL -- integer
,  [specindex_mask_cahk] INTEGER NULL -- integer
,  [specindex_mask_caii1] INTEGER NULL -- integer
,  [specindex_mask_caii2] INTEGER NULL -- integer
,  [specindex_mask_caii3] INTEGER NULL -- integer
,  [specindex_mask_pa17] INTEGER NULL -- integer
,  [specindex_mask_pa14] INTEGER NULL -- integer
,  [specindex_mask_pa12] INTEGER NULL -- integer
,  [specindex_mask_mgicvd] INTEGER NULL -- integer
,  [specindex_mask_naicvd] INTEGER NULL -- integer
,  [specindex_mask_mgiir] INTEGER NULL -- integer
,  [specindex_mask_fehcvd] INTEGER NULL -- integer
,  [specindex_mask_nai] INTEGER NULL -- integer
,  [specindex_mask_btio] INTEGER NULL -- integer
,  [specindex_mask_atio] INTEGER NULL -- integer
,  [specindex_mask_cah1] INTEGER NULL -- integer
,  [specindex_mask_cah2] INTEGER NULL -- integer
,  [specindex_mask_naisdss] INTEGER NULL -- integer
,  [specindex_mask_tio2sdss] INTEGER NULL -- integer
,  [specindex_mask_d4000] INTEGER NULL -- integer
,  [specindex_mask_dn4000] INTEGER NULL -- integer
,  [specindex_mask_tiocvd] INTEGER NULL -- integer
,  [specindex_corr_cn1] REAL NULL -- real
,  [specindex_corr_cn2] REAL NULL -- real
,  [specindex_corr_ca4227] REAL NULL -- real
,  [specindex_corr_g4300] REAL NULL -- real
,  [specindex_corr_fe4383] REAL NULL -- real
,  [specindex_corr_ca4455] REAL NULL -- real
,  [specindex_corr_fe4531] REAL NULL -- real
,  [specindex_corr_c24668] REAL NULL -- real
,  [specindex_corr_hb] REAL NULL -- real
,  [specindex_corr_fe5015] REAL NULL -- real
,  [specindex_corr_mg1] REAL NULL -- real
,  [specindex_corr_mg2] REAL NULL -- real
,  [specindex_corr_mgb] REAL NULL -- real
,  [specindex_corr_fe5270] REAL NULL -- real
,  [specindex_corr_fe5335] REAL NULL -- real
,  [specindex_corr_fe5406] REAL NULL -- real
,  [specindex_corr_fe5709] REAL NULL -- real
,  [specindex_corr_fe5782] REAL NULL -- real
,  [specindex_corr_nad] REAL NULL -- real
,  [specindex_corr_tio1] REAL NULL -- real
,  [specindex_corr_tio2] REAL NULL -- real
,  [specindex_corr_hdeltaa] REAL NULL -- real
,  [specindex_corr_hgammaa] REAL NULL -- real
,  [specindex_corr_hdeltaf] REAL NULL -- real
,  [specindex_corr_hgammaf] REAL NULL -- real
,  [specindex_corr_cahk] REAL NULL -- real
,  [specindex_corr_caii1] REAL NULL -- real
,  [specindex_corr_caii2] REAL NULL -- real
,  [specindex_corr_caii3] REAL NULL -- real
,  [specindex_corr_pa17] REAL NULL -- real
,  [specindex_corr_pa14] REAL NULL -- real
,  [specindex_corr_pa12] REAL NULL -- real
,  [specindex_corr_mgicvd] REAL NULL -- real
,  [specindex_corr_naicvd] REAL NULL -- real
,  [specindex_corr_mgiir] REAL NULL -- real
,  [specindex_corr_fehcvd] REAL NULL -- real
,  [specindex_corr_nai] REAL NULL -- real
,  [specindex_corr_btio] REAL NULL -- real
,  [specindex_corr_atio] REAL NULL -- real
,  [specindex_corr_cah1] REAL NULL -- real
,  [specindex_corr_cah2] REAL NULL -- real
,  [specindex_corr_naisdss] REAL NULL -- real
,  [specindex_corr_tio2sdss] REAL NULL -- real
,  [specindex_corr_d4000] REAL NULL -- real
,  [specindex_corr_dn4000] REAL NULL -- real
,  [specindex_corr_tiocvd] REAL NULL -- real
)
with (location='manga.mangadapdb.[spaxelprop8]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='structure')
begin drop external table mangadapdb.[structure] end

GO

CREATE EXTERNAL TABLE mangadapdb.[structure] (
   [pk] INTEGER NOT NULL -- integer
,  [binmode_pk] INTEGER NULL -- integer
,  [bintype_pk] INTEGER NULL -- integer
,  [template_kin_pk] INTEGER NULL -- integer
,  [template_pop_pk] INTEGER NULL -- integer
,  [executionplan_pk] INTEGER NULL -- integer
)
with (location='manga.mangadapdb.[structure]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='template')
begin drop external table mangadapdb.[template] end

GO

CREATE EXTERNAL TABLE mangadapdb.[template] (
   [pk] INTEGER NOT NULL -- integer
,  [name] NVARCHAR(MAX) NULL -- text
,  [id] INTEGER NULL -- integer
)
with (location='manga.mangadapdb.[template]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='cart')
begin drop external table mangadatadb.[cart] end

GO

CREATE EXTERNAL TABLE mangadatadb.[cart] (
   [pk] INTEGER NOT NULL -- integer
,  [id] INTEGER NULL -- integer
)
with (location='manga.mangadatadb.[cart]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='cart_to_cube')
begin drop external table mangadatadb.[cart_to_cube] end

GO

CREATE EXTERNAL TABLE mangadatadb.[cart_to_cube] (
   [pk] INTEGER NOT NULL -- integer
,  [cube_pk] INTEGER NULL -- integer
,  [cart_pk] INTEGER NULL -- integer
)
with (location='manga.mangadatadb.[cart_to_cube]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='fiber_type')
begin drop external table mangadatadb.[fiber_type] end

GO

CREATE EXTERNAL TABLE mangadatadb.[fiber_type] (
   [pk] INTEGER NOT NULL -- integer
,  [label] NVARCHAR(MAX) NULL -- text
)
with (location='manga.mangadatadb.[fiber_type]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='fibers')
begin drop external table mangadatadb.[fibers] end

GO

CREATE EXTERNAL TABLE mangadatadb.[fibers] (
   [pk] INTEGER NOT NULL -- integer
,  [fiberid] INTEGER NULL -- integer
,  [specfibid] INTEGER NULL -- integer
,  [fnum] INTEGER NULL -- integer
,  [ring] INTEGER NULL -- integer
,  [dist_mm] REAL NULL -- real
,  [xpmm] REAL NULL -- real
,  [ypmm] REAL NULL -- real
,  [fiber_type_pk] INTEGER NULL -- integer
,  [target_type_pk] INTEGER NULL -- integer
,  [ifudesign_pk] INTEGER NULL -- integer
)
with (location='manga.mangadatadb.[fibers]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='fits_header_keyword')
begin drop external table mangadatadb.[fits_header_keyword] end

GO

CREATE EXTERNAL TABLE mangadatadb.[fits_header_keyword] (
   [pk] INTEGER NOT NULL -- integer
,  [label] NVARCHAR(MAX) NULL -- text
)
with (location='manga.mangadatadb.[fits_header_keyword]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='fits_header_value')
begin drop external table mangadatadb.[fits_header_value] end

GO

CREATE EXTERNAL TABLE mangadatadb.[fits_header_value] (
   [pk] INTEGER NOT NULL -- integer
,  [value] NVARCHAR(MAX) NULL -- text
,  [index] INTEGER NULL -- integer
,  [comment] NVARCHAR(MAX) NULL -- text
,  [fits_header_keyword_pk] INTEGER NULL -- integer
,  [cube_pk] INTEGER NULL -- integer
)
with (location='manga.mangadatadb.[fits_header_value]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='ifu_to_block')
begin drop external table mangadatadb.[ifu_to_block] end

GO

CREATE EXTERNAL TABLE mangadatadb.[ifu_to_block] (
   [pk] INTEGER NOT NULL -- integer
,  [ifudesign_pk] INTEGER NULL -- integer
,  [slitblock_pk] INTEGER NULL -- integer
)
with (location='manga.mangadatadb.[ifu_to_block]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='ifudesign')
begin drop external table mangadatadb.[ifudesign] end

GO

CREATE EXTERNAL TABLE mangadatadb.[ifudesign] (
   [pk] INTEGER NOT NULL -- integer
,  [name] NVARCHAR(MAX) NULL -- text
,  [nfiber] INTEGER NULL -- integer
,  [nsky] INTEGER NULL -- integer
,  [nblocks] INTEGER NULL -- integer
,  [specid] INTEGER NULL -- integer
,  [maxring] INTEGER NULL -- integer
)
with (location='manga.mangadatadb.[ifudesign]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='obsinfo')
begin drop external table mangadatadb.[obsinfo] end

GO

CREATE EXTERNAL TABLE mangadatadb.[obsinfo] (
   [pk] INTEGER NOT NULL -- integer
,  [cube_pk] INTEGER NULL -- integer
,  [slitfile] NVARCHAR(MAX) NULL -- character varying
,  [metfile] NVARCHAR(MAX) NULL -- character varying
,  [harname] NVARCHAR(MAX) NULL -- character varying
,  [ifudesign] INTEGER NULL -- integer
,  [frlplug] INTEGER NULL -- integer
,  [mangaid] NVARCHAR(MAX) NULL -- character varying
,  [airtemp] REAL NULL -- real
,  [humidity] REAL NULL -- real
,  [pressure] REAL NULL -- real
,  [seeing] REAL NULL -- real
,  [psffac] REAL NULL -- real
,  [transpar] REAL NULL -- real
,  [plateid] INTEGER NULL -- integer
,  [designid] INTEGER NULL -- integer
,  [cartid] INTEGER NULL -- integer
,  [mjd] INTEGER NULL -- integer
,  [exptime] REAL NULL -- real
,  [expnum] NVARCHAR(MAX) NULL -- character varying
,  [setnum] INTEGER NULL -- integer
,  [mgdpos] NVARCHAR(MAX) NULL -- character varying
,  [mgdra] REAL NULL -- real
,  [mgddec] REAL NULL -- real
,  [omegaset_u] REAL NULL -- real
,  [omegaset_g] REAL NULL -- real
,  [omegaset_r] REAL NULL -- real
,  [omegaset_i] REAL NULL -- real
,  [omegaset_z] REAL NULL -- real
,  [eamfit_ra] REAL NULL -- real
,  [eamfit_dec] REAL NULL -- real
,  [eamfit_theta] REAL NULL -- real
,  [eamfit_theta0] REAL NULL -- real
,  [eamfit_a] REAL NULL -- real
,  [eamfit_b] REAL NULL -- real
,  [eamfit_raerr] REAL NULL -- real
,  [eamfit_decerr] REAL NULL -- real
,  [eamfit_thetaerr] REAL NULL -- real
,  [eamfit_theta0err] REAL NULL -- real
,  [eamfit_aerr] REAL NULL -- real
,  [eamfit_berr] REAL NULL -- real
,  [taibeg] NVARCHAR(MAX) NULL -- character varying
,  [hadrill] REAL NULL -- real
,  [lstmid] REAL NULL -- real
,  [hamid] REAL NULL -- real
,  [airmass] REAL NULL -- real
,  [ifura] FLOAT NULL -- double precision
,  [ifudec] FLOAT NULL -- double precision
,  [cenra] FLOAT NULL -- double precision
,  [cendec] FLOAT NULL -- double precision
,  [xfocal] REAL NULL -- real
,  [yfocal] REAL NULL -- real
,  [mngtarg1] INTEGER NULL -- integer
,  [mngtarg2] INTEGER NULL -- integer
,  [mngtarg3] INTEGER NULL -- integer
,  [bluesn2] REAL NULL -- real
,  [redsn2] REAL NULL -- real
,  [bluepstat] REAL NULL -- real
,  [redpstat] REAL NULL -- real
,  [drp2qual] INTEGER NULL -- integer
,  [thisbadifu] INTEGER NULL -- integer
,  [pf_fwhm_g] REAL NULL -- real
,  [pf_fwhm_r] REAL NULL -- real
,  [pf_fwhm_i] REAL NULL -- real
,  [pf_fwhm_z] REAL NULL -- real
)
with (location='manga.mangadatadb.[obsinfo]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='pipeline_completion_status')
begin drop external table mangadatadb.[pipeline_completion_status] end

GO

CREATE EXTERNAL TABLE mangadatadb.[pipeline_completion_status] (
   [pk] INTEGER NOT NULL -- integer
,  [label] NVARCHAR(MAX) NULL -- text
)
with (location='manga.mangadatadb.[pipeline_completion_status]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='pipeline_info')
begin drop external table mangadatadb.[pipeline_info] end

GO

CREATE EXTERNAL TABLE mangadatadb.[pipeline_info] (
   [pk] INTEGER NOT NULL -- integer
,  [pipeline_name_pk] INTEGER NULL -- integer
,  [pipeline_stage_pk] INTEGER NULL -- integer
,  [pipeline_version_pk] INTEGER NULL -- integer
,  [pipeline_completion_status_pk] INTEGER NULL -- integer
)
with (location='manga.mangadatadb.[pipeline_info]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='pipeline_name')
begin drop external table mangadatadb.[pipeline_name] end

GO

CREATE EXTERNAL TABLE mangadatadb.[pipeline_name] (
   [pk] INTEGER NOT NULL -- integer
,  [label] NVARCHAR(MAX) NULL -- text
)
with (location='manga.mangadatadb.[pipeline_name]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='pipeline_stage')
begin drop external table mangadatadb.[pipeline_stage] end

GO

CREATE EXTERNAL TABLE mangadatadb.[pipeline_stage] (
   [pk] INTEGER NOT NULL -- integer
,  [label] NVARCHAR(MAX) NULL -- text
)
with (location='manga.mangadatadb.[pipeline_stage]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='pipeline_version')
begin drop external table mangadatadb.[pipeline_version] end

GO

CREATE EXTERNAL TABLE mangadatadb.[pipeline_version] (
   [pk] INTEGER NOT NULL -- integer
,  [version] NVARCHAR(MAX) NULL -- text
,  [label] NVARCHAR(MAX) NULL -- character varying
)
with (location='manga.mangadatadb.[pipeline_version]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='sample')
begin drop external table mangadatadb.[sample] end

GO

CREATE EXTERNAL TABLE mangadatadb.[sample] (
   [pk] INTEGER NOT NULL -- integer
,  [manga_tileid] INTEGER NULL -- integer
,  [ifu_ra] FLOAT NULL -- double precision
,  [ifu_dec] FLOAT NULL -- double precision
,  [target_ra] FLOAT NULL -- double precision
,  [target_dec] FLOAT NULL -- double precision
,  [iauname] NVARCHAR(MAX) NULL -- text
,  [ifudesignsize] INTEGER NULL -- integer
,  [ifutargetsize] INTEGER NULL -- integer
,  [ifudesignwrongsize] INTEGER NULL -- integer
,  [field] INTEGER NULL -- integer
,  [run] INTEGER NULL -- integer
,  [nsa_redshift] REAL NULL -- real
,  [nsa_zdist] REAL NULL -- real
,  [nsa_absmag_f] REAL NULL -- real
,  [nsa_absmag_n] REAL NULL -- real
,  [nsa_absmag_u] REAL NULL -- real
,  [nsa_absmag_g] REAL NULL -- real
,  [nsa_absmag_r] REAL NULL -- real
,  [nsa_absmag_i] REAL NULL -- real
,  [nsa_absmag_z] REAL NULL -- real
,  [nsa_mstar] REAL NULL -- real
,  [nsa_vdisp] REAL NULL -- real
,  [nsa_inclination] REAL NULL -- real
,  [nsa_petro_th50] REAL NULL -- real
,  [nsa_petroflux_f] REAL NULL -- real
,  [nsa_petroflux_n] REAL NULL -- real
,  [nsa_petroflux_u] REAL NULL -- real
,  [nsa_petroflux_g] REAL NULL -- real
,  [nsa_petroflux_r] REAL NULL -- real
,  [nsa_petroflux_i] REAL NULL -- real
,  [nsa_petroflux_z] REAL NULL -- real
,  [nsa_petroflux_ivar_f] REAL NULL -- real
,  [nsa_petroflux_ivar_n] REAL NULL -- real
,  [nsa_petroflux_ivar_u] REAL NULL -- real
,  [nsa_petroflux_ivar_g] REAL NULL -- real
,  [nsa_petroflux_ivar_r] REAL NULL -- real
,  [nsa_petroflux_ivar_i] REAL NULL -- real
,  [nsa_petroflux_ivar_z] REAL NULL -- real
,  [nsa_sersic_ba] REAL NULL -- real
,  [nsa_sersic_n] REAL NULL -- real
,  [nsa_sersic_phi] REAL NULL -- real
,  [nsa_sersic_th50] REAL NULL -- real
,  [nsa_sersicflux_f] REAL NULL -- real
,  [nsa_sersicflux_n] REAL NULL -- real
,  [nsa_sersicflux_u] REAL NULL -- real
,  [nsa_sersicflux_g] REAL NULL -- real
,  [nsa_sersicflux_r] REAL NULL -- real
,  [nsa_sersicflux_i] REAL NULL -- real
,  [nsa_sersicflux_z] REAL NULL -- real
,  [nsa_sersicflux_ivar_f] REAL NULL -- real
,  [nsa_sersicflux_ivar_n] REAL NULL -- real
,  [nsa_sersicflux_ivar_u] REAL NULL -- real
,  [nsa_sersicflux_ivar_g] REAL NULL -- real
,  [nsa_sersicflux_ivar_r] REAL NULL -- real
,  [nsa_sersicflux_ivar_i] REAL NULL -- real
,  [nsa_sersicflux_ivar_z] REAL NULL -- real
,  [cube_pk] INTEGER NULL -- integer
,  [nsa_version] NVARCHAR(MAX) NULL -- text
,  [nsa_id] BIGINT NULL -- bigint
,  [nsa_id100] BIGINT NULL -- bigint
,  [nsa_ba] REAL NULL -- real
,  [nsa_phi] REAL NULL -- real
,  [nsa_mstar_el] REAL NULL -- real
,  [nsa_petro_th50_el] REAL NULL -- real
,  [nsa_extinction_f] REAL NULL -- real
,  [nsa_extinction_n] REAL NULL -- real
,  [nsa_extinction_u] REAL NULL -- real
,  [nsa_extinction_g] REAL NULL -- real
,  [nsa_extinction_r] REAL NULL -- real
,  [nsa_extinction_i] REAL NULL -- real
,  [nsa_extinction_z] REAL NULL -- real
,  [nsa_amivar_el_f] REAL NULL -- real
,  [nsa_amivar_el_n] REAL NULL -- real
,  [nsa_amivar_el_u] REAL NULL -- real
,  [nsa_amivar_el_g] REAL NULL -- real
,  [nsa_amivar_el_r] REAL NULL -- real
,  [nsa_amivar_el_i] REAL NULL -- real
,  [nsa_amivar_el_z] REAL NULL -- real
,  [nsa_petroflux_el_f] REAL NULL -- real
,  [nsa_petroflux_el_n] REAL NULL -- real
,  [nsa_petroflux_el_u] REAL NULL -- real
,  [nsa_petroflux_el_g] REAL NULL -- real
,  [nsa_petroflux_el_r] REAL NULL -- real
,  [nsa_petroflux_el_i] REAL NULL -- real
,  [nsa_petroflux_el_z] REAL NULL -- real
,  [nsa_petroflux_el_ivar_f] REAL NULL -- real
,  [nsa_petroflux_el_ivar_n] REAL NULL -- real
,  [nsa_petroflux_el_ivar_u] REAL NULL -- real
,  [nsa_petroflux_el_ivar_g] REAL NULL -- real
,  [nsa_petroflux_el_ivar_r] REAL NULL -- real
,  [nsa_petroflux_el_ivar_i] REAL NULL -- real
,  [nsa_petroflux_el_ivar_z] REAL NULL -- real
,  [nsa_absmag_el_f] REAL NULL -- real
,  [nsa_absmag_el_n] REAL NULL -- real
,  [nsa_absmag_el_u] REAL NULL -- real
,  [nsa_absmag_el_g] REAL NULL -- real
,  [nsa_absmag_el_r] REAL NULL -- real
,  [nsa_absmag_el_i] REAL NULL -- real
,  [nsa_absmag_el_z] REAL NULL -- real
)
with (location='manga.mangadatadb.[sample]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='slitblock')
begin drop external table mangadatadb.[slitblock] end

GO

CREATE EXTERNAL TABLE mangadatadb.[slitblock] (
   [pk] INTEGER NOT NULL -- integer
,  [blockid] INTEGER NULL -- integer
,  [specblockid] INTEGER NULL -- integer
,  [nfiber] INTEGER NULL -- integer
)
with (location='manga.mangadatadb.[slitblock]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='target_type')
begin drop external table mangadatadb.[target_type] end

GO

CREATE EXTERNAL TABLE mangadatadb.[target_type] (
   [pk] INTEGER NOT NULL -- integer
,  [label] NVARCHAR(MAX) NULL -- text
)
with (location='manga.mangadatadb.[target_type]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='temprssdiff')
begin drop external table mangadatadb.[temprssdiff] end

GO

CREATE EXTERNAL TABLE mangadatadb.[temprssdiff] (
   [pk] INTEGER NULL -- integer
,  [realcount] INTEGER NULL -- integer
,  [cube_pk] INTEGER NULL -- integer
,  [count] BIGINT NULL -- bigint
)
with (location='manga.mangadatadb.[temprssdiff]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='tempspaxeldiff')
begin drop external table mangadatadb.[tempspaxeldiff] end

GO

CREATE EXTERNAL TABLE mangadatadb.[tempspaxeldiff] (
   [pk] INTEGER NULL -- integer
,  [count] BIGINT NULL -- bigint
,  [total] INTEGER NULL -- integer
,  [halfcount] BIGINT NULL -- bigint
)
with (location='manga.mangadatadb.[tempspaxeldiff]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='wcs')
begin drop external table mangadatadb.[wcs] end

GO

CREATE EXTERNAL TABLE mangadatadb.[wcs] (
   [pk] INTEGER NOT NULL -- integer
,  [cube_pk] INTEGER NULL -- integer
,  [ctype3] NVARCHAR(MAX) NULL -- text
,  [crpix3] INTEGER NULL -- integer
,  [crval3] NUMERIC NULL -- numeric
,  [cd3_3] NUMERIC NULL -- numeric
,  [cunit3] NVARCHAR(MAX) NULL -- text
,  [crpix1] NUMERIC NULL -- numeric
,  [crpix2] NUMERIC NULL -- numeric
,  [crval1] NUMERIC NULL -- numeric
,  [crval2] NUMERIC NULL -- numeric
,  [cd1_1] NUMERIC NULL -- numeric
,  [cd2_2] NUMERIC NULL -- numeric
,  [ctype1] NVARCHAR(MAX) NULL -- text
,  [ctype2] NVARCHAR(MAX) NULL -- text
,  [cunit1] NVARCHAR(MAX) NULL -- text
,  [cunit2] NVARCHAR(MAX) NULL -- text
,  [hduclass] NVARCHAR(MAX) NULL -- text
,  [hduclas1] NVARCHAR(MAX) NULL -- text
,  [hduclas2] NVARCHAR(MAX) NULL -- text
,  [errdata] NVARCHAR(MAX) NULL -- text
,  [qualdata] NVARCHAR(MAX) NULL -- text
,  [extname] NVARCHAR(MAX) NULL -- text
,  [naxis1] INTEGER NULL -- integer
,  [naxis2] INTEGER NULL -- integer
,  [naxis3] INTEGER NULL -- integer
)
with (location='manga.mangadatadb.[wcs]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangasampledb' and table_name='anime')
begin drop external table mangasampledb.[anime] end

GO

CREATE EXTERNAL TABLE mangasampledb.[anime] (
   [pk] INTEGER NOT NULL -- integer
,  [anime] NVARCHAR(MAX) NULL -- text
)
with (location='manga.mangasampledb.[anime]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangasampledb' and table_name='catalogue')
begin drop external table mangasampledb.[catalogue] end

GO

CREATE EXTERNAL TABLE mangasampledb.[catalogue] (
   [pk] INTEGER NOT NULL -- integer
,  [catalogue_name] NVARCHAR(MAX) NOT NULL -- text
,  [version] NVARCHAR(MAX) NOT NULL -- text
,  [match_description] NVARCHAR(MAX) NULL -- text
,  [matched] NVARCHAR(5) NULL -- boolean
)
with (location='manga.mangasampledb.[catalogue]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangasampledb' and table_name='character')
begin drop external table mangasampledb.[character] end

GO

CREATE EXTERNAL TABLE mangasampledb.[character] (
   [pk] INTEGER NOT NULL -- integer
,  [name] NVARCHAR(MAX) NULL -- text
,  [picture] VARBINARY(MAX) NULL -- bytea
,  [anime_pk] INTEGER NULL -- integer
,  [manga_target_pk] INTEGER NULL -- integer
)
with (location='manga.mangasampledb.[character]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangasampledb' and table_name='current_catalogue')
begin drop external table mangasampledb.[current_catalogue] end

GO

CREATE EXTERNAL TABLE mangasampledb.[current_catalogue] (
   [pk] INTEGER NOT NULL -- integer
,  [catalogue_pk] SMALLINT NOT NULL -- smallint
)
with (location='manga.mangasampledb.[current_catalogue]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangasampledb' and table_name='manga_target')
begin drop external table mangasampledb.[manga_target] end

GO

CREATE EXTERNAL TABLE mangasampledb.[manga_target] (
   [pk] INTEGER NOT NULL -- integer
,  [mangaid] NVARCHAR(MAX) NOT NULL -- text
)
with (location='manga.mangasampledb.[manga_target]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangasampledb' and table_name='manga_target_to_manga_target')
begin drop external table mangasampledb.[manga_target_to_manga_target] end

GO

CREATE EXTERNAL TABLE mangasampledb.[manga_target_to_manga_target] (
   [pk] INTEGER NOT NULL -- integer
,  [manga_target1_pk] INTEGER NULL -- integer
,  [manga_target2_pk] INTEGER NULL -- integer
)
with (location='manga.mangasampledb.[manga_target_to_manga_target]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangasampledb' and table_name='manga_target_to_nsa')
begin drop external table mangasampledb.[manga_target_to_nsa] end

GO

CREATE EXTERNAL TABLE mangasampledb.[manga_target_to_nsa] (
   [pk] INTEGER NOT NULL -- integer
,  [manga_target_pk] INTEGER NULL -- integer
,  [nsa_pk] INTEGER NULL -- integer
)
with (location='manga.mangasampledb.[manga_target_to_nsa]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='platelist' and table_name='currentmjd')
begin drop external table platelist.[currentmjd] end

GO

CREATE EXTERNAL TABLE platelist.[currentmjd] (
   [pk] INTEGER NOT NULL -- integer
,  [mjd] INTEGER NULL -- integer
,  [modified] DATETIME NULL -- timestamp without time zone
)
with (location='manga.platelist.[currentmjd]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='platelist' and table_name='doiexist')
begin drop external table platelist.[doiexist] end

GO

CREATE EXTERNAL TABLE platelist.[doiexist] (
   [pk] INTEGER NOT NULL -- integer
,  [label] NVARCHAR(MAX) NULL -- text
)
with (location='manga.platelist.[doiexist]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='platelist' and table_name='pl2dto3d')
begin drop external table platelist.[pl2dto3d] end

GO

CREATE EXTERNAL TABLE platelist.[pl2dto3d] (
   [pk] INTEGER NOT NULL -- integer
,  [platelist2d_pk] INTEGER NULL -- integer
,  [platelist3d_pk] INTEGER NULL -- integer
)
with (location='manga.platelist.[pl2dto3d]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='platelist' and table_name='platelist2d')
begin drop external table platelist.[platelist2d] end

GO

CREATE EXTERNAL TABLE platelist.[platelist2d] (
   [pk] INTEGER NOT NULL -- integer
,  [plate] INTEGER NULL -- integer
,  [mjd] INTEGER NULL -- integer
,  [apocomp] NVARCHAR(MAX) NULL -- text
,  [status2d] NVARCHAR(MAX) NULL -- text
,  [status3d] NVARCHAR(MAX) NULL -- text
,  [drp2qual] INTEGER NULL -- integer
,  [type] NVARCHAR(MAX) NULL -- text
,  [complete] NVARCHAR(MAX) NULL -- text
,  [nscigood] INTEGER NULL -- integer
,  [nscibad] INTEGER NULL -- integer
,  [versdrp2] NVARCHAR(MAX) NULL -- text
,  [verscore] NVARCHAR(MAX) NULL -- text
,  [versutil] NVARCHAR(MAX) NULL -- text
,  [versprim] NVARCHAR(MAX) NULL -- text
,  [cartid] INTEGER NULL -- integer
,  [mapname] NVARCHAR(MAX) NULL -- text
,  [survey] NVARCHAR(MAX) NULL -- text
,  [platetyp] NVARCHAR(MAX) NULL -- text
,  [srvymode] NVARCHAR(MAX) NULL -- text
,  [radeg] FLOAT NULL -- double precision
,  [decdeg] FLOAT NULL -- double precision
,  [nexp] INTEGER NULL -- integer
,  [totalexptime] REAL NULL -- real
,  [taibeg] FLOAT NULL -- double precision
,  [taiend] FLOAT NULL -- double precision
,  [airmass] FLOAT NULL -- double precision
,  [seeing] FLOAT NULL -- double precision
,  [transpar] FLOAT NULL -- double precision
,  [badifu] NVARCHAR(MAX) NULL -- text
,  [b1sn2] FLOAT NULL -- double precision
,  [r1sn2] FLOAT NULL -- double precision
,  [b2sn2] FLOAT NULL -- double precision
,  [r2sn2] FLOAT NULL -- double precision
,  [b1pstat] FLOAT NULL -- double precision
,  [r1pstat] FLOAT NULL -- double precision
,  [b2pstat] FLOAT NULL -- double precision
,  [r2pstat] FLOAT NULL -- double precision
,  [hrangbeg] FLOAT NULL -- double precision
,  [hrangend] FLOAT NULL -- double precision
,  [airmsbeg] FLOAT NULL -- double precision
,  [airmsend] FLOAT NULL -- double precision
,  [programname] NVARCHAR(MAX) NULL -- text
,  [chunk] NVARCHAR(MAX) NULL -- text
,  [epoch] REAL NULL -- real
,  [isbright] NVARCHAR(MAX) NULL -- text
,  [created] DATETIME NULL -- timestamp without time zone
,  [modified] DATETIME NULL -- timestamp without time zone
)
with (location='manga.platelist.[platelist2d]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='platelist' and table_name='platelist3d')
begin drop external table platelist.[platelist3d] end

GO

CREATE EXTERNAL TABLE platelist.[platelist3d] (
   [pk] INTEGER NOT NULL -- integer
,  [plate] INTEGER NULL -- integer
,  [ifudsgn] NVARCHAR(MAX) NULL -- text
,  [plateifu] NVARCHAR(MAX) NULL -- text
,  [mangaid] NVARCHAR(MAX) NULL -- text
,  [status3d] NVARCHAR(MAX) NULL -- text
,  [versdrp3] NVARCHAR(MAX) NULL -- text
,  [verscore] NVARCHAR(MAX) NULL -- text
,  [versutil] NVARCHAR(MAX) NULL -- text
,  [versprim] NVARCHAR(MAX) NULL -- text
,  [objra] FLOAT NULL -- double precision
,  [objdec] FLOAT NULL -- double precision
,  [ifura] FLOAT NULL -- double precision
,  [ifudec] FLOAT NULL -- double precision
,  [nexp] INTEGER NULL -- integer
,  [exptime] FLOAT NULL -- double precision
,  [drp3qual] INTEGER NULL -- integer
,  [bluesn2] FLOAT NULL -- double precision
,  [redsn2] FLOAT NULL -- double precision
,  [airmsmin] FLOAT NULL -- double precision
,  [airmsmed] FLOAT NULL -- double precision
,  [airmsmax] FLOAT NULL -- double precision
,  [seemin] FLOAT NULL -- double precision
,  [seemed] FLOAT NULL -- double precision
,  [seemax] FLOAT NULL -- double precision
,  [transmin] FLOAT NULL -- double precision
,  [transmed] FLOAT NULL -- double precision
,  [transmax] FLOAT NULL -- double precision
,  [mjdmin] INTEGER NULL -- integer
,  [mjdmed] INTEGER NULL -- integer
,  [mjdmax] INTEGER NULL -- integer
,  [mjdred] INTEGER NULL -- integer
,  [datered] NVARCHAR(MAX) NULL -- text
,  [harname] NVARCHAR(MAX) NULL -- text
,  [frlplug] INTEGER NULL -- integer
,  [cartid] NVARCHAR(MAX) NULL -- text
,  [cenra] FLOAT NULL -- double precision
,  [cendec] FLOAT NULL -- double precision
,  [gfwhm] FLOAT NULL -- double precision
,  [rfwhm] FLOAT NULL -- double precision
,  [ifwhm] FLOAT NULL -- double precision
,  [zfwhm] FLOAT NULL -- double precision
,  [image] NVARCHAR(MAX) NULL -- text
,  [srvymode] NVARCHAR(MAX) NULL -- text
,  [mngtarg1] INTEGER NULL -- integer
,  [mngtarg2] INTEGER NULL -- integer
,  [mngtarg3] NVARCHAR(MAX) NULL -- text
,  [ifuglat] FLOAT NULL -- double precision
,  [ifuglon] FLOAT NULL -- double precision
,  [versdrp2] NVARCHAR(MAX) NULL -- text
,  [ebvgal] FLOAT NULL -- double precision
,  [catidnum] INTEGER NULL -- integer
,  [platetyp] NVARCHAR(MAX) NULL -- text
,  [designid] INTEGER NULL -- integer
,  [plttarg] NVARCHAR(MAX) NULL -- text
,  [isbright] NVARCHAR(MAX) NULL -- text
,  [created] DATETIME NULL -- timestamp without time zone
,  [modified] DATETIME NULL -- timestamp without time zone
)
with (location='manga.platelist.[platelist3d]',data_source=pg64)

GO

