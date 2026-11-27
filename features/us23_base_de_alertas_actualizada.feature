# language: es
@EP04 @US23 @no_funcional
Característica: US23 Base de alertas actualizada
  Como dueño de botica que depende de alertas al día
  quiero que la base de alertas se actualice al menos una vez cada 24 horas
  para no vender un producto observado
  # No funcional. Atributo de calidad: Adecuación funcional, corrección funcional.

  Esquema del escenario: Nueva alerta disponible
    Dado que DIGEMID publicó hace <horas> horas una alerta sobre el lote "<lote>"
    Cuando el dueño de botica consulta el lote "<lote>"
    Entonces el dueño de botica ve el resultado "Lote con alerta" con el número de la alerta

    Ejemplos:
      | horas | lote   |
      | 1     | L2309  |
      | 12    | K8812  |
      | 24    | PX0042 |

  Esquema del escenario: Fallo de actualización
    Dado que la última actualización exitosa de la base de alertas fue el <fecha>
    Y la actualización siguiente falló
    Cuando el dueño de botica realiza una consulta
    Entonces el dueño de botica ve el resultado con la etiqueta "Datos actualizados al <fecha>"

    Ejemplos:
      | fecha            |
      | 25/11/2026 08:00 |
      | 24/11/2026 20:00 |
