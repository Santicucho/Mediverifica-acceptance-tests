# language: es
@EP04 @US05 @no_funcional
Característica: US05 Consulta en menos de 10 segundos
  Como consumidor que verifica el medicamento en la botica
  quiero que el resultado aparezca en menos de 10 segundos
  para consultarlo antes de pagar
  # No funcional. Atributo de calidad: Eficiencia de desempeño, comportamiento temporal.

  Esquema del escenario: Tiempo de respuesta según el tipo de consulta
    Dado que el consumidor tiene conexión <conexion>
    Cuando el consumidor realiza 100 consultas por <tipo>
    Entonces el consumidor ve el resultado en menos de 10 segundos en al menos 95 de las 100 consultas

    Ejemplos:
      | conexion | tipo             |
      | 4G       | número de lote   |
      | 4G       | código de barras |
      | wifi     | nombre           |

  Esquema del escenario: Celular sin conexión
    Dado que el celular del consumidor no tiene conexión a internet
    Cuando el consumidor realiza una consulta por <tipo>
    Entonces el consumidor ve el mensaje "Sin conexión. Revisa tu internet" en menos de 3 segundos

    Ejemplos:
      | tipo             |
      | número de lote   |
      | código de barras |
      | nombre           |
