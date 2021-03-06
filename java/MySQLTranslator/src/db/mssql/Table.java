package db.mssql;

import java.io.PrintStream;
import java.util.ArrayList;

public class Table{
	
	public String name;
	ArrayList<Column> columns = new ArrayList<Column>();
	Constraint primaryKey;
	ArrayList<ForeignKey> fks=new ArrayList<ForeignKey>();
	ArrayList<Index> indexes=new ArrayList<Index>();
	public void addColumn(Column c)
	{
		columns.add(c);
	}
	public void addIndex(Index index) {
		indexes.add(index);
	}
	public void addFK(ForeignKey fk) {
		fks.add(fk);
	}
	/**
	 * Write as MS SQL CREATE TABLE.<br/>
	 * @param out
	 */
	public void create(PrintStream out , boolean external){
		out.printf("CREATE %sTABLE %s (\n",external?"EXTERNAL ":"", Util.safeName(name));
		boolean first = true;
		for(Column c : columns){
			if(first) 
				first = false;
			else
				out.print(",");
			c.create(out,external);
			out.print("\n");
		}
		out.printf(")");
	}
	
	public void drop(PrintStream out, boolean external) { 
		out.printf("DROP %s TABLE %s ;%n", external ? "EXTERNAL" : "", Util.safeName(name));
	}
	
	/**
	 * @todo add statistics for indexes and foreign keys
	 * @param out
	 */
	public void createStatistics(PrintStream out) {
		if(primaryKey != null)
		{
			out.printf("create statistics [%s_pk] on [%s] (%s) with fullscan;\n",name,name, String.join(",",primaryKey));
		}

	}
	
	// test select top 10 * from external table
	// surround with sql try/catch block
	public void createTestQuery(PrintStream out) {
		out.printf(
				"set nocount on; begin try\n exec('select top 10 * from [%s]')\n end try\n begin catch\n "
				+ "print 'Error in external table [%s]: '+ error_message();\nend catch\n\n",
				name, name);

	}
	
	public Constraint getPrimaryKey() {
		return primaryKey;
	}
	public void setPrimaryKey(Constraint primaryKey) {
		this.primaryKey = primaryKey;
	}
	public ArrayList<ForeignKey> getFks() {
		return fks;
	}
	public ArrayList<Index> getIndexes() {
		return indexes;
	}
	
}
