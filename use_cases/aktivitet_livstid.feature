Feature: Aktivitets livstid
  Scenario: Medarbejderen er logget ind som projektleder
    Given Projektlederen er tildelt projektet
    When Projektlederen opretter en aktivitet
    And Medarbejderen vælger et tidsbudget
    And Medarbejderen vælger en startdato
    And Medarbejderen vælger en slutdato
    Then Kan projektlederen oprette en aktivitet
    When Projektlederen fjerner en aktivitet
    Then Kan projektlederen fjerne en aktivitet

  Scenario: Medarbejderen er logget ind som medarbejder
    Given Medarbejderen er tildelt et projekt og projektet har en projektleder
    When Medarbejderen opretter en aktivitet
    Then Kan medarbejderen ikke oprette en aktivitet
    When Medarbejderen fjerner en aktivitet
    Then Kan medarbejderen ikke fjerne en aktivitet

  Scenario: Medarbejderen er logget ind som medarbejder
    Given Medarbejderen er tildelt et projekt og projektet har ikke en projektleder
    When Medarbejderen opretter en aktivitet
    And Medarbejderen vælger et tidsbudget
    And Medarbejderen vælger en startdato
    And Medarbejderen vælger en slutdato
    Then Kan medarbejderen oprette en aktivitet
    When Medarbejderen fjerner en aktivitet
    Then Kan medarbejderen fjerne en aktivitet

  Scenario: Medarbejderen er logget ind
    Given Medarbejderen er tildelt et projekt som har en projektleder
    Then Medarbejderen kan se aktiviteterne
    And Medarbejderen kan tilføje en fast aktivitet
    And Medarbejderen vælger en startdato
    And Medarbejderen vælger en slutdato
    When Medarbejderen fjerne en fast aktivitet
    Then Kan medarbejderen fjerne en fast aktivitet