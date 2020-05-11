# Variables
a = b = c = result = 0

# Inputs
try:
  a = int(input("Ingresa el valor de a: "))
  b = int(input("Ingresa el valor de b: "))
  c = int(input("Ingresa el valor de c: "))
except Exception as e:
  print("\nSe produjo la siguiente excepción: " + str(e))

# Process & Outputs
print("\n--- RESULTADOS ---")

result = (a + b) * c
print("a + b * c = " + str(result))

result = (b + a) % c
print("b + a mod c = " + str(result))

result = b / (a % c)
print("b / a mod c = " + str(result))
