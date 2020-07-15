import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Random;

class Main {
  public static void main(String[] args) {
    // Vars / Cons + Objects
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        Random r = new Random();
        int num = 0;
        int rand = 0;
        final String WIN = "¡Adivinaste! :) El número es: ";
        final String LOSE = "¡Inténtalo de nuevo! :( El número es: ";

    // Inputs
    try{
        print("¡Adivina el número generado al azar (1 a 5): ");
        num = Integer.parseInt(br.readLine());
    }catch(Exception e){
        print("\nSe generó la siguiente excepción: \n" + e.getMessage());
    }
    
    // Process & Outputs
    rand = r.nextInt(5)+1;
    print(num == rand ? WIN + rand : LOSE + rand);
  }

  public static void print(String s){
    System.out.print(s);
  }
}
