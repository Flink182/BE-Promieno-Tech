package WEEK5;

public class App {
	public static void main(String[] args) {
		Logger asteriskLogger = new AsteriskLogger();
		asteriskLogger.log("LOGGED");
		asteriskLogger.error("NOT LOGGED");
	
		Logger spacedLogger = new SpacedLogger();
		spacedLogger.log("LOGGED");
		spacedLogger.error("LOGGED");
	}
}
