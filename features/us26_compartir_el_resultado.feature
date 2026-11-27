# language: es
@EP01 @US26
Característica: US26 Compartir el resultado
  Como consumidor que compra medicamentos para su familia
  quiero compartir el resultado de una verificación por WhatsApp
  para avisar a mis familiares

  Esquema del escenario: Resultado compartido
    Dado que el sistema muestra el resultado "<resultado>" de "<producto>"
    Cuando el consumidor selecciona "Compartir" y elige WhatsApp
    Entonces el sistema abre WhatsApp con un mensaje que incluye el producto, el resultado y la fecha de la consulta

    Ejemplos:
      | producto           | resultado               |
      | Paracetamol 500 mg | Sin alertas registradas |
      | Apronax 550 mg     | Lote con alerta         |

  Esquema del escenario: Resultado con alerta
    Dado que el sistema muestra el resultado "Lote con alerta" del lote "<lote>"
    Cuando el consumidor selecciona "Compartir"
    Entonces el mensaje incluye el número de alerta "<alerta>" y el enlace a la publicación de DIGEMID

    Ejemplos:
      | lote   | alerta      |
      | ABC123 | N.° 45-2026 |
      | L2309  | N.° 38-2026 |
