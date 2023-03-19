Feature: Aktive og inaktive projekter
	Description: Behandeling af projekter, inklusiv navn.
	Actors: Softwarehuset A/S, Medarbejder, Projektleder

	Background:
		Given den nuværrende dato er "51-2023"
		And brugeren "aaaa" findes
		And brugeren "bbbb" findes
		And brugeren er logget ind som Softwarehuset A/S
		And brugeren opretter et projekt "2022-01"
		And brugeren tilknytter "aaaa" som projektleder til "2022-01"
		And brugeren tilknytter "bbbb" som medlem af "2022-01"
		And brugeren opretter en aktivitet "Aktivitet Overskredet" med start tidspunktet "16-2022" og slut tidspunktet "22-2023"
		And brugeren opretter et projekt "2022-02"
		And brugeren opretter en aktivitet "Aktivitet Igangværende" med start tidspunktet "16-2023" og slut tidspunktet "52-2023"
		And brugeren tilknytter "aaaa" som projektleder til "2022-01"

	Scenario: Se projekter som projektleder
		Given medarbejderen er logget ind som "aaaa"
		When medarbejderen vælger "Projekter"
		Then skal medarbejderen se en liste over aktive projekter
		And medarbejderen kan se et projekt "2022-02"
		When medarbejden vælger "Inaktive projekter"
		Then medarbejderen kan se et projekt "2022-01"

	Scenario: Se projekter som medarbejder
		Given medarbejderen er logget ind som "bbbb"
		When medarbejderen vælger "Projekter"
		Then skal medarbejderen se en liste over aktive projekter
		And medarbejderen kan se 0 projekter
		When medarbejden vælger "Inaktive projekter"
		Then medarbejderen kan se et projekt "2022-01"

	Scenario: Ændre navn på et projekt som projektleder
		Given medarbejderen er logget ind som "aaaa"
		When brugeren vælger "Projekter"
		And brugeren redigerer et projekt med navnet "Projekt 2 - Næste uge"
		Then brugeren får en fejlbesked "Kun Softwarehuset A/S kan ændre projekter"

	Scenario: Ændre navn på et projekt som Softwarehuset A/S
		Given medarbejderen er logget ind som Softwarehuset A/S
		When medarbejderen vælger "Projekter"
		Then skal medarbejderen se 1 projekt "2022-02" uden navn.
		When medarbejderen redigere et projekt med navnet "Projekt 2 - Næste uge"
		Then projektet "2022-02" har navnet "Projekt 2 - Næste uge"
		Given medarbejderen er logget ind som "aaaa"
		When medarbejderen vælger "Projekter"
		Then skal medarbejderen se 1 projekt "2022-02" med navnet "Projekt 2 - Næste uge"