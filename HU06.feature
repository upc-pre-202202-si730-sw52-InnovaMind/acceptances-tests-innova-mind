Feature: Como empresa no registrada en la aplicación, deseo crearme una cuenta, para poder acceder a las características de la app.
    Scenario: E01: Registro exitoso
        TA01

        Given se encuentra en el formulario de registro de cuenta para empresas
        When ingresa un número de RUC no registrado, su correo electrónico asociado (no registrado), y una contraseña válida (mayor o igual a 8 caracteres que incluyan al menos una letra y un número) junto a la confirmación de contraseña (la misma contraseña escrita correctamente).
        And presiona el botón “Register”
        Then la app le mostrará un mensaje diciéndole que está registrado, pero que tiene que confirmar la cuenta abriendo el link de confirmación enviado a su correo electrónico.

        Examples:
            | RUC         | correo-electronico | contraseña | confirmar contraseña | Resultado |
            | 10202255431 | liventur@gmail.com | admin123@# | admin123@#           | Gracias por registrarse. Revise su correo para verificación |

    Scenario: E02: Registro inválido
        TA02

        Given se encuentra en el formulario de registro de cuenta para empresas.
        When ingresa un correo electrónico registrado pero los demás datos son correctos.
        And presiona el botón “Register”.
        Then la app le mostrará un mensaje diciéndole que el correo electrónico ya está registrado, y le sugiere iniciar sesión.

        Examples:
            | RUC         | correo-electronico | contraseña | confirmar contraseña | Resultado |
            | 10202255431 | liventur@gmail.com | admin123@# | admin123@#           | Este correo ya se encuentra en uso. Le recomendamos iniciar sesión |
           