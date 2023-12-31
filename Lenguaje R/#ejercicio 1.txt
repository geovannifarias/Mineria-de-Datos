#ejercicio 1
valor_euro <- 867

# creacion de bucle para seguir consultando la cantidad de pesos chilenos
while (TRUE) {
  print("Ingrese la cantidad de pesos chilenos (CLP): ")
  cantidad_pesos <- as.numeric(readline(prompt = ""))
  
  # comienzo del ciclo
  if (is.numeric(cantidad_pesos)) {
    # Calcular la cantidad de pesos chilenos a Euros
    euros <- cantidad_pesos / valor_euro
    print("La conversión es de", format(euros, nsmall = 3), "Euros.\n")
  } else {
    print("Entrada inválida. Por favor, ingrese un número válido.\n")
  }
}