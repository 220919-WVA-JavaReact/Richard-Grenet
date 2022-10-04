package com.revature.collections;

import java.util.Iterator;
import java.util.LinkedList;

public class LinkedListExercises {

    /*
    Below is a list of exercises to help you get familiar with working with the ArrayList Collection
     */
    public static void main(String[] args) {

        // 1. Write a Java program to append the specified element to the end of a linked list. Add several values.
        LinkedList<String> list = new LinkedList<>();
        list.addLast("last for a short while");
        list.addLast("Now I'm the last one");
        list.addLast("No me");
        // 2. Write a Java program to iterate through all elements in a linked list.
        Iterator<String> iterator = list.iterator();
        while(iterator.hasNext()){
            String next = iterator.next();
            System.out.println(next);

        }
        // 3. Write a Java program to iterate a linked list in reverse order
        Iterator<String> reviterator = list.descendingIterator();
        while(reviterator.hasNext()){
            String next = iterator.next();
            System.out.println(next);
        }
        // 4.  Write a Java program to insert the specified element at the front of a linked list
        list.add("first");
        // 5. Write a Java program to insert some elements at the specified position into a linked list.
        list.addAll(3,list);
        // 6. Write a Java program to get the first and last occurrence of the specified elements in a linked list.
        list.indexOf("first");
        list.lastIndexOf("first");
        // 7. Write a Java program to check if a particular element exists in a linked list.
        list.contains("first");
        // 8. Write a Java program to convert a linked list to array list.
        list.toArray();

    }
}
