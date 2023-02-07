package WEEK5;

public class AsteriskLogger implements Logger {

	public void log(String message) {
		System.out.println("***" + message + "***");
	}


	public void error(String message) {
		String asteriskBlock = ("***ERROR: " + message + "***"); 
		System.out.println("*".repeat(asteriskBlock.length()));
		System.out.println("***ERROR: " + message + "***");
		System.out.println("*".repeat(asteriskBlock.length()));
	}
}