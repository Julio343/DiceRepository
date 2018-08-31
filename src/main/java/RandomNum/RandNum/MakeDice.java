package RandomNum.RandNum;

import java.util.Random;

public class MakeDice {

	public int dice1;
	public int dice2;
	public int dice3;

public void roll() {
		Random rand = new Random();
		
		dice1 = rand.nextInt(6) + 1;
		dice2 = rand.nextInt(6) + 1;
		dice3 = rand.nextInt(6) + 1;
	}
public int getDice1() {
	return dice1;
		}
public void setDice1(int dice1) {
	this.dice1 = dice1;
		}
public int getDice2() {
	return dice2;
		}
public void setDice2(int dice2) {
	this.dice2 = dice2;
		}
public int getDice3() {
	return dice3;
		}
public void setDice3(int dice3) {
	this.dice3 = dice3;
		}
		
}
