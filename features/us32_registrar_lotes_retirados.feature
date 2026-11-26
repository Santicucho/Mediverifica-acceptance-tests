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
    Dado que la botica tiene retiros registrados
    Cuando el dueño de botica selecciona "Descargar constancia"
    Entonces el sistema genera un PDF con los lotes retirados, las cantidades y las fechas

  Escenario: Cantidad inválida
    Dado que el dueño de botica se encuentra en "Registrar retiro"
    Cuando el dueño de botica ingresa una cantidad igual a 0
    Entonces el sistema muestra el mensaje "Ingresa una cantidad mayor que 0"
    Y el sistema no guarda el retiro
