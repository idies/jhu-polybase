if OBJECT_ID('authorities') IS NOT NULL DROP EXTERNAL TABLE  authorities;
if OBJECT_ID('cancer_study') IS NOT NULL DROP EXTERNAL TABLE  cancer_study;
if OBJECT_ID('cancer_study_tags') IS NOT NULL DROP EXTERNAL TABLE  cancer_study_tags;
if OBJECT_ID('clinical_attribute_meta') IS NOT NULL DROP EXTERNAL TABLE  clinical_attribute_meta;
if OBJECT_ID('clinical_event') IS NOT NULL DROP EXTERNAL TABLE  clinical_event;
if OBJECT_ID('clinical_event_data') IS NOT NULL DROP EXTERNAL TABLE  clinical_event_data;
if OBJECT_ID('clinical_patient') IS NOT NULL DROP EXTERNAL TABLE  clinical_patient;
if OBJECT_ID('clinical_sample') IS NOT NULL DROP EXTERNAL TABLE  clinical_sample;
if OBJECT_ID('cna_event') IS NOT NULL DROP EXTERNAL TABLE  cna_event;
if OBJECT_ID('copy_number_seg') IS NOT NULL DROP EXTERNAL TABLE  copy_number_seg;
if OBJECT_ID('copy_number_seg_file') IS NOT NULL DROP EXTERNAL TABLE  copy_number_seg_file;
if OBJECT_ID('cosmic_mutation') IS NOT NULL DROP EXTERNAL TABLE  cosmic_mutation;
if OBJECT_ID('data_access_tokens') IS NOT NULL DROP EXTERNAL TABLE  data_access_tokens;
if OBJECT_ID('drug') IS NOT NULL DROP EXTERNAL TABLE  drug;
if OBJECT_ID('drug_interaction') IS NOT NULL DROP EXTERNAL TABLE  drug_interaction;
if OBJECT_ID('fraction_genome_altered') IS NOT NULL DROP EXTERNAL TABLE  fraction_genome_altered;
if OBJECT_ID('gene') IS NOT NULL DROP EXTERNAL TABLE  gene;
if OBJECT_ID('gene_alias') IS NOT NULL DROP EXTERNAL TABLE  gene_alias;
if OBJECT_ID('gene_panel') IS NOT NULL DROP EXTERNAL TABLE  gene_panel;
if OBJECT_ID('gene_panel_list') IS NOT NULL DROP EXTERNAL TABLE  gene_panel_list;
if OBJECT_ID('geneset') IS NOT NULL DROP EXTERNAL TABLE  geneset;
if OBJECT_ID('geneset_gene') IS NOT NULL DROP EXTERNAL TABLE  geneset_gene;
if OBJECT_ID('geneset_hierarchy_leaf') IS NOT NULL DROP EXTERNAL TABLE  geneset_hierarchy_leaf;
if OBJECT_ID('geneset_hierarchy_node') IS NOT NULL DROP EXTERNAL TABLE  geneset_hierarchy_node;
if OBJECT_ID('genetic_alteration') IS NOT NULL DROP EXTERNAL TABLE  genetic_alteration;
if OBJECT_ID('genetic_entity') IS NOT NULL DROP EXTERNAL TABLE  genetic_entity;
if OBJECT_ID('genetic_profile') IS NOT NULL DROP EXTERNAL TABLE  genetic_profile;
if OBJECT_ID('genetic_profile_link') IS NOT NULL DROP EXTERNAL TABLE  genetic_profile_link;
if OBJECT_ID('genetic_profile_samples') IS NOT NULL DROP EXTERNAL TABLE  genetic_profile_samples;
if OBJECT_ID('gistic') IS NOT NULL DROP EXTERNAL TABLE  gistic;
if OBJECT_ID('gistic_to_gene') IS NOT NULL DROP EXTERNAL TABLE  gistic_to_gene;
if OBJECT_ID('info') IS NOT NULL DROP EXTERNAL TABLE  info;
if OBJECT_ID('interaction') IS NOT NULL DROP EXTERNAL TABLE  interaction;
if OBJECT_ID('mut_sig') IS NOT NULL DROP EXTERNAL TABLE  mut_sig;
if OBJECT_ID('mutation') IS NOT NULL DROP EXTERNAL TABLE  mutation;
if OBJECT_ID('mutation_count') IS NOT NULL DROP EXTERNAL TABLE  mutation_count;
if OBJECT_ID('mutation_count_by_keyword') IS NOT NULL DROP EXTERNAL TABLE  mutation_count_by_keyword;
if OBJECT_ID('mutation_event') IS NOT NULL DROP EXTERNAL TABLE  mutation_event;
if OBJECT_ID('patient') IS NOT NULL DROP EXTERNAL TABLE  patient;
if OBJECT_ID('pdb_uniprot_alignment') IS NOT NULL DROP EXTERNAL TABLE  pdb_uniprot_alignment;
if OBJECT_ID('pdb_uniprot_residue_mapping') IS NOT NULL DROP EXTERNAL TABLE  pdb_uniprot_residue_mapping;
if OBJECT_ID('pfam_graphics') IS NOT NULL DROP EXTERNAL TABLE  pfam_graphics;
if OBJECT_ID('protein_array_cancer_study') IS NOT NULL DROP EXTERNAL TABLE  protein_array_cancer_study;
if OBJECT_ID('protein_array_data') IS NOT NULL DROP EXTERNAL TABLE  protein_array_data;
if OBJECT_ID('protein_array_info') IS NOT NULL DROP EXTERNAL TABLE  protein_array_info;
if OBJECT_ID('protein_array_target') IS NOT NULL DROP EXTERNAL TABLE  protein_array_target;
if OBJECT_ID('reference_genome') IS NOT NULL DROP EXTERNAL TABLE  reference_genome;
if OBJECT_ID('reference_genome_gene') IS NOT NULL DROP EXTERNAL TABLE  reference_genome_gene;
if OBJECT_ID('sample') IS NOT NULL DROP EXTERNAL TABLE  sample;
if OBJECT_ID('sample_cna_event') IS NOT NULL DROP EXTERNAL TABLE  sample_cna_event;
if OBJECT_ID('sample_list') IS NOT NULL DROP EXTERNAL TABLE  sample_list;
if OBJECT_ID('sample_list_list') IS NOT NULL DROP EXTERNAL TABLE  sample_list_list;
if OBJECT_ID('sample_profile') IS NOT NULL DROP EXTERNAL TABLE  sample_profile;
if OBJECT_ID('sanger_cancer_census') IS NOT NULL DROP EXTERNAL TABLE  sanger_cancer_census;
if OBJECT_ID('structural_variant') IS NOT NULL DROP EXTERNAL TABLE  structural_variant;
if OBJECT_ID('text_cache') IS NOT NULL DROP EXTERNAL TABLE  text_cache;
if OBJECT_ID('type_of_cancer') IS NOT NULL DROP EXTERNAL TABLE  type_of_cancer;
if OBJECT_ID('uniprot_id_mapping') IS NOT NULL DROP EXTERNAL TABLE  uniprot_id_mapping;
if OBJECT_ID('users') IS NOT NULL DROP EXTERNAL TABLE  users;
CREATE EXTERNAL TABLE [authorities] (
  [EMAIL] NVARCHAR(128) NOT NULL
,  [AUTHORITY] NVARCHAR(255) NOT NULL
)with(location='cbioportal.authorities',data_source=mydsp016);

CREATE EXTERNAL TABLE [cancer_study] (
  [CANCER_STUDY_ID] INTEGER NOT NULL
,  [CANCER_STUDY_IDENTIFIER] NVARCHAR(255)
,  [TYPE_OF_CANCER_ID] NVARCHAR(63) NOT NULL
,  [NAME] NVARCHAR(255) NOT NULL
,  [SHORT_NAME] NVARCHAR(64) NOT NULL
,  [DESCRIPTION] NVARCHAR(1024) NOT NULL
,  [PUBLIC] TINYINT NOT NULL
,  [PMID] NVARCHAR(1024)
,  [CITATION] NVARCHAR(200)
,  [GROUPS] NVARCHAR(200)
,  [STATUS] INTEGER
,  [IMPORT_DATE] DATETIME
)with(location='cbioportal.cancer_study',data_source=mydsp016);

CREATE EXTERNAL TABLE [cancer_study_tags] (
  [CANCER_STUDY_ID] INTEGER NOT NULL
,  [TAGS] NVARCHAR(4000) NOT NULL
)with(location='cbioportal.cancer_study_tags',data_source=mydsp016);

CREATE EXTERNAL TABLE [clinical_attribute_meta] (
  [ATTR_ID] NVARCHAR(255) NOT NULL
,  [DISPLAY_NAME] NVARCHAR(255) NOT NULL
,  [DESCRIPTION] NVARCHAR(2048) NOT NULL
,  [DATATYPE] NVARCHAR(255) NOT NULL
,  [PATIENT_ATTRIBUTE] TINYINT NOT NULL
,  [PRIORITY] NVARCHAR(255) NOT NULL
,  [CANCER_STUDY_ID] INTEGER NOT NULL
)with(location='cbioportal.clinical_attribute_meta',data_source=mydsp016);

CREATE EXTERNAL TABLE [clinical_event] (
  [CLINICAL_EVENT_ID] INTEGER NOT NULL
,  [PATIENT_ID] INTEGER NOT NULL
,  [START_DATE] INTEGER NOT NULL
,  [STOP_DATE] INTEGER
,  [EVENT_TYPE] NVARCHAR(20) NOT NULL
)with(location='cbioportal.clinical_event',data_source=mydsp016);

CREATE EXTERNAL TABLE [clinical_event_data] (
  [CLINICAL_EVENT_ID] INTEGER NOT NULL
,  [KEY] NVARCHAR(255) NOT NULL
,  [VALUE] NVARCHAR(5000) NOT NULL
)with(location='cbioportal.clinical_event_data',data_source=mydsp016);

CREATE EXTERNAL TABLE [clinical_patient] (
  [INTERNAL_ID] INTEGER NOT NULL
,  [ATTR_ID] NVARCHAR(255) NOT NULL
,  [ATTR_VALUE] NVARCHAR(255) NOT NULL
)with(location='cbioportal.clinical_patient',data_source=mydsp016);

CREATE EXTERNAL TABLE [clinical_sample] (
  [INTERNAL_ID] INTEGER NOT NULL
,  [ATTR_ID] NVARCHAR(255) NOT NULL
,  [ATTR_VALUE] NVARCHAR(255) NOT NULL
)with(location='cbioportal.clinical_sample',data_source=mydsp016);

CREATE EXTERNAL TABLE [cna_event] (
  [CNA_EVENT_ID] INTEGER NOT NULL
,  [ENTREZ_GENE_ID] INTEGER NOT NULL
,  [ALTERATION] TINYINT NOT NULL
)with(location='cbioportal.cna_event',data_source=mydsp016);

CREATE EXTERNAL TABLE [copy_number_seg] (
  [SEG_ID] INTEGER NOT NULL
,  [CANCER_STUDY_ID] INTEGER NOT NULL
,  [SAMPLE_ID] INTEGER NOT NULL
,  [CHR] NVARCHAR(5) NOT NULL
,  [START] INTEGER NOT NULL
,  [END] INTEGER NOT NULL
,  [NUM_PROBES] INTEGER NOT NULL
,  [SEGMENT_MEAN] FLOAT NOT NULL
)with(location='cbioportal.copy_number_seg',data_source=mydsp016);

CREATE EXTERNAL TABLE [copy_number_seg_file] (
  [SEG_FILE_ID] INTEGER NOT NULL
,  [CANCER_STUDY_ID] INTEGER NOT NULL
,  [REFERENCE_GENOME_ID] NVARCHAR(10) NOT NULL
,  [DESCRIPTION] NVARCHAR(255) NOT NULL
,  [FILENAME] NVARCHAR(255) NOT NULL
)with(location='cbioportal.copy_number_seg_file',data_source=mydsp016);

CREATE EXTERNAL TABLE [cosmic_mutation] (
  [COSMIC_MUTATION_ID] NVARCHAR(30) NOT NULL
,  [CHR] NVARCHAR(5)
,  [START_POSITION] BIGINT
,  [REFERENCE_ALLELE] NVARCHAR(255)
,  [TUMOR_SEQ_ALLELE] NVARCHAR(255)
,  [STRAND] NVARCHAR(2)
,  [CODON_CHANGE] NVARCHAR(255)
,  [ENTREZ_GENE_ID] INTEGER NOT NULL
,  [PROTEIN_CHANGE] NVARCHAR(255) NOT NULL
,  [COUNT] INTEGER NOT NULL
,  [KEYWORD] NVARCHAR(50)
)with(location='cbioportal.cosmic_mutation',data_source=mydsp016);

CREATE EXTERNAL TABLE [data_access_tokens] (
  [TOKEN] NVARCHAR(50) NOT NULL
,  [USERNAME] NVARCHAR(255) NOT NULL
,  [EXPIRATION] DATETIME NOT NULL
,  [CREATION] DATETIME NOT NULL
)with(location='cbioportal.data_access_tokens',data_source=mydsp016);

CREATE EXTERNAL TABLE [drug] (
  [DRUG_ID] NCHAR(30) NOT NULL
,  [DRUG_RESOURCE] NVARCHAR(255) NOT NULL
,  [DRUG_NAME] NVARCHAR(255) NOT NULL
,  [DRUG_SYNONYMS] NVARCHAR(4096)
,  [DRUG_DESCRIPTION] NVARCHAR(4096)
,  [DRUG_XREF] NVARCHAR(4096)
,  [DRUG_ATC_CODE] NVARCHAR(1024)
,  [DRUG_APPROVED] INTEGER
,  [DRUG_CANCERDRUG] INTEGER
,  [DRUG_NUTRACEUTICAL] INTEGER
,  [DRUG_NUMOFTRIALS] INTEGER
)with(location='cbioportal.drug',data_source=mydsp016);

CREATE EXTERNAL TABLE [drug_interaction] (
  [DRUG] NCHAR(30) NOT NULL
,  [TARGET] BIGINT NOT NULL
,  [INTERACTION_TYPE] NCHAR(50) NOT NULL
,  [DATA_SOURCE] NVARCHAR(256) NOT NULL
,  [EXPERIMENT_TYPES] NVARCHAR(1024)
,  [PMIDS] NVARCHAR(1024)
)with(location='cbioportal.drug_interaction',data_source=mydsp016);

CREATE EXTERNAL TABLE [fraction_genome_altered] (
  [CANCER_STUDY_ID] INTEGER NOT NULL
,  [SAMPLE_ID] INTEGER NOT NULL
,  [VALUE] FLOAT NOT NULL
)with(location='cbioportal.fraction_genome_altered',data_source=mydsp016);

CREATE EXTERNAL TABLE [gene] (
  [ENTREZ_GENE_ID] INTEGER NOT NULL
,  [HUGO_GENE_SYMBOL] NVARCHAR(255) NOT NULL
,  [GENETIC_ENTITY_ID] INTEGER NOT NULL
,  [TYPE] NVARCHAR(50)
,  [CYTOBAND] NVARCHAR(50)
,  [LENGTH] INTEGER
)with(location='cbioportal.gene',data_source=mydsp016);

CREATE EXTERNAL TABLE [gene_alias] (
  [ENTREZ_GENE_ID] INTEGER NOT NULL
,  [GENE_ALIAS] NVARCHAR(255) NOT NULL
)with(location='cbioportal.gene_alias',data_source=mydsp016);

CREATE EXTERNAL TABLE [gene_panel] (
  [INTERNAL_ID] INTEGER NOT NULL
,  [STABLE_ID] NVARCHAR(255) NOT NULL
,  [DESCRIPTION] NVARCHAR(4000)
)with(location='cbioportal.gene_panel',data_source=mydsp016);

CREATE EXTERNAL TABLE [gene_panel_list] (
  [INTERNAL_ID] INTEGER NOT NULL
,  [GENE_ID] INTEGER NOT NULL
)with(location='cbioportal.gene_panel_list',data_source=mydsp016);

CREATE EXTERNAL TABLE [geneset] (
  [ID] INTEGER NOT NULL
,  [GENETIC_ENTITY_ID] INTEGER NOT NULL
,  [EXTERNAL_ID] NVARCHAR(200) NOT NULL
,  [NAME] NVARCHAR(200) NOT NULL
,  [DESCRIPTION] NVARCHAR(300) NOT NULL
,  [REF_LINK] NVARCHAR(4000)
)with(location='cbioportal.geneset',data_source=mydsp016);

CREATE EXTERNAL TABLE [geneset_gene] (
  [GENESET_ID] INTEGER NOT NULL
,  [ENTREZ_GENE_ID] INTEGER NOT NULL
)with(location='cbioportal.geneset_gene',data_source=mydsp016);

CREATE EXTERNAL TABLE [geneset_hierarchy_leaf] (
  [NODE_ID] BIGINT NOT NULL
,  [GENESET_ID] INTEGER NOT NULL
)with(location='cbioportal.geneset_hierarchy_leaf',data_source=mydsp016);

CREATE EXTERNAL TABLE [geneset_hierarchy_node] (
  [NODE_ID] BIGINT NOT NULL
,  [NODE_NAME] NVARCHAR(200) NOT NULL
,  [PARENT_ID] BIGINT
)with(location='cbioportal.geneset_hierarchy_node',data_source=mydsp016);

CREATE EXTERNAL TABLE [genetic_alteration] (
  [GENETIC_PROFILE_ID] INTEGER NOT NULL
,  [GENETIC_ENTITY_ID] INTEGER NOT NULL
,  [VALUES] NVARCHAR(4000) NOT NULL
)with(location='cbioportal.genetic_alteration',data_source=mydsp016);

CREATE EXTERNAL TABLE [genetic_entity] (
  [ID] INTEGER NOT NULL
,  [ENTITY_TYPE] NVARCHAR(45) NOT NULL
)with(location='cbioportal.genetic_entity',data_source=mydsp016);

CREATE EXTERNAL TABLE [genetic_profile] (
  [GENETIC_PROFILE_ID] INTEGER NOT NULL
,  [STABLE_ID] NVARCHAR(255) NOT NULL
,  [CANCER_STUDY_ID] INTEGER NOT NULL
,  [GENETIC_ALTERATION_TYPE] NVARCHAR(255) NOT NULL
,  [DATATYPE] NVARCHAR(255) NOT NULL
,  [NAME] NVARCHAR(255) NOT NULL
,  [DESCRIPTION] NVARCHAR(4000)
,  [SHOW_PROFILE_IN_ANALYSIS_TAB] TINYINT NOT NULL
)with(location='cbioportal.genetic_profile',data_source=mydsp016);

CREATE EXTERNAL TABLE [genetic_profile_link] (
  [REFERRING_GENETIC_PROFILE_ID] INTEGER NOT NULL
,  [REFERRED_GENETIC_PROFILE_ID] INTEGER NOT NULL
,  [REFERENCE_TYPE] NVARCHAR(45)
)with(location='cbioportal.genetic_profile_link',data_source=mydsp016);

CREATE EXTERNAL TABLE [genetic_profile_samples] (
  [GENETIC_PROFILE_ID] INTEGER NOT NULL
,  [ORDERED_SAMPLE_LIST] NVARCHAR(4000) NOT NULL
)with(location='cbioportal.genetic_profile_samples',data_source=mydsp016);

CREATE EXTERNAL TABLE [gistic] (
  [GISTIC_ROI_ID] BIGINT NOT NULL
,  [CANCER_STUDY_ID] INTEGER NOT NULL
,  [CHROMOSOME] INTEGER NOT NULL
,  [CYTOBAND] NVARCHAR(255) NOT NULL
,  [WIDE_PEAK_START] INTEGER NOT NULL
,  [WIDE_PEAK_END] INTEGER NOT NULL
,  [Q_VALUE] FLOAT NOT NULL
,  [AMP] TINYINT NOT NULL
)with(location='cbioportal.gistic',data_source=mydsp016);

CREATE EXTERNAL TABLE [gistic_to_gene] (
  [GISTIC_ROI_ID] BIGINT NOT NULL
,  [ENTREZ_GENE_ID] INTEGER NOT NULL
)with(location='cbioportal.gistic_to_gene',data_source=mydsp016);

CREATE EXTERNAL TABLE [info] (
  [DB_SCHEMA_VERSION] NVARCHAR(24)
,  [GENESET_VERSION] NVARCHAR(24)
)with(location='cbioportal.info',data_source=mydsp016);

CREATE EXTERNAL TABLE [interaction] (
  [GENE_A] BIGINT NOT NULL
,  [GENE_B] BIGINT NOT NULL
,  [INTERACTION_TYPE] NVARCHAR(256) NOT NULL
,  [DATA_SOURCE] NVARCHAR(256) NOT NULL
,  [EXPERIMENT_TYPES] NVARCHAR(1024) NOT NULL
,  [PMIDS] NVARCHAR(1024) NOT NULL
)with(location='cbioportal.interaction',data_source=mydsp016);

CREATE EXTERNAL TABLE [mut_sig] (
  [CANCER_STUDY_ID] INTEGER NOT NULL
,  [ENTREZ_GENE_ID] INTEGER NOT NULL
,  [RANK] INTEGER NOT NULL
,  [NumBasesCovered] INTEGER NOT NULL
,  [NumMutations] INTEGER NOT NULL
,  [P_VALUE] REAL NOT NULL
,  [Q_VALUE] REAL NOT NULL
)with(location='cbioportal.mut_sig',data_source=mydsp016);

CREATE EXTERNAL TABLE [mutation] (
  [MUTATION_EVENT_ID] INTEGER NOT NULL
,  [GENETIC_PROFILE_ID] INTEGER NOT NULL
,  [SAMPLE_ID] INTEGER NOT NULL
,  [ENTREZ_GENE_ID] INTEGER NOT NULL
,  [CENTER] NVARCHAR(100)
,  [SEQUENCER] NVARCHAR(255)
,  [MUTATION_STATUS] NVARCHAR(25)
,  [VALIDATION_STATUS] NVARCHAR(25)
,  [TUMOR_SEQ_ALLELE1] NVARCHAR(255)
,  [TUMOR_SEQ_ALLELE2] NVARCHAR(255)
,  [MATCHED_NORM_SAMPLE_BARCODE] NVARCHAR(255)
,  [MATCH_NORM_SEQ_ALLELE1] NVARCHAR(255)
,  [MATCH_NORM_SEQ_ALLELE2] NVARCHAR(255)
,  [TUMOR_VALIDATION_ALLELE1] NVARCHAR(255)
,  [TUMOR_VALIDATION_ALLELE2] NVARCHAR(255)
,  [MATCH_NORM_VALIDATION_ALLELE1] NVARCHAR(255)
,  [MATCH_NORM_VALIDATION_ALLELE2] NVARCHAR(255)
,  [VERIFICATION_STATUS] NVARCHAR(10)
,  [SEQUENCING_PHASE] NVARCHAR(100)
,  [SEQUENCE_SOURCE] NVARCHAR(255) NOT NULL
,  [VALIDATION_METHOD] NVARCHAR(255)
,  [SCORE] NVARCHAR(100)
,  [BAM_FILE] NVARCHAR(255)
,  [TUMOR_ALT_COUNT] INTEGER
,  [TUMOR_REF_COUNT] INTEGER
,  [NORMAL_ALT_COUNT] INTEGER
,  [NORMAL_REF_COUNT] INTEGER
,  [AMINO_ACID_CHANGE] NVARCHAR(255)
,  [DRIVER_FILTER] NVARCHAR(20)
,  [DRIVER_FILTER_ANNOTATION] NVARCHAR(80)
,  [DRIVER_TIERS_FILTER] NVARCHAR(50)
,  [DRIVER_TIERS_FILTER_ANNOTATION] NVARCHAR(80)
)with(location='cbioportal.mutation',data_source=mydsp016);

CREATE EXTERNAL TABLE [mutation_count] (
  [GENETIC_PROFILE_ID] INTEGER NOT NULL
,  [SAMPLE_ID] INTEGER NOT NULL
,  [MUTATION_COUNT] INTEGER NOT NULL
)with(location='cbioportal.mutation_count',data_source=mydsp016);

CREATE EXTERNAL TABLE [mutation_count_by_keyword] (
  [GENETIC_PROFILE_ID] INTEGER NOT NULL
,  [KEYWORD] NVARCHAR(255)
,  [ENTREZ_GENE_ID] INTEGER NOT NULL
,  [KEYWORD_COUNT] INTEGER NOT NULL
,  [GENE_COUNT] INTEGER NOT NULL
)with(location='cbioportal.mutation_count_by_keyword',data_source=mydsp016);

CREATE EXTERNAL TABLE [mutation_event] (
  [MUTATION_EVENT_ID] INTEGER NOT NULL
,  [ENTREZ_GENE_ID] INTEGER NOT NULL
,  [CHR] NVARCHAR(5)
,  [START_POSITION] BIGINT
,  [END_POSITION] BIGINT
,  [REFERENCE_ALLELE] NVARCHAR(255)
,  [TUMOR_SEQ_ALLELE] NVARCHAR(255)
,  [PROTEIN_CHANGE] NVARCHAR(255)
,  [MUTATION_TYPE] NVARCHAR(255)
,  [FUNCTIONAL_IMPACT_SCORE] NVARCHAR(50)
,  [FIS_VALUE] REAL
,  [LINK_XVAR] NVARCHAR(500)
,  [LINK_PDB] NVARCHAR(500)
,  [LINK_MSA] NVARCHAR(500)
,  [NCBI_BUILD] NVARCHAR(10)
,  [STRAND] NVARCHAR(2)
,  [VARIANT_TYPE] NVARCHAR(15)
,  [DB_SNP_RS] NVARCHAR(25)
,  [DB_SNP_VAL_STATUS] NVARCHAR(255)
,  [ONCOTATOR_DBSNP_RS] NVARCHAR(255)
,  [ONCOTATOR_REFSEQ_MRNA_ID] NVARCHAR(64)
,  [ONCOTATOR_CODON_CHANGE] NVARCHAR(255)
,  [ONCOTATOR_UNIPROT_ENTRY_NAME] NVARCHAR(64)
,  [ONCOTATOR_UNIPROT_ACCESSION] NVARCHAR(64)
,  [ONCOTATOR_PROTEIN_POS_START] INTEGER
,  [ONCOTATOR_PROTEIN_POS_END] INTEGER
,  [CANONICAL_TRANSCRIPT] TINYINT
,  [KEYWORD] NVARCHAR(50)
)with(location='cbioportal.mutation_event',data_source=mydsp016);

CREATE EXTERNAL TABLE [patient] (
  [INTERNAL_ID] INTEGER NOT NULL
,  [STABLE_ID] NVARCHAR(50) NOT NULL
,  [CANCER_STUDY_ID] INTEGER NOT NULL
)with(location='cbioportal.patient',data_source=mydsp016);

CREATE EXTERNAL TABLE [pdb_uniprot_alignment] (
  [ALIGNMENT_ID] INTEGER NOT NULL
,  [PDB_ID] NCHAR(4) NOT NULL
,  [CHAIN] NCHAR(1) NOT NULL
,  [UNIPROT_ID] NVARCHAR(50) NOT NULL
,  [PDB_FROM] NVARCHAR(10) NOT NULL
,  [PDB_TO] NVARCHAR(10) NOT NULL
,  [UNIPROT_FROM] INTEGER NOT NULL
,  [UNIPROT_TO] INTEGER NOT NULL
,  [EVALUE] REAL
,  [IDENTITY] REAL
,  [IDENTP] REAL
,  [UNIPROT_ALIGN] NVARCHAR(4000)
,  [PDB_ALIGN] NVARCHAR(4000)
,  [MIDLINE_ALIGN] NVARCHAR(4000)
)with(location='cbioportal.pdb_uniprot_alignment',data_source=mydsp016);

CREATE EXTERNAL TABLE [pdb_uniprot_residue_mapping] (
  [ALIGNMENT_ID] INTEGER NOT NULL
,  [PDB_POSITION] INTEGER NOT NULL
,  [PDB_INSERTION_CODE] NCHAR(1)
,  [UNIPROT_POSITION] INTEGER NOT NULL
,  [MATCH] NCHAR(1)
)with(location='cbioportal.pdb_uniprot_residue_mapping',data_source=mydsp016);

CREATE EXTERNAL TABLE [pfam_graphics] (
  [UNIPROT_ACC] NVARCHAR(255) NOT NULL
,  [JSON_DATA] NVARCHAR(4000) NOT NULL
)with(location='cbioportal.pfam_graphics',data_source=mydsp016);

CREATE EXTERNAL TABLE [protein_array_cancer_study] (
  [PROTEIN_ARRAY_ID] NVARCHAR(50) NOT NULL
,  [CANCER_STUDY_ID] INTEGER NOT NULL
)with(location='cbioportal.protein_array_cancer_study',data_source=mydsp016);

CREATE EXTERNAL TABLE [protein_array_data] (
  [PROTEIN_ARRAY_ID] NVARCHAR(50) NOT NULL
,  [CANCER_STUDY_ID] INTEGER NOT NULL
,  [SAMPLE_ID] INTEGER NOT NULL
,  [ABUNDANCE] FLOAT NOT NULL
)with(location='cbioportal.protein_array_data',data_source=mydsp016);

CREATE EXTERNAL TABLE [protein_array_info] (
  [PROTEIN_ARRAY_ID] NVARCHAR(50) NOT NULL
,  [TYPE] NVARCHAR(50) NOT NULL
,  [GENE_SYMBOL] NVARCHAR(50) NOT NULL
,  [TARGET_RESIDUE] NVARCHAR(20)
)with(location='cbioportal.protein_array_info',data_source=mydsp016);

CREATE EXTERNAL TABLE [protein_array_target] (
  [PROTEIN_ARRAY_ID] NVARCHAR(50) NOT NULL
,  [ENTREZ_GENE_ID] INTEGER NOT NULL
)with(location='cbioportal.protein_array_target',data_source=mydsp016);

CREATE EXTERNAL TABLE [reference_genome] (
  [REFERENCE_GENOME_ID] INTEGER NOT NULL
,  [SPECIES] NVARCHAR(64) NOT NULL
,  [NAME] NVARCHAR(64) NOT NULL
,  [BUILD_NAME] NVARCHAR(64) NOT NULL
,  [GENOME_SIZE] BIGINT
,  [URL] NVARCHAR(256) NOT NULL
,  [RELEASE_DATE] DATETIME
)with(location='cbioportal.reference_genome',data_source=mydsp016);

CREATE EXTERNAL TABLE [reference_genome_gene] (
  [ENTREZ_GENE_ID] INTEGER NOT NULL
,  [REFERENCE_GENOME_ID] INTEGER NOT NULL
,  [CHR] NVARCHAR(4)
,  [CYTOBAND] NVARCHAR(64)
,  [EXONIC_LENGTH] INTEGER
,  [START] BIGINT
,  [END] BIGINT
,  [ENSEMBL_GENE_ID] NVARCHAR(64)
)with(location='cbioportal.reference_genome_gene',data_source=mydsp016);

CREATE EXTERNAL TABLE [sample] (
  [INTERNAL_ID] INTEGER NOT NULL
,  [STABLE_ID] NVARCHAR(50) NOT NULL
,  [SAMPLE_TYPE] NVARCHAR(255) NOT NULL
,  [PATIENT_ID] INTEGER NOT NULL
,  [TYPE_OF_CANCER_ID] NVARCHAR(63) NOT NULL
)with(location='cbioportal.sample',data_source=mydsp016);

CREATE EXTERNAL TABLE [sample_cna_event] (
  [CNA_EVENT_ID] INTEGER NOT NULL
,  [SAMPLE_ID] INTEGER NOT NULL
,  [GENETIC_PROFILE_ID] INTEGER NOT NULL
)with(location='cbioportal.sample_cna_event',data_source=mydsp016);

CREATE EXTERNAL TABLE [sample_list] (
  [LIST_ID] INTEGER NOT NULL
,  [STABLE_ID] NVARCHAR(255) NOT NULL
,  [CATEGORY] NVARCHAR(255) NOT NULL
,  [CANCER_STUDY_ID] INTEGER NOT NULL
,  [NAME] NVARCHAR(255) NOT NULL
,  [DESCRIPTION] NVARCHAR(4000)
)with(location='cbioportal.sample_list',data_source=mydsp016);

CREATE EXTERNAL TABLE [sample_list_list] (
  [LIST_ID] INTEGER NOT NULL
,  [SAMPLE_ID] INTEGER NOT NULL
)with(location='cbioportal.sample_list_list',data_source=mydsp016);

CREATE EXTERNAL TABLE [sample_profile] (
  [SAMPLE_ID] INTEGER NOT NULL
,  [GENETIC_PROFILE_ID] INTEGER NOT NULL
,  [PANEL_ID] INTEGER
)with(location='cbioportal.sample_profile',data_source=mydsp016);

CREATE EXTERNAL TABLE [sanger_cancer_census] (
  [ENTREZ_GENE_ID] INTEGER NOT NULL
,  [CANCER_SOMATIC_MUT] TINYINT NOT NULL
,  [CANCER_GERMLINE_MUT] TINYINT NOT NULL
,  [TUMOR_TYPES_SOMATIC_MUT] NVARCHAR(4000) NOT NULL
,  [TUMOR_TYPES_GERMLINE_MUT] NVARCHAR(4000) NOT NULL
,  [CANCER_SYNDROME] NVARCHAR(4000) NOT NULL
,  [TISSUE_TYPE] NVARCHAR(4000) NOT NULL
,  [MUTATION_TYPE] NVARCHAR(4000) NOT NULL
,  [TRANSLOCATION_PARTNER] NVARCHAR(4000) NOT NULL
,  [OTHER_GERMLINE_MUT] TINYINT NOT NULL
,  [OTHER_DISEASE] NVARCHAR(4000) NOT NULL
)with(location='cbioportal.sanger_cancer_census',data_source=mydsp016);

CREATE EXTERNAL TABLE [structural_variant] (
  [SAMPLE_ID] INTEGER NOT NULL
,  [INTERNAL_ID] INTEGER NOT NULL
,  [BREAKPOINT_TYPE] NVARCHAR(25)
,  [ANNOTATION] NVARCHAR(255)
,  [COMMENTS] NVARCHAR(2048)
,  [CONFIDENCE_CLASS] NVARCHAR(25)
,  [CONNECTION_TYPE] NVARCHAR(25)
,  [EVENT_INFO] NVARCHAR(255)
,  [MAPQ] INTEGER
,  [NORMAL_READ_COUNT] INTEGER
,  [NORMAL_VARIANT_COUNT] INTEGER
,  [PAIRED_END_READ_SUPPORT] NVARCHAR(255)
,  [SITE1_CHROM] NVARCHAR(25)
,  [SITE1_DESC] NVARCHAR(255)
,  [SITE1_ENTREZ_GENE_ID] INTEGER
,  [SITE1_POS] INTEGER
,  [SITE2_CHROM] NVARCHAR(25)
,  [SITE2_DESC] NVARCHAR(255)
,  [SITE2_ENTREZ_GENE_ID] INTEGER
,  [SITE2_POS] INTEGER
,  [SPLIT_READ_SUPPORT] NVARCHAR(255)
,  [SV_CLASS_NAME] NVARCHAR(25)
,  [SV_DESC] NVARCHAR(255)
,  [SV_LENGTH] INTEGER
,  [TUMOR_READ_COUNT] INTEGER
,  [TUMOR_VARIANT_COUNT] INTEGER
,  [VARIANT_STATUS_NAME] NVARCHAR(255)
,  [GENETIC_PROFILE_ID] INTEGER NOT NULL
)with(location='cbioportal.structural_variant',data_source=mydsp016);

CREATE EXTERNAL TABLE [text_cache] (
  [HASH_KEY] NVARCHAR(32) NOT NULL
,  [TEXT] NVARCHAR(4000) NOT NULL
,  [DATE_TIME_STAMP] DATETIME NOT NULL
)with(location='cbioportal.text_cache',data_source=mydsp016);

CREATE EXTERNAL TABLE [type_of_cancer] (
  [TYPE_OF_CANCER_ID] NVARCHAR(63) NOT NULL
,  [NAME] NVARCHAR(255) NOT NULL
,  [CLINICAL_TRIAL_KEYWORDS] NVARCHAR(1024) NOT NULL
,  [DEDICATED_COLOR] NCHAR(31) NOT NULL
,  [SHORT_NAME] NVARCHAR(127)
,  [PARENT] NVARCHAR(63)
)with(location='cbioportal.type_of_cancer',data_source=mydsp016);

CREATE EXTERNAL TABLE [uniprot_id_mapping] (
  [UNIPROT_ACC] NVARCHAR(255) NOT NULL
,  [UNIPROT_ID] NVARCHAR(255) NOT NULL
,  [ENTREZ_GENE_ID] INTEGER NOT NULL
)with(location='cbioportal.uniprot_id_mapping',data_source=mydsp016);

CREATE EXTERNAL TABLE [users] (
  [EMAIL] NVARCHAR(128) NOT NULL
,  [NAME] NVARCHAR(255) NOT NULL
,  [ENABLED] TINYINT NOT NULL
)with(location='cbioportal.users',data_source=mydsp016);

;

create statistics [cancer_study_pk] on [cancer_study] ([CANCER_STUDY_ID]);
;

create statistics [cancer_study_tags_pk] on [cancer_study_tags] ([CANCER_STUDY_ID]);
;

create statistics [clinical_attribute_meta_pk] on [clinical_attribute_meta] ([ATTR_ID],[CANCER_STUDY_ID]);
;

create statistics [clinical_event_pk] on [clinical_event] ([CLINICAL_EVENT_ID]);
;

;

create statistics [clinical_patient_pk] on [clinical_patient] ([INTERNAL_ID],[ATTR_ID]);
;

create statistics [clinical_sample_pk] on [clinical_sample] ([INTERNAL_ID],[ATTR_ID]);
;

create statistics [cna_event_pk] on [cna_event] ([CNA_EVENT_ID]);
;

create statistics [copy_number_seg_pk] on [copy_number_seg] ([SEG_ID]);
;

create statistics [copy_number_seg_file_pk] on [copy_number_seg_file] ([SEG_FILE_ID]);
;

create statistics [cosmic_mutation_pk] on [cosmic_mutation] ([COSMIC_MUTATION_ID]);
;

create statistics [data_access_tokens_pk] on [data_access_tokens] ([TOKEN]);
;

create statistics [drug_pk] on [drug] ([DRUG_ID]);
;

;

create statistics [fraction_genome_altered_pk] on [fraction_genome_altered] ([CANCER_STUDY_ID],[SAMPLE_ID]);
;

create statistics [gene_pk] on [gene] ([ENTREZ_GENE_ID]);
;

create statistics [gene_alias_pk] on [gene_alias] ([ENTREZ_GENE_ID],[GENE_ALIAS]);
;

create statistics [gene_panel_pk] on [gene_panel] ([INTERNAL_ID]);
;

create statistics [gene_panel_list_pk] on [gene_panel_list] ([INTERNAL_ID],[GENE_ID]);
;

create statistics [geneset_pk] on [geneset] ([ID]);
;

create statistics [geneset_gene_pk] on [geneset_gene] ([GENESET_ID],[ENTREZ_GENE_ID]);
;

create statistics [geneset_hierarchy_leaf_pk] on [geneset_hierarchy_leaf] ([NODE_ID],[GENESET_ID]);
;

create statistics [geneset_hierarchy_node_pk] on [geneset_hierarchy_node] ([NODE_ID]);
;

create statistics [genetic_alteration_pk] on [genetic_alteration] ([GENETIC_PROFILE_ID],[GENETIC_ENTITY_ID]);
;

create statistics [genetic_entity_pk] on [genetic_entity] ([ID]);
;

create statistics [genetic_profile_pk] on [genetic_profile] ([GENETIC_PROFILE_ID]);
;

create statistics [genetic_profile_link_pk] on [genetic_profile_link] ([REFERRING_GENETIC_PROFILE_ID],[REFERRED_GENETIC_PROFILE_ID]);
;

;

create statistics [gistic_pk] on [gistic] ([GISTIC_ROI_ID]);
;

create statistics [gistic_to_gene_pk] on [gistic_to_gene] ([GISTIC_ROI_ID],[ENTREZ_GENE_ID]);
;

;

;

create statistics [mut_sig_pk] on [mut_sig] ([CANCER_STUDY_ID],[ENTREZ_GENE_ID]);
;

;

;

;

create statistics [mutation_event_pk] on [mutation_event] ([MUTATION_EVENT_ID]);
;

create statistics [patient_pk] on [patient] ([INTERNAL_ID]);
;

create statistics [pdb_uniprot_alignment_pk] on [pdb_uniprot_alignment] ([ALIGNMENT_ID]);
;

;

create statistics [pfam_graphics_pk] on [pfam_graphics] ([UNIPROT_ACC]);
;

create statistics [protein_array_cancer_study_pk] on [protein_array_cancer_study] ([PROTEIN_ARRAY_ID],[CANCER_STUDY_ID]);
;

create statistics [protein_array_data_pk] on [protein_array_data] ([PROTEIN_ARRAY_ID],[CANCER_STUDY_ID],[SAMPLE_ID]);
;

create statistics [protein_array_info_pk] on [protein_array_info] ([PROTEIN_ARRAY_ID]);
;

create statistics [protein_array_target_pk] on [protein_array_target] ([PROTEIN_ARRAY_ID],[ENTREZ_GENE_ID]);
;

create statistics [reference_genome_pk] on [reference_genome] ([REFERENCE_GENOME_ID]);
;

create statistics [reference_genome_gene_pk] on [reference_genome_gene] ([ENTREZ_GENE_ID],[REFERENCE_GENOME_ID]);
;

create statistics [sample_pk] on [sample] ([INTERNAL_ID]);
;

create statistics [sample_cna_event_pk] on [sample_cna_event] ([CNA_EVENT_ID],[SAMPLE_ID],[GENETIC_PROFILE_ID]);
;

create statistics [sample_list_pk] on [sample_list] ([LIST_ID]);
;

create statistics [sample_list_list_pk] on [sample_list_list] ([LIST_ID],[SAMPLE_ID]);
;

;

;

create statistics [structural_variant_pk] on [structural_variant] ([INTERNAL_ID]);
;

create statistics [text_cache_pk] on [text_cache] ([HASH_KEY]);
;

create statistics [type_of_cancer_pk] on [type_of_cancer] ([TYPE_OF_CANCER_ID]);
;

create statistics [uniprot_id_mapping_pk] on [uniprot_id_mapping] ([ENTREZ_GENE_ID],[UNIPROT_ID]);
;

create statistics [users_pk] on [users] ([EMAIL]);
;

--------- TEST QUERIES --------
set nocount on; begin try
 exec('select top 10 * from [authorities]')
 end try
 begin catch
 print 'Error in external table [authorities]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [cancer_study]')
 end try
 begin catch
 print 'Error in external table [cancer_study]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [cancer_study_tags]')
 end try
 begin catch
 print 'Error in external table [cancer_study_tags]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [clinical_attribute_meta]')
 end try
 begin catch
 print 'Error in external table [clinical_attribute_meta]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [clinical_event]')
 end try
 begin catch
 print 'Error in external table [clinical_event]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [clinical_event_data]')
 end try
 begin catch
 print 'Error in external table [clinical_event_data]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [clinical_patient]')
 end try
 begin catch
 print 'Error in external table [clinical_patient]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [clinical_sample]')
 end try
 begin catch
 print 'Error in external table [clinical_sample]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [cna_event]')
 end try
 begin catch
 print 'Error in external table [cna_event]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [copy_number_seg]')
 end try
 begin catch
 print 'Error in external table [copy_number_seg]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [copy_number_seg_file]')
 end try
 begin catch
 print 'Error in external table [copy_number_seg_file]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [cosmic_mutation]')
 end try
 begin catch
 print 'Error in external table [cosmic_mutation]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [data_access_tokens]')
 end try
 begin catch
 print 'Error in external table [data_access_tokens]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [drug]')
 end try
 begin catch
 print 'Error in external table [drug]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [drug_interaction]')
 end try
 begin catch
 print 'Error in external table [drug_interaction]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [fraction_genome_altered]')
 end try
 begin catch
 print 'Error in external table [fraction_genome_altered]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [gene]')
 end try
 begin catch
 print 'Error in external table [gene]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [gene_alias]')
 end try
 begin catch
 print 'Error in external table [gene_alias]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [gene_panel]')
 end try
 begin catch
 print 'Error in external table [gene_panel]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [gene_panel_list]')
 end try
 begin catch
 print 'Error in external table [gene_panel_list]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [geneset]')
 end try
 begin catch
 print 'Error in external table [geneset]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [geneset_gene]')
 end try
 begin catch
 print 'Error in external table [geneset_gene]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [geneset_hierarchy_leaf]')
 end try
 begin catch
 print 'Error in external table [geneset_hierarchy_leaf]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [geneset_hierarchy_node]')
 end try
 begin catch
 print 'Error in external table [geneset_hierarchy_node]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [genetic_alteration]')
 end try
 begin catch
 print 'Error in external table [genetic_alteration]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [genetic_entity]')
 end try
 begin catch
 print 'Error in external table [genetic_entity]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [genetic_profile]')
 end try
 begin catch
 print 'Error in external table [genetic_profile]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [genetic_profile_link]')
 end try
 begin catch
 print 'Error in external table [genetic_profile_link]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [genetic_profile_samples]')
 end try
 begin catch
 print 'Error in external table [genetic_profile_samples]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [gistic]')
 end try
 begin catch
 print 'Error in external table [gistic]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [gistic_to_gene]')
 end try
 begin catch
 print 'Error in external table [gistic_to_gene]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [info]')
 end try
 begin catch
 print 'Error in external table [info]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [interaction]')
 end try
 begin catch
 print 'Error in external table [interaction]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [mut_sig]')
 end try
 begin catch
 print 'Error in external table [mut_sig]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [mutation]')
 end try
 begin catch
 print 'Error in external table [mutation]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [mutation_count]')
 end try
 begin catch
 print 'Error in external table [mutation_count]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [mutation_count_by_keyword]')
 end try
 begin catch
 print 'Error in external table [mutation_count_by_keyword]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [mutation_event]')
 end try
 begin catch
 print 'Error in external table [mutation_event]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [patient]')
 end try
 begin catch
 print 'Error in external table [patient]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [pdb_uniprot_alignment]')
 end try
 begin catch
 print 'Error in external table [pdb_uniprot_alignment]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [pdb_uniprot_residue_mapping]')
 end try
 begin catch
 print 'Error in external table [pdb_uniprot_residue_mapping]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [pfam_graphics]')
 end try
 begin catch
 print 'Error in external table [pfam_graphics]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [protein_array_cancer_study]')
 end try
 begin catch
 print 'Error in external table [protein_array_cancer_study]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [protein_array_data]')
 end try
 begin catch
 print 'Error in external table [protein_array_data]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [protein_array_info]')
 end try
 begin catch
 print 'Error in external table [protein_array_info]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [protein_array_target]')
 end try
 begin catch
 print 'Error in external table [protein_array_target]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [reference_genome]')
 end try
 begin catch
 print 'Error in external table [reference_genome]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [reference_genome_gene]')
 end try
 begin catch
 print 'Error in external table [reference_genome_gene]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [sample]')
 end try
 begin catch
 print 'Error in external table [sample]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [sample_cna_event]')
 end try
 begin catch
 print 'Error in external table [sample_cna_event]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [sample_list]')
 end try
 begin catch
 print 'Error in external table [sample_list]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [sample_list_list]')
 end try
 begin catch
 print 'Error in external table [sample_list_list]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [sample_profile]')
 end try
 begin catch
 print 'Error in external table [sample_profile]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [sanger_cancer_census]')
 end try
 begin catch
 print 'Error in external table [sanger_cancer_census]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [structural_variant]')
 end try
 begin catch
 print 'Error in external table [structural_variant]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [text_cache]')
 end try
 begin catch
 print 'Error in external table [text_cache]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [type_of_cancer]')
 end try
 begin catch
 print 'Error in external table [type_of_cancer]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [uniprot_id_mapping]')
 end try
 begin catch
 print 'Error in external table [uniprot_id_mapping]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [users]')
 end try
 begin catch
 print 'Error in external table [users]: '+ error_message();
end catch



 