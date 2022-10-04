package com.revature.collections;

import java.util.HashMap;
import java.util.Map;

public class HashMapExercises {

    /*
    Below is a list of exercises to help you get familiar with working with the HashMap Collection
     */
    public static void main(String[] args) {

        // 1. Create a HashMap with Integers for the Keys and Strings for the Entries. Insert 5 entries with numbers as
        // the key and colors as the value associated
        Map<Integer,String> map = new HashMap<Integer,String>();
        map.put(4,"four");
        map.put(3,"second insertion");
        map.put(2,"value");
        map.put(5,"always value");
        map.put(1,"last stored value");
        // 2. Write a Java program to count the number of key-value (size) mappings in a map.
        map.size();
        // 3. Write a Java program to test if a map contains a mapping for the specified key
        map.containsKey(4);
        // 4. Write a Java program to get the value of a specified key in a map.
        map.get(4);
        // 5. Write a Java program to get a set view of the keys contained in this map.
        map.keySet();
    }
}
