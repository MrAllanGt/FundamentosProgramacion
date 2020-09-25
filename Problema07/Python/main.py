# Import modules
import const

# Variables
log = False
user = ""
password = ""

# Inputs
try:
  user = input("Usuario: ")
  password = input("Password: ")
except Exception as e:
  print("\nSe produjo la siguiente excepción: " + str(e))

# Process & Outputs
if (user.lower() == const.USER_ADMIN or user.lower() == const.USER_MASTER) and password.lower() == const.PASSWORD:
  log = True

if not log:
  print("¡Usuario o constraseña incorrecta!")
else:
  print(f"¡Bienvenido(a) {user.upper()}!")