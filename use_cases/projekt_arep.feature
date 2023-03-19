Feature: Opret rapporter over aktiviteters timeforbrug
  Description:
  Actors: Projektleder

  Background:
    Given medarbejderen er logget ind som "Gubs"
    And der findes et projekt med ID "2022-01"
    And medarbejderen med ID "Gubs" er projektleder for projektet med ID "2022-01"

  Scenario: Generere rapport hvor en aktivitet er over tid
    Given at der findes en aktivitet med start tidspunkt i "01-2022" og slut tidspunkt "02-2022" ved navn "Feeding gibbon monkeys" og budgetteret tid på 10 timer
    And en anden medarbejder med ID "Gibs" har anført 11.5 timer på aktiviteten
    Then så er aktivitetens overtid 1.5 time

  Scenario: Generere rapport hvor en aktivitet er under tid
    Given at der findes en aktivitet med start tidspunkt i "01-2022" og slut tidspunkt "02-2022" ved navn "Feeding gibbon monkeys" og budgetteret tid på 10 timer
    And en anden medarbejder med ID "Gibs" har anført 9 timer på aktiviteten
    Then så er aktivitetens overtid -1 time

  Scenario: Generere rapport hvor aktiviteten ikke har budgetteret tid
    Given at der findes en aktivitet med start tidspunkt i "01-2022" og slut tidspunkt "02-2022" ved navn "Travelling in an infinite instantaneous time loop"
    And en anden medarbejder med ID "Gibs" har anført 9 timer på aktiviteten
    Then så er aktivitetens overtid en null pointer

  Scenario: Generere rapport hvor aktiviteten ikke har nogen anførte timer
    Given at der findes en aktivitet med start tidspunkt i "01-2022" og slut tidspunkt "02-2022" ved navn "Chill at Q8" og budgetteret tid på 10 timer
    Then så er aktivitetens overtid lig 0
