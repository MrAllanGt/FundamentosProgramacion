import java.io.BufferedReader;
import java.io.InputStreamReader;

class Main {
  public static void main(String[] args) {
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

    try{

    }catch(Exception e){
      print("Se generó la siguiente excepción: " + e.getMessage());
    }

  }

  public static void print(String s){
    System.out.print(s);
  }
}