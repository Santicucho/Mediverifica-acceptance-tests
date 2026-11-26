# language: es
@EP01 @US01
Característica: US01 Consultar por número de lote
  Como consumidor que solo revisa el empaque y la fecha de vencimiento
  quiero ingresar el número de lote
  para saber si ese lote está observado por DIGEMID

  Esquema del escenario: Consulta de un lote según su estado en la base de alertas
    Dado que el consumidor se encuentra en la opción "Consultar lote"
    Y la base de alertas contiene los siguientes lotes:
      | lote   | producto           | alerta      | motivo               |
      | ABC123 | Apronax 550 mg     | N.° 45-2026 | Producto falsificado |
      | L2309  | Amoxicilina 500 mg | N.° 12-2026 | Lote no autorizado   |
    Cuando el consumidor ingresa el lote "<lote>"
    Entonces el sistema muestra el resultado "<resultado>" en color <color>

    Ejemplos:
      | lote   | resultado               | color |
      | ABC123 | Lote con alerta         | rojo  |
      | L2309  | Lote con alerta         | rojo  |
      | XYZ789 | Sin alertas registradas | verde |

  Esquema del escenario: Formato de lote inválido
    Dado que el consumidor se encuentra en la opción "Consultar lote"
    Cuando el consumidor ingresa "<lote>"
    Entonces el sistema muestra el mensaje "Ingresa un lote válido (3 a 20 letras o números)"
    Y el sistema no realiza la búsqueda

    Ejemplos:
      | lote                  |
      | A#                    |
      | AB                    |
      | ABCDEFGHIJ12345678901 |
