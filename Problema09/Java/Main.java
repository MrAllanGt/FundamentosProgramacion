import java.io.BufferedReader;
import java.io.InputStreamReader;

class Main {
  public static void main(String[] args) {
    // Vars / Cons + Objects
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    int s1 = 0, s2 = 0, s3 = 0;
    double avg = 0.00;
    String msg = null;
    final int SESSIONS = 3;
    final int SESSIONS_MIN = 61;
    final int COURSE_MIN = 71;

    // Inputs
    try{
      print("\nSesión #1: ");
      s1 = Integer.parseInt(br.readLine());
      print("Sesión #2: ");
      s2 = Integer.parseInt(br.readLine());
      print("Sesión #3: ");
      s3 = Integer.parseInt(br.readLine());
    }catch(Exception e){
      print("Se generó la siguiente excepción: " + e.getMessage());
    }
    
    // Process & Outputs
    avg = (s1 + s2 + s3) / SESSIONS;

    if(s1 >= SESSIONS_MIN && s2 >= SESSIONS_MIN && s3 >= SESSIONS_MIN && avg >= COURSE_MIN)
      msg = ":) Se aprobó ";
    else
      msg = ":( No se aprobó ";

    print("\n" + msg + " el curso.");
    print("\nPromedio final: " + avg);  
  }

  public static void print(String s){
    System.out.print(s);
  }
}