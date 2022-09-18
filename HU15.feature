Feature: Como posible usuario deseo conocer a los integrantes del equipo 

    Scenario: E01: Internet estable

        Given el visitante se encuentra en la sección “Sobre nosotros” 
        When presione el botón de reproducir
        Then se reproducirá el video about the team dentro de la página.
        
    Scenario: E02: Internet inestable

        Given el visitante se encuentra en la sección “Sobre nosotros” 
        When presione el botón de reproducir 
        Then el video no se reproducirá y el usuario deberá recargar la web.