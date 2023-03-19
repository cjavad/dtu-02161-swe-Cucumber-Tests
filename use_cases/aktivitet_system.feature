Feature: Oprettelse af fast aktiviteter
  Description: Opret en fast aktivitet der er seperat fra et projekt
  Actors: Medarbejder, Softwarehuset A/S

  Background:
    Given ingen projekter oprettet

  Scenario: Medarbejder prover at opret et fast aktivitet
      Given en medarbejder er logget ind
      And der er ingen fast aktiviteter
      When medarbejderen prover at opret et fast aktivitet
      Then er der ingen fast aktiviteter

  Scenario: Softwarehuset A/S prover at opret et fast aktivitet
      Given Softwarehuset A/S er logget ind
      And der er ingen fast aktiviteter
      When Softwarehuset A/S prover at opret et fast aktivitet
      Then er der en fast aktivitet

  Scenario: Medarbejder prover at slet fast aktivitet
      Given en medarbejder er logget ind
      And der er et fast aktivitet
      When medarbejder prover at slet fast aktivitetet
      Then er der en fast aktivitet

  Scenario: Softwarehuset A/S prover at slet et fast aktivitet
      Given Softwarehuset A/S er logget ind
      And der er et fast aktivitet
      When Softwarehuset A/S prover at slet et fast aktivitet
      Then er der ingen fast aktiviteter
