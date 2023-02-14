package WAR;

public class Card {
	private int value;
	private String suit;

	public Card(int value, String suit) {
		this.value = value;
		this.suit = suit;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}

	public String getSuit() {
		return suit;
	}

	public void setSuit(String suit) {
		this.suit = suit;
	}
	 public String toString() {
	        String valueString;
	        switch (value) {
	            case 11:
	            	valueString = "Jack";
	            	break;
	            	case 12:
	            	valueString = "Queen";
	            	break;
	            	case 13:
	            	valueString = "King";
	            	break;
	            	case 14:
	            	valueString = "Ace";
	            	break;
	            	default:
	            	valueString = Integer.toString(value);
	            	break;
	            	}
	            	return valueString + " of " + suit;
	}
}
