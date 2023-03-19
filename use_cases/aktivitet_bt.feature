Feature: Ændrer tidsbudget af en aktivitet
	Background:
		Given der er en projekt med ID "2022-01"
		And der er en aktivitet med navn "Aktivitet 1" i projekt med ID "2022-01" og tidsbudgettet 100 timer
		And der er en aktivitet med navn "Aktivitet 2" i projekt med ID "2022-01" og intet tidsbudget.
		And brugeren "abcd" er projektleder på projektet "2022-01"
		And brugeren "cdcd" er tilknyttet projektet "2022-01"

	Scenario: Medarbejder prover at ændrer tidsbudget
		Given en medarbejder er logget ind som "cdcd"
		When medarbejderen prover at ændrer "Aktivitet 1" tidsbudgettet til 140 timer
		Then medarbejderen får en fejlbesked "Man skal være projektleder for at ændre timerne"
		And tidsbudgettet på "Aktivitet 1" er 100 timer
		
	Scenario: Projektleder prover at ændrer tidsbudget
		Given en medarbejder er logget ind som "abcd"
		When medarbejderen prover at ændrer "Aktivitet 1" tidsbudgettet til 140 timer
		Then tidsbudgettet på "Aktivitet 1" er 140 timer
		
	Scenario: Medarbejder prover at tilføj en tidsbudget 
		Given en medarbejder er logget ind som "cdcd"
		When medarbejderen prover at ændrer "Aktivitet 2" tidsbudgettet til 140 timer
		Then medarbejderen får en fejlbesked "Man skal være projektleder for at ændre timerne"
		And er der stadig ikke tidsbudget på "Aktivitet 2"
		
	Scenario: Projektleder prover at tilføj en tidsbudget
		Given en medarbejder er logget ind som "abcd"
		When medarbejderen prover at ændrer "Aktivitet 2" tidsbudgettet til 140 timer
		Then tidsbudgettet på "Aktivitet 2" er 140 timer

	Scenario: Medarbejder prover at slet tidsbudgeten
		Given en medarbejder er logget ind som "cdcd"
		When medarbejderen prover at slette tidsbudgeten fra "Aktivitet 1"
		Then medarbejderen får en fejlbesked "Man skal være projektleder for at ændre timerne"
		And tidsbudgettet på "Aktivitet 1" er 100 timer
		
	Scenario: Projektleder prover at slet start tidspunkt
		Given en medarbejder er logget ind som "abcd"
		When medarbejderen prover at slette tidsbudgeten fra "Aktivitet 1"
		Then er der ikke en tidsbudget på "Aktivtet 1"