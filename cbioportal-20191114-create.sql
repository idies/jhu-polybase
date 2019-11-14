CREATE EXTERNAL TABLE [type_of_cancer] (
  [TYPE_OF_CANCER_ID] NVARCHAR(63) NOT NULL
,  [NAME] NVARCHAR(255) NOT NULL
,  [CLINICAL_TRIAL_KEYWORDS] NVARCHAR(1024) NOT NULL
,  [DEDICATED_COLOR] NCHAR(31) NOT NULL
,  [SHORT_NAME] NVARCHAR(127)
,  [PARENT] NVARCHAR(63)
)with(location='cbioportal.type_of_cancer',data_source=mydsp016_nospace);

CREATE EXTERNAL TABLE [reference_genome] (
  [REFERENCE_GENOME_ID] INTEGER NOT NULL
,  [SPECIES] NVARCHAR(64) NOT NULL
,  [NAME] NVARCHAR(64) NOT NULL
,  [BUILD_NAME] NVARCHAR(64) NOT NULL
,  [GENOME_SIZE] BIGINT NULL
,  [URL] NVARCHAR(256) NOT NULL
,  [RELEASE_DATE] DATETIME
)with(location='cbioportal.reference_genome',data_source=mydsp016_nospace);

CREATE EXTERNAL TABLE [cancer_study] (
  [CANCER_STUDY_ID] INTEGER NOT NULL
,  [CANCER_STUDY_IDENTIFIER] NVARCHAR(255)
,  [TYPE_OF_CANCER_ID] NVARCHAR(63) NOT NULL
,  [NAME] NVARCHAR(255) NOT NULL
,  [SHORT_NAME] NVARCHAR(64) NOT NULL
,  [DESCRIPTION] NVARCHAR(1024) NOT NULL
,  [PUBLIC] BIT NOT NULL
,  [PMID] NVARCHAR(1024)
,  [CITATION] NVARCHAR(200)
,  [GROUPS] NVARCHAR(200)
,  [STATUS] INTEGER
,  [IMPORT_DATE] DATETIME
,  [REFERENCE_GENOME_ID] INTEGER
)with(location='cbioportal.cancer_study',data_source=mydsp016_nospace);

CREATE EXTERNAL TABLE [cancer_study_tags] (
  [CANCER_STUDY_ID] INTEGER NOT NULL
,  [TAGS] NVARCHAR(4000) NOT NULL
)with(location='cbioportal.cancer_study_tags',data_source=mydsp016_nospace);

CREATE EXTERNAL TABLE [users] (
  [EMAIL] NVARCHAR(128) NOT NULL
,  [NAME] NVARCHAR(255) NOT NULL
,  [ENABLED] BIT NOT NULL
)with(location='cbioportal.users',data_source=mydsp016_nospace);

CREATE EXTERNAL TABLE [authorities] (
  [EMAIL] NVARCHAR(128) NOT NULL
,  [AUTHORITY] NVARCHAR(255) NOT NULL
)with(location='cbioportal.authorities',data_source=mydsp016_nospace);

CREATE EXTERNAL TABLE [patient] (
  [INTERNAL_ID] INTEGER NOT NULL
,  [STABLE_ID] NVARCHAR(50) NOT NULL
,  [CANCER_STUDY_ID] INTEGER NOT NULL
)with(location='cbioportal.patient',data_source=mydsp016_nospace);

CREATE EXTERNAL TABLE [sample] (
  [INTERNAL_ID] INTEGER NOT NULL
,  [STABLE_ID] NVARCHAR(50) NOT NULL
,  [SAMPLE_TYPE] NVARCHAR(255) NOT NULL
,  [PATIENT_ID] INTEGER NOT NULL
,  [TYPE_OF_CANCER_ID] NVARCHAR(63) NOT NULL
)with(location='cbioportal.sample',data_source=mydsp016_nospace);

CREATE EXTERNAL TABLE [sample_list] (
  [LIST_ID] INTEGER NOT NULL
,  [STABLE_ID] NVARCHAR(255) NOT NULL
,  [CATEGORY] NVARCHAR(255) NOT NULL
,  [CANCER_STUDY_ID] INTEGER NOT NULL
,  [NAME] NVARCHAR(255) NOT NULL
,  [DESCRIPTION] NVARCHAR(4000)
)with(location='cbioportal.sample_list',data_source=mydsp016_nospace);

CREATE EXTERNAL TABLE [sample_list_list] (
  [LIST_ID] INTEGER NOT NULL
,  [SAMPLE_ID] INTEGER NOT NULL
)with(location='cbioportal.sample_list_list',data_source=mydsp016_nospace);

CREATE EXTERNAL TABLE [genetic_entity] (
  [ID] INTEGER NOT NULL
,  [ENTITY_TYPE] NVARCHAR(45) NOT NULL
)with(location='cbioportal.genetic_entity',data_source=mydsp016_nospace);

CREATE EXTERNAL TABLE [gene] (
  [ENTREZ_GENE_ID] INTEGER NOT NULL
,  [HUGO_GENE_SYMBOL] NVARCHAR(255) NOT NULL
,  [GENETIC_ENTITY_ID] INTEGER NOT NULL
,  [TYPE] NVARCHAR(50)
)with(location='cbioportal.gene',data_source=mydsp016_nospace);

CREATE EXTERNAL TABLE [gene_alias] (
  [ENTREZ_GENE_ID] INTEGER NOT NULL
,  [GENE_ALIAS] NVARCHAR(255) NOT NULL
)with(location='cbioportal.gene_alias',data_source=mydsp016_nospace);

CREATE EXTERNAL TABLE [geneset] (
  [ID] INTEGER NOT NULL
,  [GENETIC_ENTITY_ID] INTEGER NOT NULL
,  [EXTERNAL_ID] NVARCHAR(200) NOT NULL
,  [NAME] NVARCHAR(200) NOT NULL
,  [DESCRIPTION] NVARCHAR(300) NOT NULL
,  [REF_LINK] NVARCHAR(4000)
)with(location='cbioportal.geneset',data_source=mydsp016_nospace);

CREATE EXTERNAL TABLE [geneset_gene] (
  [GENESET_ID] INTEGER NOT NULL
,  [ENTREZ_GENE_ID] INTEGER NOT NULL
)with(location='cbioportal.geneset_gene',data_source=mydsp016_nospace);

CREATE EXTERNAL TABLE [geneset_hierarchy_node] (
  [NODE_ID] BIGINT NOT NULL
,  [NODE_NAME] NVARCHAR(200) NOT NULL
,  [PARENT_ID] BIGINT NULL
)with(location='cbioportal.geneset_hierarchy_node',data_source=mydsp016_nospace);

CREATE EXTERNAL TABLE [geneset_hierarchy_leaf] (
  [NODE_ID] BIGINT NOT NULL
,  [GENESET_ID] INTEGER NOT NULL
)with(location='cbioportal.geneset_hierarchy_leaf',data_source=mydsp016_nospace);

CREATE EXTERNAL TABLE [treatment] (
  [ID] INTEGER NOT NULL
,  [STABLE_ID] NVARCHAR(45) NOT NULL
,  [NAME] NVARCHAR(45) NOT NULL
,  [DESCRIPTION] NVARCHAR(200) NOT NULL
,  [LINKOUT_URL] NVARCHAR(400) NOT NULL
,  [GENETIC_ENTITY_ID] INTEGER NOT NULL
)with(location='cbioportal.treatment',data_source=mydsp016_nospace);

CREATE EXTERNAL TABLE [uniprot_id_mapping] (
  [UNIPROT_ACC] NVARCHAR(255) NOT NULL
,  [UNIPROT_ID] NVARCHAR(255) NOT NULL
,  [ENTREZ_GENE_ID] INTEGER
)with(location='cbioportal.uniprot_id_mapping',data_source=mydsp016_nospace);

