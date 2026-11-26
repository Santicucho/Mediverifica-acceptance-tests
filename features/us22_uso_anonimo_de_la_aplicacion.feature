# language: es
@EP04 @US22 @no_funcional
Característica: US22 Uso anónimo de la aplicación
  Como ciudadano que prefiere mantenerse anónimo
  quiero usar la aplicación sin entregar datos que me identifiquen
  para consultar y reportar sin temor
  # No funcional. Atributo de calidad: Seguridad, confidencialidad.

  Escenario: Uso sin cuenta
    Dado que el ciudadano abre MediVerifica por primera vez
    Cuando el ciudadano empieza a usar la aplicación
    Entonces la aplicación no le pide al ciudadano crear una cuenta ni ingresar su nombre, DNI, correo o teléfono

  Esquema del escenario: Envío sin identificadores
    Dado que el ciudadano usa MediVerifica
    Cuando la aplicación del ciudadano envía <solicitud> al servidor
    Entonces la información del ciudadano no incluye los campos:
      | campo                          |
      | ubicación GPS                  |
      | identificador del dispositivo  |
      | nombre, DNI, correo o teléfono |

    Ejemplos:
      | solicitud                     |
      | una consulta por lote         |
      | un reporte de producto        |
      | un reporte de establecimiento |

  Escenario: Transmisión cifrada
    Dado que el ciudadano usa MediVerifica
    Cuando la información del ciudadano viaja al servidor
    Entonces la conexión usa HTTPS con TLS 1.2 o superior
