package WAR;

import java.util.ArrayList;


public class Player {
    private ArrayList<Card> hand;
    private int score;
    private String name;
    private int currentCardIndex;

    public Player(String name) {
        this.name = name;
        hand = new ArrayList<Card>();
        score = 0;
        currentCardIndex = 0;
    }

    public void draw(Deck deck) {
        hand.add(deck.drawCard());
    }

    public Card getCurrentCard() {
        if (currentCardIndex >= hand.size()) {
            return null;
        }
        return hand.get(currentCardIndex++);
    }

    public void incrementScore() {
        score++;
    }

    public int getScore() {
        return score;
    }

    public String getName() {
        return name;
    }
}