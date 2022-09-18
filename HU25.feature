Feature: Como chofer quiero conocer en una landing page sobre los beneficios de la aplicación para mi rol.

    Scenario: E01: Visualización correcta de la sección

        Given el visitante se encuentra en el landing page 
        When seleccione la sección “Choferes” en la barra de navegación 
        Then se muestra la sección para choferes
                
        Given estoy en la sección de choferes
        When reproduzco el video about the product
        Then entiendo los beneficios de la app