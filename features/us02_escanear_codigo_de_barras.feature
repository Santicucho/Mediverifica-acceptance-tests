# language: es
@EP01 @US02
Característica: US02 Escanear código de barras
  Como consumidor que está apurado en la botica
  quiero escanear el código de barras del empaque
  para verificar el medicamento sin escribir

  Esquema del escenario: Código leído
    Dado que el consumidor ha otorgado el permiso de cámara
    Y la cámara está abierta en la opción "Escanear"
    Cuando el consumidor apunta la cámara al código de barras "<código>"
    Entonces el sistema muestra el resultado "<resultado>" en menos de 3 segundos

    Ejemplos:
      | código        | resultado               |
      | 7750123456789 | Sin alertas registradas |
      | 7750987654321 | Lote con alerta         |
      | 7750111222333 | Lote con alerta         |

  Escenario: Código ilegible
    Dado que la cámara está abierta en la opción "Escanear"
    Cuando pasan 10 segundos sin que el sistema lea el código
    Entonces el sistema muestra el mensaje "No pudimos leer el código"
    Y el sistema muestra la opción "Ingresar lote manualmente"

  Escenario: Permiso de cámara denegado
    Dado que el consumidor ha denegado el permiso de cámara
    Cuando el consumidor selecciona la opción "Escanear"
    Entonces el sistema muestra un mensaje que explica cómo activar el permiso de cámara
