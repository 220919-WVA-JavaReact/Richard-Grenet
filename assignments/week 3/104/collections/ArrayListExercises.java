package com.revature.collections;

import java.util.ArrayList;

public class ArrayListExercises {

    /*
    Below is a list of exercises to help you get familiar with working with the ArrayList Collection
     */
    public static void main(String[] args) {

        // 1. Write a Java program to create a new array list, add some colors (string) and print out the collection.
        ArrayList<String> colors = new ArrayList<>();
        colors.add("color1");
        colors.add("colorblue");
        colors.add("colortree");
        colors.add("colorchore");
        System.out.println(colors);



        // 2. Write a Java program to iterate through all elements in an array list
        for(String color : colors){
            System.out.println(color);
        }


        // 3. Write a Java program to insert an element into the array list at the first position
        colors.add(0,"colorreplacingfirstone");


        // 4. Write a Java program to retrieve an element (at a specified index) from a given array list
        System.out.println(colors.get(2));


        // 5. Write a Java program to remove the third element from an array list.
        colors.remove(2);


        // 6. Write a Java program to search an element in an array list.
        colors.contains("colorchore");


        // 7. Write a Java program to sort a given array list.
        colors.sort(null);
        System.out.println(colors);

    }
}
