Feature: Ændrer start/slut tidspunkter af en aktivitet

	Background:
		Given der er en projekt med ID "2022-01"
		And der er en aktivitet med navn "Aktivitet 1" i projekt med ID "2022-01"
		And aktivitetet med navn "Aktivitet 1" har start tidspunkt "10-2022"
		And aktivitetet med navn "Aktivitet 1" har slut tidspunkt "13-2022"
		And der er en aktivitet med navn "Aktivitet 2" i projekt med ID "2022-01"
		And aktivitetet med navn "Aktivitet 2" har ingen start tidspunkt
		And aktivitetet med navn "Aktivitet 2" har ingen slut tidspunkt
		And brugeren "abcd" er projektleder på projektet "2022-01"
		And brugeren "cdcd" er tilknyttet projektet "2022-01"

	# start tidspunkt
	Scenario: Medarbejder prøver at ændre start/slut tidspunkt
		Given en medarbejder er logget ind som "cdcd"
		When medarbejderen prøver at ændre start tidspunktet til "14-2022" af aktivitetet med navn "Aktivitet 1"
		Then kommer der fejlbesked "Skal være projektleder til ændre start tidspunkt"
		And aktivitetet med navn "Aktivitet 1" har start tidspunkt "10-2022"
		When medarbejderen prøver at ændrer slut tidspunktet til "18-2022" af aktivitetet med navn "Aktivitet 1"
		Then kommer der fejlbesked "Skal være projektleder til ændre slut tidspunkt"
		And aktivitetet med navn "Aktivitet 1" har slut tidspunkt "13-2022"
		
	Scenario: Projektleder prøver at ændre start/slut tidspunkt
		Given en medarbejder er logget ind som "abcd"
		When medarbejderen prøver at ændre "Aktivitet 1" start tidspunkt til "14-2022"
		Then aktiviteten "Aktivitet 1" har start tidspunktet "14-2022"
		When medarbejderen prøver at ændrer slut tidspunktet til "18-2022" af aktivitetet med navn "Aktivitet 1"
		And aktivitetet med navn "Aktivitet 1" har slut tidspunkt "18-2022"

	Scenario: Medarbejder prøver at tilføje start/slut tidspunkt
		Given en medarbejder er logget ind som "cdcd"
		When medarbejderen prøver at ændrer "Aktivtets 2" start tidspunktet til "14-2022"
		Then medarbejderen får fejlbeskeden "Skal være projektleder for at ændre start tidspunkt"
		And aktiviteten "Aktivitet 2" har stadig intet start tidspunkt
		When medarbejderen prøver at ændrer "Aktivtets 2" slut tidspunktet til "18-2022"
		Then medarbejderen får fejlbeskeden "Skal være projektleder for at ændre slut tidspunkt"
		And aktiviteten "Aktivitet 2" har stadig intet slut tidspunkt

	Scenario: Medarbejder prøver at slet start/slut tidspunkt
		Given en medarbejder er logget ind som "cdcd"
		When medarbejderen prøver at slette start tidspunktet i "Aktivitet 1"
		Then der er stadig et start tidspunkt til "Aktivitet 1"
		And medarbejderen får fejlbeskeden "Skal være projektleder for at slette start tidspunkt"
		When medarbejderen prøver at slette slut tidspunktet i "Aktivitet 1"
		Then der er stadig et slut tidspunkt til "Aktivitet 1"
		And medarbejderen får fejlbeskeden "Skal være projektleder for at slette slut tidspunkt"

	Scenario: Projektlederen prøver at tilføje start/slut tidspunkt
		Given en medarbejder er logget ind som "abcd"
		When medarbejderen prøver at ændrer "Aktivtets 2" start tidspunktet til "14-2022"
		Then aktiviteten "Aktivitet 2" har start tidspunktet "14-2022"
		When medarbejderen prøver at ændrer "Aktivtets 2" slut tidspunktet til "18-2022"
		Then aktiviteten "Aktivitet 2" har slut tidspunktet "18-2022"

	Scenario: Projektlederen prøver at slet start/slut tidspunkt
		Given en medarbejder er logget ind som "abcd"
		When medarbejderen prøver at slette start tidspunktet i "Aktivitet 1"
		Then der er ikke et start tidspunkt til "Aktivitet 1"
		When medarbejderen prøver at slette slut tidspunktet i "Aktivitet 1"
		Then der er ikke et slut tidspunkt til "Aktivitet 1"


