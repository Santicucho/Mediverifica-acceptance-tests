# language: es
@EP04 @US21 @no_funcional
Característica: US21 Texto ampliado y lector de pantalla
  Como cuidador que a veces deja que su familiar adulto mayor use la aplicación
  quiero aumentar el tamaño del texto y escuchar el resultado con el lector de pantalla
  para que el resultado se lea o se escuche sin esfuerzo
  # No funcional. Atributo de calidad: Usabilidad, accesibilidad.

  Esquema del escenario: Texto grande en el resultado
    Dado que el cuidador eligió el tamaño de texto "Grande" en "Ajustes"
    Cuando el cuidador abre el resultado "<resultado>"
    Entonces el cuidador ve los textos con un tamaño mínimo de 18 puntos
    Y ningún texto aparece cortado

    Ejemplos:
      | resultado               |
      | Lote con alerta         |
      | Sin alertas registradas |

  Esquema del escenario: Lector de pantalla
    Dado que el cuidador activó <lector> en su celular
    Cuando el cuidador abre el resultado de una consulta con alerta
    Entonces el cuidador escucha "Lote con alerta" sin depender solo del color

    Ejemplos:
      | lector    |
      | TalkBack  |
      | VoiceOver |
