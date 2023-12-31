#--------Ejercicio 2---------

# Pedir al usuario el año de nacimiento
print("ingrese su de Año Nacimiento: ")
anio_nacimiento <- as.numeric(readline())

# Pedir al usuario el año actual
print("Año Actual: ")
anio_actual <- as.numeric(readline())

# Calculo de edad
edad <- anio_actual - anio_nacimiento

# Mostrar el procesamiento y resultado
cat("Edad:", anio_actual, "-", anio_nacimiento, "\n")
cat("Edad:", edad, "años\n")

# Determinar si es mayor o menor de edad
cat("Salida:\n")
if (edad >= 18) {
  cat("Edad", edad, "años y es mayor de edad.\n")
} else {
  cat("Edad", edad, "años y es menor de edad.\n")
}