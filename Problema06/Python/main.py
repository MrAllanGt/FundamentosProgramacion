# Import modules
import const

# Variables
amount = 0
balance = 1000
m_format = "{:,.2f}".format

# Inputs
try:
  pinInput = input("PIN: ")
except Exception as e:
  print("\nSe produjo la siguiente excepción: " + str(e))

# Process & Outputs
if pinInput == const.PIN:
	amount = float(input("Monto a retirar: "))
	
	if amount <= balance:
		balance -= amount
		print(f"Saldo: {m_format(balance)}")
	else:
		print("Saldo insuficiente.\nNo se realizó ninguna transacción.")
else:
	print("¡PIN incorrecto!")