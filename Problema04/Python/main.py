# Import const module
import const

# Variables
phone = aTime = recharge = 0

# Inputs
try:
  phone = input("Número de teléfono: ")
  recharge = float(input("Monto de recarga: "))
except Exception as e:
  print("\nSe produjo la siguiente excepción: " + str(e))

# Process
if recharge > 100:
  aTime = recharge / const.PROMO_COST
else:
  aTime = recharge / const.MIN_COST

# Outputs
print("\n¡Recarga exitosa!")
print(f"Se acreditó al número {phone}: {round(aTime)} minutos de saldo.")