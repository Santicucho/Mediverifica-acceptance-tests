# language: es
@EP03 @US42
Característica: US42 Recibir resumen diario de alertas por correo
  Como dueño de botica que no revisa el celular mientras atiende
  quiero recibir cada mañana un correo con las alertas registradas el día anterior
  para revisarlas al abrir la botica

  Esquema del escenario: Día con alertas
    Dado que el dueño de botica activó el "Resumen diario por correo"
    Y el día anterior se registraron <alertas> alertas nuevas
    Cuando son las 7:00 a. m.
    Entonces el dueño de botica recibe un correo con las <alertas> alertas
    Y el correo muestra el producto, los lotes y el número de cada alerta

    Ejemplos:
      | alertas |
      | 1       |
      | 2       |
      | 5       |

  Escenario: Día sin alertas
    Dado que el dueño de botica activó el "Resumen diario por correo"
    Y las últimas alertas registradas son:
      | alerta      | fecha      |
      | N.° 43-2026 | 16/11/2026 |
      | N.° 44-2026 | 18/11/2026 |
    Cuando son las 7:00 a. m. del 20/11/2026
    Entonces el dueño de botica no recibe ningún correo

  Esquema del escenario: Cancelación del resumen
    Dado que el dueño de botica recibió un correo de resumen en "<correo>"
    Cuando el dueño de botica selecciona "Dejar de recibir este resumen"
    Entonces el dueño de botica ve el mensaje "Ya no recibirás el resumen diario"
    Y el dueño de botica deja de recibir el resumen en "<correo>"

    Ejemplos:
      | correo               |
      | botica@correo.com    |
      | boticasol@correo.com |
