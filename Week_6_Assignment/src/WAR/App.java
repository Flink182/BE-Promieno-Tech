package WAR;

import java.util.Scanner;

public class App {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the name of Player 1: ");
        String player1Name = sc.nextLine();
        System.out.println("Enter the name of Player 2: ");
        String player2Name = sc.nextLine();
        Player player1 = new Player(player1Name);
        Player player2 = new Player(player2Name);

        Deck deck = new Deck();
        deck.shuffle();

        // Draw cards for each player
        for (int i = 0; i < 26; i++) {
            player1.draw(deck);
            player2.draw(deck);
        }

        // Play 26 rounds
        for (int i = 0; i < 26; i++) {
            Card card1 = player1.getCurrentCard();
            Card card2 = player2.getCurrentCard();
            System.out.println(player1Name + " flips " + card1);
            System.out.println(player2Name + " flips " + card2);

            if (card1.getValue() > card2.getValue()) {
                System.out.println(player1Name + " wins this round!");
                player1.incrementScore();
            } else if (card1.getValue() < card2.getValue()) {
                System.out.println(player2Name + " wins this round!");
                player2.incrementScore();
            } else {
                System.out.println("This round is a tie!");
            }

            player1.draw(deck);
            player2.draw(deck);
        }

        // Determine the winner
        System.out.println("\nThe game is over!");
        System.out.println(player1Name + ": " + player1.getScore() + " points");
        System.out.println(player2Name + ": " + player2.getScore() + " points");
        if (player1.getScore() > player2.getScore()) {
            System.out.println(player1Name + " is the winner!");
        } else if(player1.getScore() < player2.getScore()) {
            System.out.println(player2Name + " is the winner!");
        } else {
            System.out.println("The game is a tie!");
        }

        sc.close();
    }
}