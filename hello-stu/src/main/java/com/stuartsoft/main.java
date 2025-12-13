package com.stuartsoft;

public class main {
    public static void main(String[] arguments){
        while(true) {
            try {
                Thread.sleep(1000);
                System.out.println("hello stu");
            } catch (InterruptedException e){}
        }
    }
}
