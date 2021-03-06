package db.mssql;

import java.io.PrintStream;

public class ExternalTableWriter {

	private String data_source,location;
	public ExternalTableWriter(String data_source, String location){
		this.data_source= data_source;
		this.location=location;
	}
	public void create(Table table, PrintStream out) {
		table.create(out,true);
		out.printf("with(location='%s.%s',data_source=%s)",location,table.name,data_source);
		System.out.printf("Wrote external table %s \n", table.name);
	}
	
	public void createStatistics(Table table, PrintStream out) {
		table.createStatistics(out);
	}
	
	public void createTestQuery(Table table, PrintStream out) {
		table.createTestQuery(out);
	}
}
