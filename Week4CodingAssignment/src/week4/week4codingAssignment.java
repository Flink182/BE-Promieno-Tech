package week4;

public class week4codingAssignment {
// problem 1 beginning
	//public static void main(String[] args) {
		//int[] ages = {3, 9, 23, 64, 2, 8, 28, 93};
// problem 1 end
// problem 1A beginning
		//System.out.println(ages[ages.length-1] - ages[0]);
// problem 1A end
// problem 1B beginning
		//int[] temp = new int[ages.length + 1];
		//System.arraycopy(ages, 0, temp, 0, ages.length);
		//temp[temp.length-1] = 32;
		//ages = temp;
		//System.out.println(ages[ages.length-1] - ages[0]);	
// problem 1B end
// problem 1C beginning
		//int total = 0;
		//for (int age : ages) {
		    //total += age;
		//}
		//double average = (double) total / ages.length;
		//System.out.println(average);	
//}
// problem 1C end
// problem 2 beginning
	//public static void main(String[] args) {
	//String[] names = {"Sam", "Tommy", "Tim", "Sally", "Buck", "Bob"};
// problem 2 end
// problem 2A beginning
	//int totalLength = 0;
	//for (int i = 0; i < names.length; i++) {
	  //totalLength += names[i].length();
	//}
	//int averageLength = totalLength / names.length;
	//System.out.println(averageLength);
	
// problem 2A end
// problem 2B beginning
	//String allNames = "";
	//for (int i = 0; i < names.length; i++) {
		//allNames += names[i];
		//if (i < names.length - 1) {
			//allNames += " ";
		//}
	//}
	//System.out.println(allNames);

// problem 2B end
//3. You access the last element in a array by using [-1]
//4. you access the first element in a array by using [0]	
// problem 5 beginning	
	//int[] nameLengths = {3,5,3,5,4,3}; {
	//for (int i = 0; i < names.length; i++) {
	//nameLengths[i] = names[i].length();
	//}
// problem 5 end
// problem 6 beginning
	//int sum = 0;
	//for(int i = 0; i < nameLengths.length; i++) {
	//sum += nameLengths[i];
	//}
	//System.out.println(sum);
//}
//}
// problem 6 end
// problem 7 beginning
	//public static void main(String[] args) {
	    //String word = "Hello";
	    //int n = 10;
	    //System.out.println(repeatWord(word, n));
	//}
	//public static String repeatWord(String word, int n) {
	    //StringBuilder sb = new StringBuilder();
	    //for (int i = 0; i < n; i++) {
	        //sb.append(word);
	    //}
	    //return sb.toString();
	//}
// problem 7 end
// problem 8 beginning
	//public static void main(String[] args) {
	    //String firstName = "Evan";
	    //String lastName = "Flink";
	    //String fullName = (firstName + " " + lastName);
		//System.out.println(fullName);
	//}
// problem 8 end
// problem 9 beginning
	//public static void main(String[] args) {
	    //int[] arr = {25, 22, 95, 8, 13};
	    //System.out.println("Is sum greater than 100? " + isGreaterThan100(arr));
	    //System.out.println("Sum of the array: " + ArraySum(arr));
		//}

	//public static boolean isGreaterThan100(int[] arr) {
	    //return ArraySum(arr) > 100;
	//}

	//public static int ArraySum(int[] arr) {
	    //int sum = 0;
	    //for (int num : arr) {
	        //sum += num;
	    //}
	    //return sum;
	//}
// problem 9 end
//problem 10 beginning
	//public static void main(String[] args) {
	    //double[] arr = {3.8, 8.0, 7.5, 10.8, 11.1};
	    //System.out.println("Average: " + ArrayAverage(arr));
	//}

	//public static double ArrayAverage(double[] arr) {
	    //double sum = 0;
	    //for (double num : arr) {
	        //sum += num;
	    //}
	    //return sum / arr.length;
	//}
// problem 10 end
// problem 11 beginning
	//public static void main(String[] args) {
	    //double[] arr1 = {9.9, 8.4, 5.9, 6.3};
	    //double[] arr2 = {8.9, 9.5, 9.6, 10.2};
	    //System.out.println("Is arr1's average greater than arr2's average? " + AverageGreater(arr1, arr2));
	//}

	//public static boolean AverageGreater(double[] arr1, double[] arr2) {
	    //return ArrayAverage(arr1) > ArrayAverage(arr2);
	//}

	//public static double ArrayAverage(double[] arr) {
	    //double sum = 0;
	    //for (double num : arr) {
	        //sum += num;
	    //}
	    //return sum / arr.length;
	//}
// problem 11 ending
// problem 12 beginning
	//public static void main(String[] args) {
	    //System.out.println("Will buy drink: " + willBuyDrink(true, 9.0));
	//}

	//public static boolean willBuyDrink(boolean isHotOutside, double moneyInPocket) {
	    //return isHotOutside && moneyInPocket > 10.50;
	//}
// problem 12 end
// problem 13 beginning
	//public static void main(String[] args) {
	    //int seats = 20;
	    //int guests = 15;
	    //int difference = guests - seats;
	    //if (seats >= guests) {
	        //System.out.println("There are enough seats for all guests.");
	    //} else {
	        //System.out.println("There are more guests than there are seats. Grab " + Math.abs(difference)+ " extra seats from the shed.");

	    //}

	//}
//Problem 13 end
}