package RandomNum.RandNum;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DiceController {

	@CrossOrigin
	@GetMapping("/randomNumber")
	@PostMapping("/randomNumber")
	public MakeDice randomNumber(@RequestParam(name = "dice", required = false) String DiceName, Model model) {
		model.addAttribute("dice", DiceName);
		
		MakeDice DiceNames = new MakeDice();
		
		DiceNames.roll();

		Connection conn = null;
		 try {
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/CountryDB?autoReconnect=true&useSSL=false","root","admin");		
			System.out.println("Connected");
			
			 String insert = "INSERT INTO random_number(dice1, dice2, dice3, timestamp) VALUES (?,?,?,?)";
			 PreparedStatement ps = conn.prepareStatement(insert);
			 Date date = new Date();
			 SimpleDateFormat sdf = new SimpleDateFormat ("yyyy-MM-dd HH:mm:ss");
			 
			 ps.setInt(1, DiceNames.getDice1());
			 ps.setInt(2, DiceNames.getDice2());
			 ps.setInt(3, DiceNames.getDice3());
			 ps.setString(4, sdf.format(date));
			 ps.executeUpdate();
			 
			 System.out.println(ps);
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 return DiceNames;
   }
		
	}
