# language: es
@EP01 @US27
Característica: US27 Comprobar el registro sanitario
  Como consumidor que revisa el registro sanitario impreso en el empaque
  quiero comprobar si ese registro está vigente
  para saber si el producto está autorizado

  Esquema del escenario: Consulta del registro sanitario
    Dado que el consumidor se encuentra en la opción "Consultar registro sanitario"
    Y la base de registros sanitarios contiene:
      | registro | estado    | producto           |
      | EN-01234 | Vigente   | Paracetamol 500 mg |
      | EN-05678 | Cancelado | Naproxeno 550 mg   |
    Cuando el consumidor ingresa "<registro>"
    Entonces el sistema muestra "<resultado>"

    Ejemplos:
      | registro | resultado                                                |
      | EN-01234 | Registro vigente                                         |
      | EN-05678 | Registro no vigente                                      |
      | EN-99999 | No encontramos este registro sanitario. Revisa el código |
