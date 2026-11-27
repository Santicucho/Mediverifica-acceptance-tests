# MediVerifica · Pruebas de aceptación

Pruebas de aceptación del proyecto **MediVerifica** (startup Verifica Salud), curso 1ASI0786 Ingeniería de Requisitos.
Están escritas en **Gherkin en español** (Dado / Cuando / Entonces) a partir de las historias de usuario y los criterios de aceptación del informe.

- **21 archivos `.feature`** con **49 escenarios**. Todos los escenarios tienen datos de prueba (108 casos al ejecutarse).
- Cubren las épicas de core business **EP01** (verificación de medicamentos) y **EP03** (alertas para boticas) y las **4 historias no funcionales** de mayor prioridad (US05, US23, US22 y US21).

## Cómo abrirlo en Visual Studio Code

1. Descarga o clona el repositorio y ábrelo en VS Code (**Archivo > Abrir carpeta…**).
2. Instala las extensiones **Cucumber (Gherkin) Full Support** y **Cucumber Official**. Sirven para resaltar la sintaxis, autocompletar y dar formato a las tablas.
3. Abre cualquier archivo de la carpeta `features/`.

Para comprobar que la sintaxis de todos los archivos es correcta (opcional, necesita Node.js):

```bash
npm install
npm run validar
```

## Estructura

Todos los archivos están en la carpeta `features/`. Cada uno lleva la etiqueta de su épica, así que se pueden agrupar por épica sin subcarpetas:

- **EP01** (verificación de medicamentos, consumidor): 9 archivos.
- **EP03** (alertas para boticas, dueño de botica): 8 archivos.
- **No funcionales** (atributos de calidad): 4 archivos.

## Cómo leer una prueba

Cada archivo empieza con `# language: es` y con etiquetas que indican la épica y la historia (por ejemplo, `@EP01 @US01`). Así se pueden ejecutar las pruebas por épica o por historia.

- **Característica:** la historia de usuario en formato *Como… quiero… para…*
- **Escenario:** un criterio de aceptación, con un solo comportamiento.
- **Esquema del escenario + Ejemplos:** el mismo comportamiento probado con varios datos (tabla de ejemplos).
- **Data table dentro de un paso:** datos de partida que el escenario necesita, por ejemplo la lista de retiros de una botica.
- **Dado** describe el estado inicial, **Cuando** la acción del actor y **Entonces** el resultado esperado.

Cada escenario lo vive el mismo actor de la historia, por ejemplo el consumidor o el dueño de botica, y usa los mismos mensajes y datos definidos en los criterios de aceptación del informe.

## Trazabilidad historia → prueba

| User Story | Título | Épica | Archivo | Escenarios |
|---|---|---|---|---|
| US01 | Consultar por número de lote | EP01 | [`us01_consultar_por_numero_de_lote.feature`](features/us01_consultar_por_numero_de_lote.feature) | 2 |
| US02 | Escanear código de barras | EP01 | [`us02_escanear_codigo_de_barras.feature`](features/us02_escanear_codigo_de_barras.feature) | 3 |
| US06 | Buscar por nombre del producto | EP01 | [`us06_buscar_por_nombre_del_producto.feature`](features/us06_buscar_por_nombre_del_producto.feature) | 1 |
| US07 | Ver detalle de la alerta | EP01 | [`us07_ver_detalle_de_la_alerta.feature`](features/us07_ver_detalle_de_la_alerta.feature) | 3 |
| US08 | Ver la ficha oficial del medicamento | EP01 | [`us08_ver_la_ficha_oficial_del_medicamento.feature`](features/us08_ver_la_ficha_oficial_del_medicamento.feature) | 3 |
| US09 | Revisar historial de consultas | EP01 | [`us09_revisar_historial_de_consultas.feature`](features/us09_revisar_historial_de_consultas.feature) | 3 |
| US26 | Compartir el resultado | EP01 | [`us26_compartir_el_resultado.feature`](features/us26_compartir_el_resultado.feature) | 2 |
| US27 | Comprobar el registro sanitario | EP01 | [`us27_comprobar_el_registro_sanitario.feature`](features/us27_comprobar_el_registro_sanitario.feature) | 1 |
| US28 | Ver alertas recientes | EP01 | [`us28_ver_alertas_recientes.feature`](features/us28_ver_alertas_recientes.feature) | 2 |
| US13 | Registrar botica | EP03 | [`us13_registrar_botica.feature`](features/us13_registrar_botica.feature) | 1 |
| US04 | Recibir notificación de nuevas alertas | EP03 | [`us04_recibir_notificacion_de_nuevas_alertas.feature`](features/us04_recibir_notificacion_de_nuevas_alertas.feature) | 3 |
| US14 | Revisar los lotes de un pedido | EP03 | [`us14_revisar_los_lotes_de_un_pedido.feature`](features/us14_revisar_los_lotes_de_un_pedido.feature) | 2 |
| US31 | Revisar el historial de alertas | EP03 | [`us31_revisar_el_historial_de_alertas.feature`](features/us31_revisar_el_historial_de_alertas.feature) | 2 |
| US32 | Registrar lotes retirados | EP03 | [`us32_registrar_lotes_retirados.feature`](features/us32_registrar_lotes_retirados.feature) | 3 |
| US33 | Dar acceso a los empleados de la botica | EP03 | [`us33_dar_acceso_a_los_empleados_de_la_botica.feature`](features/us33_dar_acceso_a_los_empleados_de_la_botica.feature) | 3 |
| US34 | Iniciar sesión como botica | EP03 | [`us34_iniciar_sesion_como_botica.feature`](features/us34_iniciar_sesion_como_botica.feature) | 2 |
| US42 | Recibir resumen diario de alertas por correo | EP03 | [`us42_recibir_resumen_diario_de_alertas_por_correo.feature`](features/us42_recibir_resumen_diario_de_alertas_por_correo.feature) | 3 |
| US05 | Consulta en menos de 10 segundos | EP04 (NF) | [`us05_consulta_en_menos_de_10_segundos.feature`](features/us05_consulta_en_menos_de_10_segundos.feature) | 2 |
| US23 | Base de alertas actualizada | EP04 (NF) | [`us23_base_de_alertas_actualizada.feature`](features/us23_base_de_alertas_actualizada.feature) | 2 |
| US22 | Uso anónimo de la aplicación | EP04 (NF) | [`us22_uso_anonimo_de_la_aplicacion.feature`](features/us22_uso_anonimo_de_la_aplicacion.feature) | 3 |
| US21 | Texto ampliado y lector de pantalla | EP04 (NF) | [`us21_texto_ampliado_y_lector_de_pantalla.feature`](features/us21_texto_ampliado_y_lector_de_pantalla.feature) | 2 |

NF = historia no funcional.
