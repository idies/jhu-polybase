package db.mssql;

import mysql.mysql_ddlParser.Data_typeContext;
import java.util.List;

import org.antlr.v4.runtime.Parser;
import org.antlr.v4.runtime.tree.TerminalNode;

public class Util {

	public static int MAX_LENGTH=8000;
	public static int MAX_NLENGTH=4000;
	
	public static String normalize(String n){
		String name = n;
		if(n.startsWith("`")){
			if(!n.endsWith("`"))
			{
				// throw error
			}
			name=n.substring(1,n.length()-1);
		}
		return name;
	}
	
	public static String safeName(String name) {
		return String.format("[%s]",name);
	}
	/**
	 * Translate MySQL datatype into MS SQL version.<br/>
	 * @param dt
	 * @return
	 */
	public static String my2mssql(String dt){
		// TODO do soemthing about non-matching datatypes
		dt = dt.toUpperCase();
		
		if("TINYINT(1)".contentEquals(dt))
			return "BIT";
		
		if("INT".equals(dt))
			return "INTEGER";
		if("MEDIUMINT".equals(dt))
			return "INTEGER";
		if("FLOAT".equals(dt))
			return "REAL";
		if("DOUBLE".equals(dt))
			return "FLOAT";
		if("BOOLEAN".equals(dt))
			return "BIT";
		if("VARCHAR".equals(dt))
			return "NVARCHAR";
		if("CHAR".equals(dt))
			return "NCHAR";
		if("TEXT".equals(dt) || "MEDIUMTEXT".equals(dt) || "LONGTEXT".equals(dt))
			return "NVARCHAR(4000)";
		return dt;
	}

	public static boolean typeHasLength(String dt){
		dt = dt.toLowerCase();
		return ("varchar".equals(dt)
				|| "char".equals(dt)
				|| "nvarchar".equals(dt)
				|| "nchar".equals(dt)
				|| "decimal".equals(dt));
	}
	
	public static String parseDatatypeToString(Data_typeContext dtx) {
		
		String dt = dtx.getChild(0).getText().toUpperCase();
		System.out.println(dt);
			
		//be lame and take care of tinyint(1) = bit special case first
		//JUST KIDDING SQL SERVER DOESNT LIKE THIS
		/*
		if ("TINYINT".contentEquals(dt)){
			if (dtx.getChild(2) != null) {
				if (dtx.getChild(2).getText().contentEquals("1"))
					// WE HAVE A TINYINT(1) I THINK! RETURN BIT!!!
					return "BIT";
			}
		}
		*/
		
		
		if("INT".equals(dt))
			return "INTEGER";
		if("MEDIUMINT".equals(dt))
			return "INTEGER";
		if("FLOAT".equals(dt))
			return "REAL";
		if("DOUBLE".equals(dt))
			return "FLOAT";
		if("BOOLEAN".equals(dt))
			return "BIT";
		if("VARCHAR".equals(dt))
			return "NVARCHAR";
		if("CHAR".equals(dt))
			return "NCHAR";
		if("TEXT".equals(dt) || "MEDIUMTEXT".equals(dt) || "LONGTEXT".equals(dt))
			return "NVARCHAR(4000)";
		return dt;
			

	
	}
	
}
