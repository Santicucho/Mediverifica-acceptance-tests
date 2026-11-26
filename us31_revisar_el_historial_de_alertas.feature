# language: es
@EP03 @US31
Característica: US31 Revisar el historial de alertas
  Como dueño de botica que revisa su stock
  quiero ver las alertas de los últimos 12 meses filtradas por producto
  para saber si tengo productos observados en mis vitrinas

  Esquema del escenario: Filtro por producto
    Dado que el dueño de botica se encuentra en "Historial de alertas"
    Cuando el dueño de botica ingresa "<producto>" en el filtro
    Entonces el sistema muestra solo las <alertas> alertas de los últimos 12 meses que incluyen "<producto>"

    Ejemplos:
      | producto    | alertas |
      | Paracetamol | 2       |
      | Ibuprofeno  | 1       |

  Esquema del escenario: Sin coincidencias
    Dado que el dueño de botica se encuentra en "Historial de alertas"
    Cuando el dueño de botica ingresa "<producto>" en el filtro
    Entonces el sistema muestra el mensaje "No hay alertas de este producto en los últimos 12 meses"

    Ejemplos:
      | producto    |
      | Metformina  |
      | Amoxicilina |
