Feature: lav_aktivitet
	Description: Opret aktiviteter.
	Actors: Medarbejder, Projektleder

	Background:
		Given Der er oprettet et projekt

	Scenario: Medarbejder prøver at oprette en aktivitet (med projektleder)
		Given en medarbejder er logget ind
		And der er et projekt uden nogen aktiviteter
		And projektet har en projektleder
		When medarbejderen prøver at oprette en aktivitet "Aktivitet 1" med startsugen 19 og slutugen 20
		Then fejlbeskeden er givet "Du kan ikke ændre aktiviteter på dette projekt"
		And er der ingen aktiviteter i projektet

	Scenario: Medarbejder prøver at oprette en aktivitet (uden projektleder)
		Given en medarbejder er logget ind
		And der er et projekt uden nogen aktiviteter
		And projektet har ikke en projektleder
		When medarbejderen prøver at oprette en aktivitet "Aktivitet 1" med startsugen 19 og slutugen 20
		Then er der en aktivitet i projektet

	Scenario: Projektleder prøver at oprette en aktivitet
		Given en medarbejder er logget ind
		And der er et projekt uden nogen aktiviteter
		And medarbejderen er projektlederen
		When medarbejderen prøver at oprette en aktivitet "Aktivitet 1" med startsugen 19 og slutugen 20
		Then er der en aktivitet i projektet "Aktivitet 1"

	Scenario: Projektleder prøver at oprette en delvis udfyldt aktivitet
		Given en medarbejder er logget ind
		And der er et projekt uden nogen aktiviteter
		And medarbejderen er projektlederen
		When medarbejderen prøver at oprette en aktivitet "Aktivitet 1"
		Then er der en aktivitet i projektet "Aktivitet 1"