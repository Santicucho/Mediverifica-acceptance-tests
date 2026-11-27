# language: es
@EP01 @US07
Característica: US07 Ver detalle de la alerta
  Como consumidor que obtuvo un resultado con alerta
  quiero ver el detalle de la alerta oficial
  para entender el motivo y saber qué hacer con el producto

  Esquema del escenario: Detalle de la alerta
    Dado que el sistema muestra el resultado "Lote con alerta" del lote "<lote>"
    Cuando el consumidor selecciona "Ver detalle"
    Entonces el sistema muestra el número de alerta "<alerta>", la fecha de publicación "<fecha>", el motivo "<motivo>" y los lotes observados
    Y el sistema muestra la recomendación "No consumas este producto y consulta con un profesional de salud"

    Ejemplos:
      | lote   | alerta      | fecha      | motivo               |
      | ABC123 | N.° 45-2026 | 12/09/2026 | producto falsificado |
      | L2309  | N.° 38-2026 | 03/09/2026 | falla de calidad     |

  Esquema del escenario: Fuente oficial
    Dado que el consumidor se encuentra en el detalle de la alerta "<alerta>"
    Cuando el consumidor selecciona "Ver publicación de DIGEMID"
    Entonces el sistema abre la publicación oficial de la alerta "<alerta>" en el navegador del dispositivo

    Ejemplos:
      | alerta      |
      | N.° 45-2026 |
      | N.° 38-2026 |

  Esquema del escenario: Publicación no disponible
    Dado que la página de la publicación oficial <falla>
    Cuando el consumidor selecciona "Ver publicación de DIGEMID"
    Entonces el sistema muestra el mensaje "La página de DIGEMID no está disponible. Intenta más tarde"
    Y el detalle de la alerta sigue visible

    Ejemplos:
      | falla                              |
      | responde con un error del servidor |
      | no responde después de 10 segundos |
