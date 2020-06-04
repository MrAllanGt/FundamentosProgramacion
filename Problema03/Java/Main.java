import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.text.DecimalFormat;

class Main {
  public static void main(String[] args) {
    // Vars / Cons + Objects
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    DecimalFormat df = new DecimalFormat("#,##0.00");
    int people = 0;
    double foodCost, drinksCost, decoCost, catering, total;
    final double FOOD = 32.50;
    final double FOOD_PER = 0.15;
    final double DRINKS = 10.50;
    final double DRINKS_PER = 0.10;
    final double DECO = 5.50;
    final double DECO_PER = 0.05;

    // Inputs
    try{
      print("\n¿Cantidad de invitados? ");
      people = Integer.parseInt(br.readLine());
    }catch(Exception e){
      print("Se generó la siguiente excepción: " + e.getMessage());
    }
    
    // Process
    foodCost = people * FOOD;
    drinksCost = people * DRINKS;
    decoCost = people * DECO;
    catering = (foodCost * FOOD_PER) + (drinksCost * DRINKS_PER) + (decoCost * DECO_PER);
    total = foodCost + drinksCost + decoCost + catering;

    // Outputs
    print("\nComida \t\t" + df.format(foodCost));
    print("\nBebidas \t" + df.format(drinksCost));
    print("\nDecoración \t" + df.format(decoCost));
    print("\nCatering \t" + df.format(catering));
    print("\n\nTotal \t\t" + df.format(total));
  }

  public static void print(String s){
    System.out.print(s);
  }
}