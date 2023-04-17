Feature: se_projekter_man_er_medlem_af
  Background:
    Given medarbejderen "aaaa" er logget ind
    And medarbejderen "aaaa" er medlem af projektet "Projekt 1"
    And medarbejderen "aaaa" er medlem af projektet "Projekt 2"
    And medarbejderen "bbbb" findes
    And medarbejderen "bbbb" er medlem af projektet "Projekt 1"
    And medarbejderen "bbbb" er medlem af projektet "Projekt 3"

    Scenario:
        When medarbejderen "aaaa" går til "Projekter"
        Then skal der være "Projekt 1" i listen
        And skal der være "Projekt 2" i listen
        And skal der ikke være "Projekt 3" i listen

    Scenario:
      When medarbejderen "bbbb" går til "Projekter"
      Then skal der være "Projekt 1" i listen
      And skal der ikke være "Projekt 2" i listen
      And skal der være "Projekt 3" i listen