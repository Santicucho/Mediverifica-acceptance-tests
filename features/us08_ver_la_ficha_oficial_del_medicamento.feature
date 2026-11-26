# language: es
@EP01 @US08
Característica: US08 Ver la ficha oficial del medicamento
  Como consumidor que no puede leer la letra pequeña del empaque
  quiero ver en letra grande los datos oficiales del registro sanitario del medicamento
  para confirmar que es el producto que me indicaron

  Esquema del escenario: Ficha disponible
    Dado que el consumidor ve el resultado de "<producto>"
    Y el producto figura en la base de registros sanitarios de DIGEMID
    Cuando el consumidor selecciona "Ficha del medicamento"
    Entonces el consumidor ve el principio activo "<principio activo>", la concentración "<concentración>", la forma farmacéutica "<forma>", el titular y la condición de venta "<condición>"
    Y el texto se muestra con un tamaño mínimo de 16 puntos

    Ejemplos:
      | producto           | principio activo  | concentración | forma              | condición         |
      | Losartán 50 mg     | Losartán potásico | 50 mg         | Tableta recubierta | Con receta médica |
      | Paracetamol 500 mg | Paracetamol       | 500 mg        | Tableta            | Sin receta médica |
      | Amoxicilina 500 mg | Amoxicilina       | 500 mg        | Cápsula            | Con receta médica |

  Escenario: Venta con receta
    Dado que el producto consultado tiene la condición de venta "Con receta médica"
    Cuando el consumidor abre la ficha del medicamento
    Entonces el consumidor ve el aviso "Este medicamento se vende solo con receta médica"

  Escenario: Producto sin ficha
    Dado que el producto consultado no figura en la base de registros sanitarios
    Cuando el consumidor selecciona "Ficha del medicamento"
    Entonces el consumidor ve el mensaje "No encontramos la ficha oficial de este producto"
