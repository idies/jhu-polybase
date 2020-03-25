
CREATE VIEW mangadapdb.v_modelspaxel as
SELECT pk
,      array_to_json(flux) as flux
,      array_to_json(ivar) as ivar
,      array_to_json(mask) as mask
,      array_to_json(model) as model
,      array_to_json(emline) as emline
,      array_to_json(emline_base) as emline_base
,      array_to_json(emline_mask) as emline_mask
,      x
,      y
,      modelcube_pk
,      binid_binned_spectra
,      binid_stellar_continua
,      binid_em_line_moments
,      binid_em_line_models
,      binid_spectral_indices
,      array_to_json(model_mask) as model_mask
,      array_to_json(stellar) as stellar
,      array_to_json(stellar_mask) as stellar_mask
  FROM mangadapdb.modelspaxel;

CREATE VIEW mangadapdb.v_redcorr as
SELECT pk
,      array_to_json(value) as value
,      modelcube_pk
  FROM mangadapdb.redcorr;

CREATE VIEW mangadatadb.v_cube as
SELECT pk
,      plate
,      mangaid
,      designid
,      pipeline_info_pk
,      wavelength_pk
,      ifudesign_pk
,      array_to_json(specres) as specres
,      xfocal
,      yfocal
,      ra
,      dec
,      manga_target_pk
,      cube_shape_pk
,      array_to_json(specresd) as specresd
,      array_to_json(prespecres) as prespecres
,      array_to_json(prespecresd) as prespecresd
  FROM mangadatadb.cube;

CREATE VIEW mangadatadb.v_cube_shape as
SELECT pk
,      size
,      total
,      array_to_json(indices) as indices
  FROM mangadatadb.cube_shape;

CREATE VIEW mangadatadb.v_rssfiber as
SELECT pk
,      array_to_json(flux) as flux
,      array_to_json(ivar) as ivar
,      array_to_json(mask) as mask
,      array_to_json(xpos) as xpos
,      array_to_json(ypos) as ypos
,      exposure_no
,      mjd
,      exposure_pk
,      cube_pk
,      fibers_pk
,      array_to_json(disp) as disp
,      array_to_json(predisp) as predisp
  FROM mangadatadb.rssfiber;

CREATE VIEW mangadatadb.v_rssfiber_orig as
SELECT pk
,      array_to_json(flux) as flux
,      array_to_json(ivar) as ivar
,      array_to_json(mask) as mask
,      array_to_json(xpos) as xpos
,      array_to_json(ypos) as ypos
,      exposure_no
,      mjd
,      exposure_pk
,      cube_pk
,      fibers_pk
,      array_to_json(disp) as disp
,      array_to_json(predisp) as predisp
  FROM mangadatadb.rssfiber_orig;

CREATE VIEW mangadatadb.v_spaxel as
SELECT pk
,      array_to_json(flux) as flux
,      array_to_json(ivar) as ivar
,      array_to_json(mask) as mask
,      cube_pk
,      x
,      y
,      array_to_json(disp) as disp
,      array_to_json(predisp) as predisp
  FROM mangadatadb.spaxel;

CREATE VIEW mangadatadb.v_test_spaxel as
SELECT pk
,      array_to_json(flux) as flux
,      array_to_json(ivar) as ivar
,      array_to_json(mask) as mask
,      cube_pk
,      flux_json
  FROM mangadatadb.test_spaxel;

CREATE VIEW mangadatadb.v_wavelength as
SELECT pk
,      array_to_json(wavelength) as wavelength
,      bintype
  FROM mangadatadb.wavelength;

CREATE VIEW mangasampledb.v_nsa as
SELECT pk
,      iauname
,      subdir
,      ra
,      dec
,      isdss
,      ined
,      isixdf
,      ialfalfa
,      izcat
,      itwodf
,      mag
,      z
,      zsrc
,      size
,      run
,      camcol
,      field
,      rerun
,      xpos
,      ypos
,      nsaid
,      zdist
,      array_to_json(sersic_nmgy) as sersic_nmgy
,      array_to_json(sersic_nmgy_ivar) as sersic_nmgy_ivar
,      sersic_ok
,      array_to_json(sersic_rnmgy) as sersic_rnmgy
,      array_to_json(sersic_absmag) as sersic_absmag
,      array_to_json(sersic_amivar) as sersic_amivar
,      array_to_json(extinction) as extinction
,      array_to_json(sersic_kcorrect) as sersic_kcorrect
,      array_to_json(sersic_kcoeff) as sersic_kcoeff
,      array_to_json(sersic_mtol) as sersic_mtol
,      sersic_b300
,      sersic_b1000
,      sersic_mets
,      sersic_mass
,      xcen
,      ycen
,      array_to_json(nprof) as nprof
,      array_to_json(profmean) as profmean
,      array_to_json(profmean_ivar) as profmean_ivar
,      array_to_json(qstokes) as qstokes
,      array_to_json(ustokes) as ustokes
,      array_to_json(bastokes) as bastokes
,      array_to_json(phistokes) as phistokes
,      array_to_json(petro_flux) as petro_flux
,      array_to_json(petro_flux_ivar) as petro_flux_ivar
,      array_to_json(fiber_flux) as fiber_flux
,      array_to_json(fiber_flux_ivar) as fiber_flux_ivar
,      petro_ba50
,      petro_phi50
,      petro_ba90
,      petro_phi90
,      array_to_json(sersic_flux) as sersic_flux
,      array_to_json(sersic_flux_ivar) as sersic_flux_ivar
,      sersic_n
,      sersic_ba
,      sersic_phi
,      array_to_json(asymmetry) as asymmetry
,      array_to_json(clumpy) as clumpy
,      array_to_json(dflags) as dflags
,      aid
,      pid
,      dversion
,      array_to_json(proftheta) as proftheta
,      petro_theta
,      petro_th50
,      petro_th90
,      sersic_th50
,      plate
,      fiberid
,      mjd
,      racat
,      deccat
,      zsdssline
,      survey
,      programname
,      platequality
,      tile
,      plug_ra
,      plug_dec
,      elpetro_ba
,      elpetro_phi
,      elpetro_flux_r
,      elpetro_flux_ivar_r
,      elpetro_theta_r
,      elpetro_th50_r
,      elpetro_th90_r
,      elpetro_theta
,      array_to_json(elpetro_flux) as elpetro_flux
,      array_to_json(elpetro_flux_ivar) as elpetro_flux_ivar
,      array_to_json(elpetro_th50) as elpetro_th50
,      array_to_json(elpetro_th90) as elpetro_th90
,      elpetro_apcorr_r
,      array_to_json(elpetro_apcorr) as elpetro_apcorr
,      array_to_json(elpetro_apcorr_self) as elpetro_apcorr_self
,      array_to_json(elpetro_nmgy) as elpetro_nmgy
,      array_to_json(elpetro_nmgy_ivar) as elpetro_nmgy_ivar
,      elpetro_ok
,      array_to_json(elpetro_rnmgy) as elpetro_rnmgy
,      array_to_json(elpetro_absmag) as elpetro_absmag
,      array_to_json(elpetro_amivar) as elpetro_amivar
,      array_to_json(elpetro_kcorrect) as elpetro_kcorrect
,      array_to_json(elpetro_kcoeff) as elpetro_kcoeff
,      elpetro_mass
,      array_to_json(elpetro_mtol) as elpetro_mtol
,      elpetro_b300
,      elpetro_b1000
,      elpetro_mets
,      in_dr7_lss
,      catalogue_pk
  FROM mangasampledb.nsa;
