# language: es
@EP03 @US34
Característica: US34 Iniciar sesión como botica
  Como dueño de botica registrado
  quiero iniciar sesión con mi correo y contraseña
  para revisar mis alertas desde otro celular

  Esquema del escenario: Inicio de sesión de la botica
    Dado que la botica está registrada con el correo "botica@correo.com" y la contraseña "Segura#2026"
    Cuando el dueño de botica ingresa el correo "<correo>" y la contraseña "<clave>"
    Entonces el dueño de botica ve "<resultado>"

    Ejemplos:
      | correo            | clave       | resultado                          |
      | botica@correo.com | Segura#2026 | la pantalla "Alertas de mi botica" |
      | botica@correo.com | otraClave   | Correo o contraseña incorrectos    |
      | otro@correo.com   | Segura#2026 | Correo o contraseña incorrectos    |

  Escenario: Bloqueo temporal
    Dado que se ingresó 5 veces seguidas una contraseña incorrecta
    Cuando el dueño de botica intenta iniciar sesión otra vez
    Entonces el sistema bloquea el inicio de sesión durante 15 minutos
