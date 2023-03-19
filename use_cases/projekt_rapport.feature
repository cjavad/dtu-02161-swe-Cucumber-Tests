Feature: Opret og se rapporter for en aktivitet og et projekt
  Description:
  Actors: Projektleder

  Background:
    Given medarbejderen er logget ind
    And der findes et projekt "Projekt 1"
    And medarbejderen er projektleder på "Projekt 1"

  Scenario: Generere rapport for et projekt
    Given projektlederen opretter en aktivitet "Aktivitet 1" med startuge 10 og slutuge 20.
    And projektlederen opretter en aktivitet "Aktivitet 2" med startuge 11 og slutuge 19.
    And projektlederen opretter en aktivitet "Aktivitet 3".
    When projektlederen vælger at generere rapport for projektet.
    Then


  Scenario: Generere rapport for en aktivitet
    Given Medarbejderen er logget ind som Projektleder på et projekt
    When Medarbejderen vælger at generere rapport for en aktivitet
    Then Medarbejderen skal kunne se en rapport for en aktivitet