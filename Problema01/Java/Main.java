import java.io.BufferedReader;
import java.io.InputStreamReader;

class Main {
  public static void main(String[] args) {
	// Objects & Vars/Cons
	BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
	float a = 0, b = 0, c = 0;
	float result;

	// Inputs
    try{
		print("Ingrese tres números enteros: \n");
		a = Float.parseFloat(br.readLine());
		b = Float.parseFloat(br.readLine());
		c = Float.parseFloat(br.readLine());
    }catch(Exception e){
      	print("Se generó la siguiente excepción: " + e.getMessage());
    }
	
	// Process & Outputs
	print("\n\n--- RESULTADOS ---");

	result = (a + b) * c;
	print("\na + b * c = " + result);

	result = (b + a) % c;
	print("\nb + a mod c = " + result);

	result = b / (a % c);
	print("\nb / a mod c = " + result);
  }

	public static void print(String s){
    	System.out.print(s);
  	}
}