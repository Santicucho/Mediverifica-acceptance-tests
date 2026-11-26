# language: es
@EP03 @US14
Característica: US14 Revisar los lotes de un pedido
  Como dueño de botica que tarda casi una hora en revisar los lotes de cada pedido
  quiero ingresar varios lotes a la vez
  para saber en pocos minutos cuáles tienen alertas

  Escenario: Lotes revisados con un lote observado
    Dado que el dueño de botica se encuentra en "Revisar pedido"
    Cuando el dueño de botica ingresa los siguientes lotes y selecciona "Revisar":
      | lote   |
      | L2309  |
      | K8812  |
      | PX0042 |
      | A#     |
    Entonces el sistema muestra el resultado de cada lote en este orden:
      | lote   | resultado        |
      | L2309  | Con alerta       |
      | A#     | Formato inválido |
      | K8812  | Sin alertas      |
      | PX0042 | Sin alertas      |

  Esquema del escenario: Límite de lotes por revisión
    Dado que el dueño de botica se encuentra en "Revisar pedido"
    Cuando el dueño de botica ingresa <cantidad> lotes
    Entonces el sistema <accion>

    Ejemplos:
      | cantidad | accion                                                     |
      | 15       | muestra el resultado de los 15 lotes                       |
      | 50       | muestra el resultado de los 50 lotes                       |
      | 51       | muestra el mensaje "Puedes revisar hasta 50 lotes por vez" |
