import java.io.BufferedReader;
import java.io.InputStreamReader;

class Main {
  public static void main(String[] args) {
    // Vars / Cons + Objects
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    String phone = null;
    double aTime, recharge = 0;
    final double MIN_COST = 1.20;
    final double PROMO_COST = MIN_COST / 2;

    // Inputs
    try{
      print("\nNúmero de teléfono: ");
      phone = br.readLine();
      print("Monto de recarga: ");
      recharge = Double.parseDouble(br.readLine());
    }catch(Exception e){
      print("Se generó la siguiente excepción: " + e.getMessage());
    }
    
    // Process
    if(recharge > 100)
      aTime = recharge / PROMO_COST;
    else
      aTime = recharge / MIN_COST;

    // Outputs
    print("\n¡Recarga exitosa!");
    print("\nSe acreditó al número de teléfono " + phone + ": " + Math.round(aTime) + " minutos de saldo.");
  }

  public static void print(String s){
    System.out.print(s);
  }
}





