package RandomNum.RandNum;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class GetProperties {

	String result = "";
	InputStream inputStream;
 
	public String getPropValues() throws IOException {
 
		try {
			Properties prop = new Properties();
			String propFileName = "application.properties";
			
			inputStream = getClass().getClassLoader().getResourceAsStream(propFileName);
 
			if (inputStream != null) {
				prop.load(inputStream);
			} else {
				throw new FileNotFoundException("property file '" + propFileName + "' not found in the classpath");
			}
 
			// get the property value and print it out
			String db = prop.getProperty("use.database");
			String user = prop.getProperty("db.mysql.drivername");
			String username = prop.getProperty("db.mysql.username");
			String pw = prop.getProperty("db.mysql.password");
			String url = prop.getProperty("db.mysql.url");
 
			result = db+username+pw+url;
			
			System.out.println(db+" DB "+ user+" Username " +username+" Password "+pw+ " " + url);

		} catch (Exception e) {
			System.out.println("Exception: " + e);
		} finally {
			inputStream.close();
		}
		return result;
	}
	
}
