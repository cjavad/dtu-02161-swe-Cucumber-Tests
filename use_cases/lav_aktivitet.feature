Feature: lav_aktivitet
	Description: Opret aktiviteter.
	Actors: Medarbejder, Projektleder

	Background:
		Given brugeren "aaaa" findes
		And brugeren "bbbb" findes
		And Medarbejderen er logget ind som Softwarehuset A/S
		And Medarbejderen opretter et projekt "2022-01"
		And Medarbejderen tilknytter brugeren "aaaa" som projektleder til "2022-01"
		And Medarbejderen opretter et projekt "2022-01" (Uden projektleder)

	Scenario: Medarbejder prøver at oprette en aktivitet (med projektleder)
		Given en medarbejder er logget ind som "bbbb" på projektet "2022-01"
		When medarbejderen prøver at oprette en aktivitet "Aktivitet 1" med start tidspunktet "19-2022" og slut tidspunktet "20-2022"
		Then fejlbeskeden er givet "Du kan ikke ændre aktiviteter på dette projekt"
		And er der ingen aktiviteter i projektet

	Scenario: Medarbejder prøver at oprette en aktivitet (uden projektleder)
		Given en medarbejder er logget ind som "bbbb" på projektet "2022-02"
		When medarbejderen prøver at oprette en aktivitet "Aktivitet 1" med start tidspunktet "19-2022" og slut tidspunktet "20-2022"
		Then er der en aktivitet i projektet

	Scenario: Projektleder prøver at oprette en aktivitet
		Given en medarbejder er logget ind som "aaaa" på projektet "2022-01"
		When medarbejderen prøver at oprette en aktivitet "Aktivitet 1" med start tidspunktet "19-2022" og slut tidspunktet "20-2022"
		Then er der en aktivitet i projektet "Aktivitet 1"

	Scenario: Projektleder prøver at oprette en delvis udfyldt aktivitet
		Given en medarbejder er logget ind som "aaaa" på projektet "2022-01"
		When medarbejderen prøver at oprette en aktivitet "Aktivitet 1"
		Then er der en aktivitet i projektet "Aktivitet 1"

	Scenario:
