Feature: Como posible usuario conocer más sobre el equipo que desarrolla la aplicación para adquirir confianza en dicho equipo

    Scenario: E01: Visualización correcta 

        Given el visitante se encuentra en el landing page 
        When seleccione la sección “Sobre nosotros” en la barra de navegación
        Then se muestra la sección para para conocer más sobre el equipo de trabajo

        Given el visitante empleador se encuentra en la sección “about us”
        When observe el video about the team
        Then se siente motivado a usar el servicio porque hay un equipo de jóvenes que lo respalda