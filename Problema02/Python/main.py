# Import module math
import math

# Variables
area = perimeter = side_a = side_b = side_c = semi_p = 0

# String format - "{:.4f}".format(variable)
dec_format = "{:.4f}".format

# Inputs
try:
  side_a = float(input("Ingrese primer lado: "))
  side_b = float(input("Ingrese segundo lado: "))
  side_c = float(input("Ingrese tercer lado: "))
except Exception as e:
  print("\nSe produjo la siguiente excepción: " + str(e))

# Process
perimeter = side_a + side_b + side_c
semi_p = perimeter / 2.0
area = math.sqrt(semi_p * (semi_p - side_a) * (semi_p - side_b) * (semi_p - side_c))

# Outputs - F-String Python 3.6
print(f"\nÁrea = {dec_format(area)}")
print(f"Perímetro = {dec_format(perimeter)}")