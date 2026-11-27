# language: es
@EP03 @US04
Característica: US04 Recibir notificación de nuevas alertas
  Como dueño de botica que se entera tarde de las alertas por grupos de WhatsApp
  quiero recibir en mi celular una notificación cuando se registre una nueva alerta en MediVerifica
  para retirar a tiempo los productos observados

  Esquema del escenario: Nueva alerta registrada
    Dado que el dueño de botica tiene las notificaciones activadas
    Y se registra en MediVerifica la alerta "<alerta>" sobre el lote "<lote>"
    Cuando pasan como máximo 15 minutos desde el registro de la alerta
    Entonces el dueño de botica recibe una notificación en su celular
    Y la notificación muestra el producto "<producto>", el lote "<lote>" y el número de alerta "<alerta>"

    Ejemplos:
      | alerta      | lote  | producto          |
      | N.° 45-2026 | L2309 | Apronax 550 mg    |
      | N.° 46-2026 | K8812 | Cefalexina 500 mg |

  Escenario: Notificaciones desactivadas
    Dado que el dueño de botica tiene las notificaciones desactivadas
    Cuando se registra en MediVerifica la siguiente alerta:
      | alerta      | lote  | producto       |
      | N.° 45-2026 | L2309 | Apronax 550 mg |
    Entonces el dueño de botica no recibe ninguna notificación

  Esquema del escenario: Apertura de la notificación
    Dado que el dueño de botica recibió la notificación de la alerta "<alerta>"
    Cuando el dueño de botica selecciona la notificación
    Entonces el dueño de botica ve en MediVerifica el detalle de la alerta "<alerta>" del producto "<producto>"

    Ejemplos:
      | alerta      | producto          |
      | N.° 45-2026 | Apronax 550 mg    |
      | N.° 46-2026 | Cefalexina 500 mg |
