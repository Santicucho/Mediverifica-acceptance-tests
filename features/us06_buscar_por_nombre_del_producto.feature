# language: es
@EP01 @US06
Característica: US06 Buscar por nombre del producto
  Como consumidor que no encuentra el número de lote en el empaque
  quiero buscar el medicamento por su nombre
  para saber si tiene alertas de DIGEMID

  Esquema del escenario: Búsqueda por nombre
    Dado que el consumidor se encuentra en la opción "Buscar por nombre"
    Cuando el consumidor ingresa "<texto>"
    Entonces el sistema muestra "<respuesta>"

    Ejemplos:
      | texto     | respuesta                                          |
      | Apronax   | la lista de productos con "Apronax 550 mg" en rojo |
      | Zzzproduc | No encontramos productos con ese nombre            |
      | Ap        | Escribe al menos 3 letras                          |
