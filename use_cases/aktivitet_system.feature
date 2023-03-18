@ProjectFeature
Feature:
  Scenario: Opret fast aktivitet uden for projekt (system)
    Given Medarbejderen er logget ind
    When Medarbejderen vælger "Opret aktivitet"
    And Medarbejderen vælger "Fast aktivitet"
    And Medarbejderen vælger "Opret"
    Then En ny fast aktivitet er oprettet
