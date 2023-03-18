Feature: Opret og se rapporter for en aktivitet og et projekt
  Scenario: Generere rapport for et projekt
    Given Medarbejderen er logget ind som Projektleder på et projekt
    When Medarbejderen vælger at generere rapport for et projekt
    Then Medarbejderen skal kunne se en rapport for et projekt

  Scenario: Generere rapport for en aktivitet
    Given Medarbejderen er logget ind som Projektleder på et projekt
    When Medarbejderen vælger at generere rapport for en aktivitet
    Then Medarbejderen skal kunne se en rapport for en aktivitet