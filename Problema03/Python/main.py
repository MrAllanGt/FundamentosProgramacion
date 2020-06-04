# Import const module
import const

# Variables
people = food_cost = drinks_cost = deco_cost = catering = total = 0

# Format as a function
m_format = "{:,.2f}".format

# Inputs
try:
  people = int(input("¿Cantidad de invitados? "))
except Exception as e:
  print("\nSe produjo la siguiente excepción: " + str(e))

# Process
food_cost = people * const.FOOD
drinks_cost = people * const.DRINKS
deco_cost = people * const.DECO
catering = (food_cost * const.FOOD_PER) + (drinks_cost * const.DRINKS_PER) + (deco_cost * const.DECO_PER)
total = food_cost + drinks_cost + deco_cost + catering

# Outputs
print(f"\nComida \t\t {m_format(food_cost)}")
print(f"Bebidas \t {m_format(drinks_cost)}")
print(f"Decoración \t {m_format(deco_cost)}")
print(f"Catering \t {m_format(catering)}")
print(f"\nTotal \t\t {m_format(total)}")