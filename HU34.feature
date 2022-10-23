Feature: Como recruiter quiero recibir notificaciones de los perfiles de drivers que más destacan

    Scenario: E01: Visualizar los perfiles de drivers más destacados
        TA01

        Given el recruiter se encuentra en busca de drivers.
        When ingresa en la sección “notifications”.
        Then visualiza las últimas notificaciones de los  perfiles de drivers más destacados.  

        Examples:
            | Notifications                                         |
            | Guillermo Diaz  Wants to work for you                 |

    Scenario: E02: Visualizar el perfil del drivers de la notificación 
        TA02

        Given se encuentra en la sección “notifications”.
        When selecciona la opción “view”.
        Then lo redirecciona al perfil del driver.


        Examples:
            | Notifications                         |   View                                                                                                                                                        |
            | Guillermo Diaz  Wants to work for you |   Experience as a truck driver in driving with a semi-trailer, trailer and coupled with the guarantee of safety and the driving experience that this entails. |

    Scenario: E03: Eliminar las notificaciones 
        TA03

        Given se encuentra en la sección “notifications”.
        When selecciona la opción “delete”.
        Then  se elimina la notificación.


        Examples:
            | Notifications                         |   Delete               |
            | Guillermo Diaz  Wants to work for you |   Notification removed |
            

    