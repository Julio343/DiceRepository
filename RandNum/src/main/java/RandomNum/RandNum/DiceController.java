package RandomNum.RandNum;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DiceController {
	String result = "";
	InputStream inputStream;
	@CrossOrigin
	@GetMapping("/randomNumber")
	@PostMapping("/randomNumber")
	public MakeDice randomNumber(@RequestParam(name = "dice", required = false) String DiceName, Model model) throws IOException {
		model.addAttribute("dice", DiceName);
		
		MakeDice DiceNames = new MakeDice();
		
		DiceNames.roll();

		Connection conn = null;
		{
			 
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
			if(prop.getProperty("use.database").equals("true"))	{
			 String insert = "INSERT INTO random_number(dice1, dice2, dice3, timestamp) VALUES (?,?,?,?)";
			 conn = (Connection) DriverManager.getConnection(url, username, pw);
			 PreparedStatement ps = conn.prepareStatement(insert);
			 
			 Date date = new Date();
			 SimpleDateFormat sdf = new SimpleDateFormat ("yyyy-MM-dd HH:mm:ss");
			 
			 ps.setInt(1, DiceNames.getDice1());
			 ps.setInt(2, DiceNames.getDice2());
			 ps.setInt(3, DiceNames.getDice3());
			 ps.setString(4, sdf.format(date));
			 ps.executeUpdate();
			 
			 System.out.println(ps);
			}
			
			} catch (Exception e) {
				System.out.println("Exception: " + e);
			} finally {
				inputStream.close();
		 return DiceNames;
   }
		
	}
		
	}
}
