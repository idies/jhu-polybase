
if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='modelspaxel')
begin drop external table mangadapdb.[modelspaxel] end

GO

CREATE EXTERNAL TABLE mangadapdb.[modelspaxel] (
   [pk] INTEGER NOT NULL -- integer
,  [flux] NVARCHAR(MAX) NULL -- ARRAY
,  [ivar] NVARCHAR(MAX) NULL -- ARRAY
,  [mask] NVARCHAR(MAX) NULL -- ARRAY
,  [model] NVARCHAR(MAX) NULL -- ARRAY
,  [emline] NVARCHAR(MAX) NULL -- ARRAY
,  [emline_base] NVARCHAR(MAX) NULL -- ARRAY
,  [emline_mask] NVARCHAR(MAX) NULL -- ARRAY
,  [x] INTEGER NULL -- integer
,  [y] INTEGER NULL -- integer
,  [modelcube_pk] INTEGER NULL -- integer
,  [binid_binned_spectra] INTEGER NULL -- integer
,  [binid_stellar_continua] INTEGER NULL -- integer
,  [binid_em_line_moments] INTEGER NULL -- integer
,  [binid_em_line_models] INTEGER NULL -- integer
,  [binid_spectral_indices] INTEGER NULL -- integer
,  [model_mask] NVARCHAR(MAX) NULL -- ARRAY
,  [stellar] NVARCHAR(MAX) NULL -- ARRAY
,  [stellar_mask] NVARCHAR(MAX) NULL -- ARRAY
)
with (location='manga.mangadapdb.[v_modelspaxel]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadapdb' and table_name='redcorr')
begin drop external table mangadapdb.[redcorr] end

GO

CREATE EXTERNAL TABLE mangadapdb.[redcorr] (
   [pk] INTEGER NOT NULL -- integer
,  [value] NVARCHAR(MAX) NULL -- ARRAY
,  [modelcube_pk] INTEGER NULL -- integer
)
with (location='manga.mangadapdb.[v_redcorr]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='cube')
begin drop external table mangadatadb.[cube] end

GO

CREATE EXTERNAL TABLE mangadatadb.[cube] (
   [pk] INTEGER NOT NULL -- integer
,  [plate] INTEGER NULL -- integer
,  [mangaid] NVARCHAR(MAX) NULL -- text
,  [designid] INTEGER NULL -- integer
,  [pipeline_info_pk] INTEGER NULL -- integer
,  [wavelength_pk] INTEGER NULL -- integer
,  [ifudesign_pk] INTEGER NULL -- integer
,  [specres] NVARCHAR(MAX) NULL -- ARRAY
,  [xfocal] REAL NULL -- real
,  [yfocal] REAL NULL -- real
,  [ra] FLOAT NULL -- double precision
,  [dec] FLOAT NULL -- double precision
,  [manga_target_pk] INTEGER NULL -- integer
,  [cube_shape_pk] INTEGER NULL -- integer
,  [specresd] NVARCHAR(MAX) NULL -- ARRAY
,  [prespecres] NVARCHAR(MAX) NULL -- ARRAY
,  [prespecresd] NVARCHAR(MAX) NULL -- ARRAY
)
with (location='manga.mangadatadb.[v_cube]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='cube_shape')
begin drop external table mangadatadb.[cube_shape] end

GO

CREATE EXTERNAL TABLE mangadatadb.[cube_shape] (
   [pk] INTEGER NOT NULL -- integer
,  [size] INTEGER NULL -- integer
,  [total] INTEGER NULL -- integer
,  [indices] NVARCHAR(MAX) NULL -- ARRAY
)
with (location='manga.mangadatadb.[v_cube_shape]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='rssfiber')
begin drop external table mangadatadb.[rssfiber] end

GO

CREATE EXTERNAL TABLE mangadatadb.[rssfiber] (
   [pk] INTEGER NOT NULL -- integer
,  [flux] NVARCHAR(MAX) NULL -- ARRAY
,  [ivar] NVARCHAR(MAX) NULL -- ARRAY
,  [mask] NVARCHAR(MAX) NULL -- ARRAY
,  [xpos] NVARCHAR(MAX) NULL -- ARRAY
,  [ypos] NVARCHAR(MAX) NULL -- ARRAY
,  [exposure_no] INTEGER NULL -- integer
,  [mjd] INTEGER NULL -- integer
,  [exposure_pk] INTEGER NULL -- integer
,  [cube_pk] INTEGER NULL -- integer
,  [fibers_pk] INTEGER NULL -- integer
,  [disp] NVARCHAR(MAX) NULL -- ARRAY
,  [predisp] NVARCHAR(MAX) NULL -- ARRAY
)
with (location='manga.mangadatadb.[v_rssfiber]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='rssfiber_orig')
begin drop external table mangadatadb.[rssfiber_orig] end

GO

CREATE EXTERNAL TABLE mangadatadb.[rssfiber_orig] (
   [pk] INTEGER NULL -- integer
,  [flux] NVARCHAR(MAX) NULL -- ARRAY
,  [ivar] NVARCHAR(MAX) NULL -- ARRAY
,  [mask] NVARCHAR(MAX) NULL -- ARRAY
,  [xpos] NVARCHAR(MAX) NULL -- ARRAY
,  [ypos] NVARCHAR(MAX) NULL -- ARRAY
,  [exposure_no] INTEGER NULL -- integer
,  [mjd] INTEGER NULL -- integer
,  [exposure_pk] INTEGER NULL -- integer
,  [cube_pk] INTEGER NULL -- integer
,  [fibers_pk] INTEGER NULL -- integer
,  [disp] NVARCHAR(MAX) NULL -- ARRAY
,  [predisp] NVARCHAR(MAX) NULL -- ARRAY
)
with (location='manga.mangadatadb.[v_rssfiber_orig]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='spaxel')
begin drop external table mangadatadb.[spaxel] end

GO

CREATE EXTERNAL TABLE mangadatadb.[spaxel] (
   [pk] INTEGER NOT NULL -- integer
,  [flux] NVARCHAR(MAX) NULL -- ARRAY
,  [ivar] NVARCHAR(MAX) NULL -- ARRAY
,  [mask] NVARCHAR(MAX) NULL -- ARRAY
,  [cube_pk] INTEGER NULL -- integer
,  [x] INTEGER NULL -- integer
,  [y] INTEGER NULL -- integer
,  [disp] NVARCHAR(MAX) NULL -- ARRAY
,  [predisp] NVARCHAR(MAX) NULL -- ARRAY
)
with (location='manga.mangadatadb.[v_spaxel]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='test_spaxel')
begin drop external table mangadatadb.[test_spaxel] end

GO

CREATE EXTERNAL TABLE mangadatadb.[test_spaxel] (
   [pk] INTEGER NOT NULL -- integer
,  [flux] NVARCHAR(MAX) NULL -- ARRAY
,  [ivar] NVARCHAR(MAX) NULL -- ARRAY
,  [mask] NVARCHAR(MAX) NULL -- ARRAY
,  [cube_pk] INTEGER NULL -- integer
,  [flux_json] NVARCHAR(MAX) NULL -- json
)
with (location='manga.mangadatadb.[v_test_spaxel]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangadatadb' and table_name='wavelength')
begin drop external table mangadatadb.[wavelength] end

GO

CREATE EXTERNAL TABLE mangadatadb.[wavelength] (
   [pk] INTEGER NOT NULL -- integer
,  [wavelength] NVARCHAR(MAX) NULL -- ARRAY
,  [bintype] NVARCHAR(MAX) NULL -- text
)
with (location='manga.mangadatadb.[v_wavelength]',data_source=pg64)

GO


if exists (select 1 from information_schema.tables 
where table_schema='mangasampledb' and table_name='nsa')
begin drop external table mangasampledb.[nsa] end

GO

CREATE EXTERNAL TABLE mangasampledb.[nsa] (
   [pk] INTEGER NOT NULL -- integer
,  [iauname] NVARCHAR(MAX) NULL -- character varying
,  [subdir] NVARCHAR(MAX) NULL -- character varying
,  [ra] FLOAT NULL -- double precision
,  [dec] FLOAT NULL -- double precision
,  [isdss] INTEGER NULL -- integer
,  [ined] INTEGER NULL -- integer
,  [isixdf] INTEGER NULL -- integer
,  [ialfalfa] INTEGER NULL -- integer
,  [izcat] INTEGER NULL -- integer
,  [itwodf] INTEGER NULL -- integer
,  [mag] FLOAT NULL -- double precision
,  [z] FLOAT NULL -- double precision
,  [zsrc] NVARCHAR(MAX) NULL -- character varying
,  [size] FLOAT NULL -- double precision
,  [run] INTEGER NULL -- integer
,  [camcol] SMALLINT NULL -- smallint
,  [field] INTEGER NULL -- integer
,  [rerun] NVARCHAR(MAX) NULL -- character varying
,  [xpos] FLOAT NULL -- double precision
,  [ypos] FLOAT NULL -- double precision
,  [nsaid] INTEGER NULL -- integer
,  [zdist] FLOAT NULL -- double precision
,  [sersic_nmgy] NVARCHAR(MAX) NULL -- ARRAY
,  [sersic_nmgy_ivar] NVARCHAR(MAX) NULL -- ARRAY
,  [sersic_ok] INTEGER NULL -- integer
,  [sersic_rnmgy] NVARCHAR(MAX) NULL -- ARRAY
,  [sersic_absmag] NVARCHAR(MAX) NULL -- ARRAY
,  [sersic_amivar] NVARCHAR(MAX) NULL -- ARRAY
,  [extinction] NVARCHAR(MAX) NULL -- ARRAY
,  [sersic_kcorrect] NVARCHAR(MAX) NULL -- ARRAY
,  [sersic_kcoeff] NVARCHAR(MAX) NULL -- ARRAY
,  [sersic_mtol] NVARCHAR(MAX) NULL -- ARRAY
,  [sersic_b300] FLOAT NULL -- double precision
,  [sersic_b1000] FLOAT NULL -- double precision
,  [sersic_mets] FLOAT NULL -- double precision
,  [sersic_mass] FLOAT NULL -- double precision
,  [xcen] FLOAT NULL -- double precision
,  [ycen] FLOAT NULL -- double precision
,  [nprof] NVARCHAR(MAX) NULL -- ARRAY
,  [profmean] NVARCHAR(MAX) NULL -- ARRAY
,  [profmean_ivar] NVARCHAR(MAX) NULL -- ARRAY
,  [qstokes] NVARCHAR(MAX) NULL -- ARRAY
,  [ustokes] NVARCHAR(MAX) NULL -- ARRAY
,  [bastokes] NVARCHAR(MAX) NULL -- ARRAY
,  [phistokes] NVARCHAR(MAX) NULL -- ARRAY
,  [petro_flux] NVARCHAR(MAX) NULL -- ARRAY
,  [petro_flux_ivar] NVARCHAR(MAX) NULL -- ARRAY
,  [fiber_flux] NVARCHAR(MAX) NULL -- ARRAY
,  [fiber_flux_ivar] NVARCHAR(MAX) NULL -- ARRAY
,  [petro_ba50] FLOAT NULL -- double precision
,  [petro_phi50] FLOAT NULL -- double precision
,  [petro_ba90] FLOAT NULL -- double precision
,  [petro_phi90] FLOAT NULL -- double precision
,  [sersic_flux] NVARCHAR(MAX) NULL -- ARRAY
,  [sersic_flux_ivar] NVARCHAR(MAX) NULL -- ARRAY
,  [sersic_n] FLOAT NULL -- double precision
,  [sersic_ba] FLOAT NULL -- double precision
,  [sersic_phi] FLOAT NULL -- double precision
,  [asymmetry] NVARCHAR(MAX) NULL -- ARRAY
,  [clumpy] NVARCHAR(MAX) NULL -- ARRAY
,  [dflags] NVARCHAR(MAX) NULL -- ARRAY
,  [aid] INTEGER NULL -- integer
,  [pid] INTEGER NULL -- integer
,  [dversion] NVARCHAR(MAX) NULL -- character varying
,  [proftheta] NVARCHAR(MAX) NULL -- ARRAY
,  [petro_theta] FLOAT NULL -- double precision
,  [petro_th50] FLOAT NULL -- double precision
,  [petro_th90] FLOAT NULL -- double precision
,  [sersic_th50] FLOAT NULL -- double precision
,  [plate] INTEGER NULL -- integer
,  [fiberid] INTEGER NULL -- integer
,  [mjd] INTEGER NULL -- integer
,  [racat] FLOAT NULL -- double precision
,  [deccat] FLOAT NULL -- double precision
,  [zsdssline] FLOAT NULL -- double precision
,  [survey] NVARCHAR(MAX) NULL -- character varying
,  [programname] NVARCHAR(MAX) NULL -- character varying
,  [platequality] NVARCHAR(MAX) NULL -- character varying
,  [tile] INTEGER NULL -- integer
,  [plug_ra] FLOAT NULL -- double precision
,  [plug_dec] FLOAT NULL -- double precision
,  [elpetro_ba] FLOAT NULL -- double precision
,  [elpetro_phi] FLOAT NULL -- double precision
,  [elpetro_flux_r] FLOAT NULL -- double precision
,  [elpetro_flux_ivar_r] FLOAT NULL -- double precision
,  [elpetro_theta_r] FLOAT NULL -- double precision
,  [elpetro_th50_r] FLOAT NULL -- double precision
,  [elpetro_th90_r] FLOAT NULL -- double precision
,  [elpetro_theta] FLOAT NULL -- double precision
,  [elpetro_flux] NVARCHAR(MAX) NULL -- ARRAY
,  [elpetro_flux_ivar] NVARCHAR(MAX) NULL -- ARRAY
,  [elpetro_th50] NVARCHAR(MAX) NULL -- ARRAY
,  [elpetro_th90] NVARCHAR(MAX) NULL -- ARRAY
,  [elpetro_apcorr_r] FLOAT NULL -- double precision
,  [elpetro_apcorr] NVARCHAR(MAX) NULL -- ARRAY
,  [elpetro_apcorr_self] NVARCHAR(MAX) NULL -- ARRAY
,  [elpetro_nmgy] NVARCHAR(MAX) NULL -- ARRAY
,  [elpetro_nmgy_ivar] NVARCHAR(MAX) NULL -- ARRAY
,  [elpetro_ok] INTEGER NULL -- integer
,  [elpetro_rnmgy] NVARCHAR(MAX) NULL -- ARRAY
,  [elpetro_absmag] NVARCHAR(MAX) NULL -- ARRAY
,  [elpetro_amivar] NVARCHAR(MAX) NULL -- ARRAY
,  [elpetro_kcorrect] NVARCHAR(MAX) NULL -- ARRAY
,  [elpetro_kcoeff] NVARCHAR(MAX) NULL -- ARRAY
,  [elpetro_mass] FLOAT NULL -- double precision
,  [elpetro_mtol] NVARCHAR(MAX) NULL -- ARRAY
,  [elpetro_b300] FLOAT NULL -- double precision
,  [elpetro_b1000] FLOAT NULL -- double precision
,  [elpetro_mets] FLOAT NULL -- double precision
,  [in_dr7_lss] FLOAT NULL -- double precision
,  [catalogue_pk] INTEGER NULL -- integer
)
with (location='manga.mangasampledb.[v_nsa]',data_source=pg64)

GO

