# language: es
@EP03 @US13
Característica: US13 Registrar botica
  Como dueño de botica que quiere recibir las alertas a tiempo
  quiero registrar mi botica con su RUC y dirección
  para tener una cuenta con la que recibir las alertas de DIGEMID y revisar los pedidos de mi botica

  Esquema del escenario: Validación del RUC al registrar la botica
    Dado que el dueño de botica se encuentra en "Registrar botica"
    Cuando el dueño de botica ingresa el RUC "<ruc>" y completa los demás datos
    Y selecciona "Registrar"
    Entonces el sistema muestra el mensaje "<mensaje>"

    Ejemplos:
      | ruc         | mensaje                                     |
      | 20609876543 | Tu botica fue registrada                    |
      | 20601234    | El RUC debe tener 11 dígitos                |
      | 20601234567 | Este RUC ya tiene una cuenta. Inicia sesión |

  Esquema del escenario: Ingreso después del registro
    Dado que el dueño de botica registró la botica "<botica>" con el RUC "<ruc>"
    Y el dueño de botica ve el mensaje "Tu botica fue registrada"
    Cuando el dueño de botica selecciona "Ir a Mi botica"
    Entonces el sistema muestra la pantalla "Mi botica" con el nombre "<botica>"

    Ejemplos:
      | botica            | ruc         |
      | Botica San Martín | 20609876543 |
      | Botica Santa Rosa | 20611122233 |
