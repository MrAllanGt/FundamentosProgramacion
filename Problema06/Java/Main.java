import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.text.DecimalFormat;

class Main {
  public static void main(String[] args) {
    // Vars / Cons + Objects
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    DecimalFormat df = new DecimalFormat("#,##0.00");

    final String PIN = "2020";
    String inputPin = null;
    double amount = 0, balance = 1000;

    try{
      // Inputs
      print("PIN: ");
      inputPin = br.readLine();

      // Process & Outputs
      if(inputPin.equals(PIN)){
        print("\nIngrese cantidad a retirar: ");
        amount = Double.parseDouble(br.readLine());

        if(amount <= balance){
          balance -= amount;
          print("Saldo: " + df.format(balance));
        }else{
          print("\nSaldo insuficiente.\nNo se realizó ninguna transacción.");
        }
      }else{
        print("\n¡PIN incorrecto!");
      }
    }catch(Exception e){
      print("Se generó la siguiente excepción: " + e.getMessage());
    }
  }

  public static void print(String s){
    System.out.print(s);
  }
}