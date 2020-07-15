# Import modules
import const
import random

# Variables
num = rand = 0

# Inputs
try:
  num = int(input("¡Adivina el número generado al azar (1-5)!: "))
except Exception as e:
  print("\nSe produjo la siguiente excepción: " + str(e))

# Process & Outputs
rand = random.randint(1,5)
print(cons.WIN + str(rand)) if num == rand else print(cons.LOSE + str(rand))