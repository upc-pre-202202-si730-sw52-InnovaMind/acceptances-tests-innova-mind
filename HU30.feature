Feature: Como reclutador quiero comunicarme con el chofer de mi preferencia
Scenario: Desplazamiento a la seccion “Messages”
    CA01

    Dado que el reclutador se encuentra en la aplicacion web
    Cuando se ubique en la barra lateral izquierda
    Y seleccione la opcion “Messages”
    Entonces visualizara los contactos con los que ha conversado previamente.

    Examples:
        | messages             |
        | "Hello good morning" |
        | "I called you"       |


Scenario: Seleccion de contacto
    CA02

    Dado que el reclutador se encuentra en la seccion “Messages” de la aplicacion web
    Cuando seleccione al contacto con el que quiere comunicarse
    Entonces visualizara todos los mensajes que ha enviado y recibido.

    Examples:
        | messages             | contact   |
        | "Hello good morning" | "John"    |
        | "Nice to meet you"   | "Markus"  |
        | "I called you"       |  "Sertin" |