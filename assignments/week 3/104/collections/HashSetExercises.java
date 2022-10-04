package com.revature.collections;

import java.util.HashSet;
import java.util.Iterator;

public class HashSetExercises {

    /*
    Below is a list of exercises to help you get familiar with working with the HashSet Collection
     */
    public static void main(String[] args) {

        // 1. Write a Java program to append the specified element to the end of a hash set
        HashSet<String> hashset = new HashSet<>();
        hashset.add("asdf");


        // 2. Write a Java program to iterate through all elements in a hash list.
        Iterator<String> it = hashset.iterator();
        while(it.hasNext()){
            String str = it.next();
            System.out.println(str);
        }

        // 3. Write a Java program to get the number of elements in a hash set
        System.out.println(hashset.size());

        // 4. Write a Java program to test a hash set is empty or not
        System.out.println(hashset.isEmpty());

        // 5. Write a Java program to convert a hash set to an array.
        hashset.toArray();
    }
}