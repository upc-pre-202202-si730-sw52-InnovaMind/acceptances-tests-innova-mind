Feature: Como empresa no registrada en la aplicación, deseo crearme una cuenta, para poder acceder a las características de la app.
    Scenario: E01: Registro exitoso
        TA01

        Given se encuentra en el formulario de registro de cuenta para empresas
        When ingresa un número de RUC no registrado, su correo electrónico asociado (no registrado), y una contraseña válida (mayor o igual a 8 caracteres que incluyan al menos una letra y un número) junto a la confirmación de contraseña (la misma contraseña escrita correctamente).
        And presiona el botón “Register”
        Then la app le mostrará un mensaje diciéndole que está registrado, pero que tiene que confirmar la cuenta abriendo el link de confirmación enviado a su correo electrónico.

        Examples:
            | RUC         | correo-electronico | contraseña | confirmar contraseña | Resultado |
            | 10202255431 | liventur@gmail.com | admin123@# | admin123@#           | Fuiste registrado de manera exitosa, ir a login para iniciar sesión |

    Scenario: E02: Registro inválido
        TA02

        Given se encuentra en el formulario de registro de cuenta para empresas.
        When ingresa un correo electrónico registrado pero los demás datos son correctos.
        And presiona el botón “Register”.
        Then la app le mostrará un mensaje diciéndole que el correo electrónico ya está registrado, y le sugiere iniciar sesión.

        Examples:
            | RUC         | correo-electronico | contraseña | confirmar contraseña | Resultado                     |
            | 10202255431 | liventur@gmail.com | admin123@# | admin123@#           | Este correo ya fue registrado |

    Scenario: E03: Intenta registrarse sin completar todos los campos
        TA03

        Given se encuentra en el formulario de registro de cuenta para empresas
        When no ingresa ningun dato solicitado como requerido
        And presiona el botón “Register”.
        Then la app le mostrará un mensaje indicando que debe completar todos los campos requeridos

        Examples:
            | RUC   | correo-electronico | contraseña | confirmar contraseña | Resultado                                |
            | ""    | ""                 | ""         |     ""               | Por favor completa los campos requeridos |

    Scenario: E04: Ingrega una contraseña de confirmación incorrecta
        TA04

        Given se encuentra en el formulario de registro de cuenta para empresas
        When ingresa la confirmación de la contraseña de manera incorrecta
        And presiona el botón “Register”.
        Then la app le mostrará un mensaje indicando que debe confirmar con la misma contraseña

        Examples:
            | RUC         | correo-electronico | contraseña | confirmar contraseña | Resultado                                  |
            | 10202255431 | liventur@gmail.com | admin123@# | admin123@#ASD        | Ingresa la misma contraseña para confirmar |