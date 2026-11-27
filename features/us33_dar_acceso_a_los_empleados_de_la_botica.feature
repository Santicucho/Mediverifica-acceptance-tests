# language: es
@EP03 @US33
Característica: US33 Dar acceso a los empleados de la botica
  Como dueño de botica que tiene personal de turno
  quiero dar acceso a mis empleados a la cuenta de la botica
  para que puedan usarla sin conocer mi contraseña

  Esquema del escenario: Empleado invitado
    Dado que el dueño de botica se encuentra en "Equipo de la botica"
    Cuando el dueño de botica ingresa el correo "<correo>" y selecciona "Invitar"
    Entonces el dueño de botica ve al empleado en la lista con el estado "Pendiente"
    Y el sistema envía la invitación a "<correo>"

    Ejemplos:
      | correo                 |
      | luis.perez@correo.com  |
      | marta.rojas@correo.com |

  Escenario: Límite de empleados
    Dado que la botica del dueño tiene los siguientes 5 empleados con acceso:
      | empleado | correo                 |
      | Luis     | luis.perez@correo.com  |
      | Marta    | marta.rojas@correo.com |
      | Ana      | ana.torres@correo.com  |
      | Jorge    | jorge.vega@correo.com  |
      | Rosa     | rosa.medina@correo.com |
    Cuando el dueño de botica invita al correo "pedro.diaz@correo.com"
    Entonces el dueño de botica ve el mensaje "Tu cuenta permite hasta 5 empleados"

  Esquema del escenario: Acceso retirado
    Dado que el empleado "<empleado>" tiene acceso a la cuenta de la botica
    Cuando el dueño de botica selecciona "Retirar acceso" en "<empleado>" y confirma
    Entonces el dueño de botica deja de ver a "<empleado>" en la lista
    Y la sesión de "<empleado>" en la cuenta de la botica se cierra

    Ejemplos:
      | empleado |
      | Luis     |
      | Marta    |
