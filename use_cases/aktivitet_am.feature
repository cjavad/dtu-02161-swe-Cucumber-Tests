Feature: Ændre anførte medarbejder for aktivitet
	Background:
		Given der er projekt med ID "2022-01"
		And der er en aktivitet med navn "Aktivitet 1" i projekt med ID "2022-01"
		And der eksistere medarbejder "abcd"
		And medarbejder "abcd" er en medlem af projekt med ID "2022-01"
		And medarbejder "abcd" er anførte til aktivitet med navn "Aktivitet 1"
		And der eksistere medarbejder "cdef"
		And medarbejder "cdef" er en medlem af projekt med ID "2022-01"
		And der eksistere medarbejder "defg"
		And der eksistere en medarbejder "aaaa" som er medlem af projektet "2022-01"
		And der eksistere en medarbejder "bbbb" som er projektleder af projektet "2022-01"

	Scenario: Medarbejder prøver at anføre/fjerne medarbejder til aktivitet
		Given en medarbejder er logget ind som "aaaa"
		When medarbejderen prøver at tilføj medarbejderen "cdef" til aktivitetet med navn "Aktivitet 1"
		Then kommer der fejlbesked "Skal være projektleder for at anføre medarbejder til aktivitet"
		When medarbejderen prøver at tilføj medarbejderen "defg" til aktivitetet med navn "Aktivitet 1"
		Then kommer der fejlbesked "Skal være projektleder for at anføre medarbejder til aktivitet"
		When medarbejderen prøver at fjerne medarbejderen "cdef" fra aktivitetet med navn "Aktivitet 1"
		Then kommer der fejlbesked "Skal være projektleder for at fjerne medarbejder fra aktivitet"
		
	Scenario: Projektleder prøver at anføre/fjerne medarbejder til aktivitet
		Given en medarbejder er logget ind som "bbbb"
		When medarbejderen prøver at anføre medarbejderen "cdef" til aktivitetet med navn "Aktivitet 1"
		Then er medarbejder "cdef" anførte til aktivitet med navn "Aktivitet 1"
		When medarbejderen prøver at anføre medarbejderen "defg" til aktiviteten med navn "Aktivitet 1"
		Then kommer der fejlbesked "Kan ikke tilføj medarbejder der er ikke en del af projektet"
		When medarbejderen prøver at fjerne medarbejderen "abcd" fra aktivitet med navn "Aktivitet 1"
		Then er medarbejderen "abcd" ikke længer anførte til aktivitet med navn "Aktivitet 1"
		When medarbejderen prøver at fjerne medarbejderen "defg" fra aktivitet med navn "Aktivitet 1"
		Then kommer der fjelbesked "Kan ikke fjerne medarbejder der er ikke anførte"
