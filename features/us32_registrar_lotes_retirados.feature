# language: es
@EP03 @US32
Característica: US32 Registrar lotes retirados
  Como dueño de botica que retira los productos observados
  quiero registrar los lotes que retiré
  para tener un respaldo ante una inspección

  Esquema del escenario: Retiro registrado
    Dado que el dueño de botica se encuentra en el detalle de una alerta
    Cuando el dueño de botica selecciona "Registrar retiro" e ingresa el lote "<lote>" y la cantidad retirada "<cantidad>"
    Entonces el sistema guarda el retiro con la fecha y la hora
    Y el dueño de botica ve el mensaje "Retiro registrado"
    Y el retiro aparece en "Constancia de retiros"

    Ejemplos:
      | lote  | cantidad |
      | L2309 | 12       |
      | L2310 | 30       |

  Escenario: Descarga de la constancia
    Dado que la botica tiene los siguientes retiros registrados:
      | lote  | cantidad | fecha      |
      | L2309 | 12       | 20/11/2026 |
      | L2310 | 30       | 22/11/2026 |
    Cuando el dueño de botica selecciona "Descargar constancia"
    Entonces el sistema genera un PDF con los lotes "L2309" y "L2310", sus cantidades y sus fechas

  Esquema del escenario: Cantidad inválida
    Dado que el dueño de botica se encuentra en "Registrar retiro"
    Cuando el dueño de botica ingresa la cantidad "<cantidad>"
    Entonces el sistema muestra el mensaje "Ingresa una cantidad mayor que 0"
    Y el sistema no guarda el retiro

    Ejemplos:
      | cantidad |
      | 0        |
      | -3       |
