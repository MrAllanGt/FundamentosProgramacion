package io;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.text.DecimalFormat;

public class Main{
   public static void main(String [] args){
       // Declaración de variables y/o constantes + objetos
       BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
       DecimalFormat df = new DecimalFormat(".0000");
       double area, perimeter;
       double sideA = 0, sideB = 0, sideC = 0;
       double semiP;
       
       // Inputs
       try{
           print("\nIngresa primer lado: ");
           sideA = Double.parseDouble(br.readLine());
           
           print("Ingresa segundo lado: ");
           sideB = Double.parseDouble(br.readLine());
           
           print("Ingresa tercer lado: ");
           sideC = Double.parseDouble(br.readLine());
       }catch(Exception e){
           print("\nSe produjo la siguiente excepción: \n" + e.getMessage()); 
       }
       
       // Process
       perimeter = sideA + sideB + sideC;
       semiP = perimeter / 2.0;
       area = Math.sqrt(semiP * (semiP - sideA) * (semiP - sideB) * (semiP - sideC));
       
       // Outputs
       print("\nÁrea = " + df.format(area));
       print("\nPerímetro = " + df.format(perimeter));
   }
   
   public static void print(String s){
     System.out.print(s);  
    }
}
