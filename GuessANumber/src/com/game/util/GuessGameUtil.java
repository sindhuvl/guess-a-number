package com.game.util;

public class GuessGameUtil {

	public static String guessStatus(int secretNumber, int guess, int attempt) {
		if(secretNumber == guess) 
			return "Right! You have won the game.";
		
		if(attempt == 3 && (secretNumber-guess)!=0)
			return "Game Over! Please try again.";
			
		String guessStatus = difference(Math.abs(secretNumber-guess));
		return "Your"+ attempt(attempt) + "guess is "+ guess +" : " + guessStatus;
	
		
	}

	public static String difference(int differnce) {
		switch (differnce) {
		case 1:
			return " (hot) ";
		case 2:
			return " (cold) ";
		default:
			return " (warm) ";
		}

	}
	
	public static String attempt(int attempt) {
		switch (attempt) {
		case 1:
			return " first ";
		case 2:
			return " second ";
		default:
			return " last ";
		}

	}
}
