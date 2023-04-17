Feature: oprettetelse af fast aktiviteter
  Description: oprette en fast aktivitet der er seperat fra et projekt
  Actors: Medarbejder, Softwarehuset A/S

  Background:
    Given ingen projekter oprettetet

  Scenario: Medarbejder prøver at oprette en fast aktivitet
      Given en medarbejder er logget ind
      And der er ingen fast aktiviteter
      When medarbejderen prøver at oprette en fast aktivitet
      Then er der ingen fast aktiviteter

  Scenario: Softwarehuset A/S prøver at oprette en fast aktivitet
      Given Softwarehuset A/S er logget ind
      And der er ingen fast aktiviteter
      When Softwarehuset A/S prøver at oprette en fast aktivitet
      Then er der en fast aktivitet

  Scenario: Medarbejder prøver at slette fast aktivitet
      Given en medarbejder er logget ind
      And der er et fast aktivitet
      When medarbejder prøver at slette fast aktivitetet
      Then er der en fast aktivitet

  Scenario: Softwarehuset A/S prøver at slette en fast aktivitet
      Given Softwarehuset A/S er logget ind
      And der er et fast aktivitet
      When Softwarehuset A/S prøver at slette en fast aktivitet
      Then er der ingen fast aktiviteter
