package com.revature.calculator;

import java.util.Scanner;

public class Calculatorv2 {
    public static void main(String[] args) {
        int result=0;

        String o;
        int i;
        int j;
        Scanner input = new Scanner(System.in);
        boolean running = true;
        while(running){
            String again;
            System.out.println("Choose an operation ( + - * / )");
            o = input.nextLine();
            System.out.println("Enter a number");
            i = input.nextInt();
            System.out.println("Enter a second number");
            j = input.nextInt();
            switch(o){
                case "+":
                    result = i + j;
                    break;
                case "-":
                    result = i - j;
                    break;
                case "*":
                    result = i * j;
                    break;
                case "/":
                    result = i / j;
                    break;
            }
            System.out.println("The answer of "+i+" "+o+" "+j+" is: "+result);
            System.out.println("+---------------------------------------+");
            System.out.println("Go again? (Y / N)");
            again = input.nextLine();

            if(again.equals("N")){
                input.nextLine();
                break;
            } else{
                input.nextLine();
                continue;
            }
        }
    }
}
