Feature: ændre_tilknyttet_medarbejder_projekt
  Background:
    Given en medarbejder "aaaa" eksistere
    And en medarbejder "bbbb" eksistere
    And projektet "Projekt 1" eksistere
    And projektet "Projekt 2" eksistere
    And medarbejderen "aaaa" er tilknyttet projektet "Projekt 1"
    And medarbejderen "bbbb" er tilknyttet projektet "Projekt 1"
    And medarbejderen "aaaa" er projektleder for projektet "Projekt 1"
    And medarbejderen "bbbb" er tilknyttet projektet "Projekt 2"
    And medarbejderen "cccc" eksistere

  Scenario:
    Given medarbejderen er logget ind som Systemhuset A/S på projektet "Projekt 1"
    When medarbejderen tilknytter


  Scenario:
    Given medarbejderen er logget ind som "aaaa"

  Scenario:
    Given medarbejderen er logget ind som "bbbb"