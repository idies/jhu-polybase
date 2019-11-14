set nocount on; begin try
 exec('select top 10 * from [type_of_cancer]')
 end try
 begin catch
 print 'Error in external table [type_of_cancer]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [reference_genome]')
 end try
 begin catch
 print 'Error in external table [reference_genome]: '+ error_message();
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
 exec('select top 10 * from [users]')
 end try
 begin catch
 print 'Error in external table [users]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [authorities]')
 end try
 begin catch
 print 'Error in external table [authorities]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [patient]')
 end try
 begin catch
 print 'Error in external table [patient]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [sample]')
 end try
 begin catch
 print 'Error in external table [sample]: '+ error_message();
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
 exec('select top 10 * from [genetic_entity]')
 end try
 begin catch
 print 'Error in external table [genetic_entity]: '+ error_message();
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
 exec('select top 10 * from [geneset_hierarchy_node]')
 end try
 begin catch
 print 'Error in external table [geneset_hierarchy_node]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [geneset_hierarchy_leaf]')
 end try
 begin catch
 print 'Error in external table [geneset_hierarchy_leaf]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [treatment]')
 end try
 begin catch
 print 'Error in external table [treatment]: '+ error_message();
end catch

set nocount on; begin try
 exec('select top 10 * from [uniprot_id_mapping]')
 end try
 begin catch
 print 'Error in external table [uniprot_id_mapping]: '+ error_message();
end catch

