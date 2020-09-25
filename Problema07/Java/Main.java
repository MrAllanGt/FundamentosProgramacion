import java.io.BufferedReader;
import java.io.InputStreamReader;

class Main {
  public static void main(String[] args) {
    // Vars / Cons + Objects
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    boolean log = false;
    String user = null, pass = null;
    final String USER_ADMIN = "admin";
    final String USER_MASTER = "master";
    final String PASS = "fdp2020*";

    // Inputs
    try{
      print(" - LOGIN - \n");
      print("User: ");
      user = br.readLine();
      print("Password: ");
      pass = br.readLine();
    }catch(Exception e){
      print("Se generó la siguiente excepción: " + e.getMessage());
    }
    
    // Process & Outputs
    if((user.toLowerCase().equals(USER_ADMIN) || user.toLowerCase().equals(USER_MASTER)) && pass.toLowerCase().equals(PASS)){
      log = true;
    }
 
    if(!log)
      print("\n¡Usuario o password incorrecto!");
    else
      print("\n¡Bienvenido(a) " + user.toUpperCase() + "!");
  }

  public static void print(String s){
    System.out.print(s);
  }
}