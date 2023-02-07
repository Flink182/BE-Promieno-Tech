package WEEK5;

public class SpacedLogger implements Logger {
	public void log(String message) {
		System.out.println(SpacedString(message));
	}
	public void error(String message) {
		System.out.println("ERROR: " + SpacedString(message));
	}
	private String SpacedString(String message) {
		StringBuilder stringBuilder = new StringBuilder();
		for (char x : message.toCharArray()) {
			stringBuilder.append(x);
			stringBuilder.append(' ');
		}
		return stringBuilder.toString();
	}
}
