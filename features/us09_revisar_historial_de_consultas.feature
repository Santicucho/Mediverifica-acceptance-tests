# language: es
@EP01 @US09
Característica: US09 Revisar historial de consultas
  Como consumidor que verifica varios medicamentos al mes
  quiero ver mis consultas anteriores
  para revisarlas sin volver a escanear el empaque

  Esquema del escenario: Historial con consultas
    Dado que el consumidor ha realizado <consultas> consultas en el dispositivo
    Cuando el consumidor abre "Historial"
    Entonces el sistema muestra las <mostradas> consultas más recientes con el nombre del producto, la fecha y el resultado

    Ejemplos:
      | consultas | mostradas |
      | 5         | 5         |
      | 20        | 20        |
      | 35        | 20        |

  Escenario: Historial vacío
    Dado que el consumidor no ha realizado consultas en el dispositivo
    Cuando el consumidor abre "Historial"
    Entonces el sistema muestra el mensaje "Aún no tienes consultas"

  Escenario: Borrado del historial
    Dado que el consumidor se encuentra en "Historial"
    Cuando el consumidor selecciona "Borrar historial" y confirma la acción
    Entonces el sistema elimina las consultas guardadas en el dispositivo
