import const

# Variables
s1 = s2 = s3 = avg = 0
msg = ""

# Inputs
try:
  s1 = int(input("Sesión #1: "))
  s2 = int(input("Sesión #2: "))
  s3 = int(input("Sesión #3: "))
except Exception as e:
  print("\nSe produjo la siguiente excepción: " + str(e))

# Process & Outputs
avg = (s1 + s2 + s3) / const.SESSIONS

if s1 >= const.SESSIONS_MIN and s2 >= const.SESSIONS_MIN and s3 >= const.SESSIONS_MIN and avg >= const.COURSE_MIN:
  msg = ":) Se aprobó "
else:
  msg = ":( No se aprobó "

print(f"\n{msg} el curso.\nPromedio final: {round(avg)}")