# language: es
@EP01 @US28
Característica: US28 Ver alertas recientes
  Como consumidor que no conocía las alertas de DIGEMID
  quiero ver las últimas alertas publicadas
  para estar informado aunque no tenga un producto a la mano

  Escenario: Lista de alertas
    Dado que existen las siguientes alertas publicadas en los últimos 30 días
        | alerta      | producto          | fecha      |
        | N.° 41-2026 | Ibuprofeno 400 mg | 05/11/2026 |
        | N.° 45-2026 | Apronax 550 mg    | 21/11/2026 |
        | N.° 44-2026 | Cefalexina 500 mg | 18/11/2026 |
    Cuando el consumidor abre "Alertas recientes"
    Entonces el sistema muestra las alertas en este orden: "N.° 45-2026", "N.° 44-2026" y "N.° 41-2026", con el producto, el número de alerta y la fecha

  Escenario: Sin alertas recientes
    Dado que no se publicaron alertas en los últimos 30 días
    Cuando el consumidor abre "Alertas recientes"
    Entonces el sistema muestra el mensaje "No hay alertas nuevas en los últimos 30 días"
    Y el sistema muestra la opción "Ver alertas anteriores"
