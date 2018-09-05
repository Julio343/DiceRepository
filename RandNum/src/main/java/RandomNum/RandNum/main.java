package RandomNum.RandNum;
import java.io.IOException;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class main {

	public static void main(String[] args){
		SpringApplication.run(main.class, args);
		GetProperties properties = new GetProperties();
		try {
			properties.getPropValues();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}

