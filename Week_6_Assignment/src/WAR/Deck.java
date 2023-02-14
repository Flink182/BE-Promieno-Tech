package WAR;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;

public class Deck {
    private ArrayList<Card> cards;
    private LinkedList<Integer> unusedIndices;

    public Deck() {
        cards = new ArrayList<Card>();
        unusedIndices = new LinkedList<Integer>();

        // Populate the deck with standard 52 cards
        for (int i = 0; i < 52; i++) {
            int suit = i / 13;
            int value = i % 13 + 2;
            String suitString;
            switch (suit) {
                case 0:
                    suitString = "Hearts";
                    break;
                case 1:
                    suitString = "Diamonds";
                    break;
                case 2:
                    suitString = "Spades";
                    break;
                case 3:
                    suitString = "Clubs";
                    break;
                default:
                    suitString = "";
                    break;
            }
            cards.add(new Card(value, suitString));
            unusedIndices.add(i);
        }
    }

    public void shuffle() {
        Collections.shuffle(unusedIndices);
    }

    public Card drawCard() {
        if (unusedIndices.isEmpty()) {
            return null;
        }
        int index = unusedIndices.pop();
        return cards.get(index);
    }
    public boolean isEmpty() {
        return unusedIndices.isEmpty();
    }
}
