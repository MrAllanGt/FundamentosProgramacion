# Import modules
import const
import random

# Variables
brand = card = ""
total = discount = 0.00
disc_rate = 0
m_format = "{:.2f}".format

# Inputs
try:
  brand = input("Marca: ")
  card = input("Tarjeta: ")
  total = float(input("Compra: "))
except Exception as e:
  print("\nSe produjo la siguiente excepción: " + str(e))

# Process 
if brand.lower() == const.BRAND_TARGET and card.lower() == const.CARD_TARGET and total >= const.TOTAL_TARGET:
  disc_rate = random.randint(1,25)
  discount = total * disc_rate / 100
  total -= discount

# Outputs
print(f"\nDescuento del...\t {disc_rate}%")
print(f"Total descuento..\t {m_format(discount)}")
print(f"Total a pagar...\t {m_format(total)}")