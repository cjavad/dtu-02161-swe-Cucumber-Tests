Feature: anfør_medarbejder_fast_aktivitet
  Background:
    Given medarbejderen er logget ind som Softwarehuset A/S
    And der findes en medarbejder "aaaa"
    And der findes en medarbejder "bbbb"
    And der findes en medarbejder "cccc"

  Scenario:
    When medarbejderen at oprette en ny fast aktivitet "Fast aktivitet 1" med start tidpunktet "10-2023" og slut tidpunktet "11-2023"
    Then der er en fast aktivitet "Fast aktivitet 1"
    When medarbejderen anfører "aaaa" til "Fast aktivitet 1"
    Then er medarbejderen "aaaa" anført "Fast aktivitet 1"
    When medarbejderen anfører "bbbb" til "Fast aktivitet 1"
    Then er medarbejderen "aaaa" og "bbbb" anført "Fast aktivitet 1"
    And medarbejderen "cccc" er ikke anført "Fast aktivitet 1"

    # TODO: Sæt sammen med at se ledighed på medarbejderene ift. en fast aktivitet