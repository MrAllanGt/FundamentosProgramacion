import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.text.DecimalFormat;
import java.util.Random;

class Main {
  public static void main(String[] args) {
    // Vars / Cons + Objects
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    DecimalFormat df = new DecimalFormat("#,##0.00");
    Random rand = new Random();
    
    double total = 0.00, discount = 0.00;
    int discRate = 0;
    String brand = null, card = null;
    final double TOTAL_TARGET = 200.00;
    final String BRAND_TARGET = "nike";
    final String CARD_TARGET = "visa";

    // Inputs
    try{
      print("\nMarca: ");
      brand = br.readLine();
      print("Tarjeta: ");
      card = br.readLine();
      print("Compra: ");
      total = Double.parseDouble(br.readLine());
    }catch(Exception e){
      print("Se generó la siguiente excepción: " + e.getMessage());
    }
    
    // Process
    if(brand.toLowerCase().equals(BRAND_TARGET) && card.toLowerCase().equals(CARD_TARGET) && total >= TOTAL_TARGET){
      discRate = rand.nextInt(25)+1;
      discount = total * discRate / 100;
      total -= discount;
    }

    // Outputsm
    print("\nDescuento del...\t" + discRate + "%");
    print("\nTotal descuento..\t" + df.format(discount));
    print("\nTotal a pagar...\t" + df.format(total));
  }

  public static void print(String s){
    System.out.print(s);
  }
}