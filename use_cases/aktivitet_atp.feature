Feature: Ændrer start/slut tidspunkter af en aktivitet

	Background:
		Given der er en projekt med ID "2022-01"
		And der er en aktivitet med ID 1 i projekt med ID "2022-01"
		And aktivitetet med ID 1 har start tidspunkt "10-2022"
		And aktivitetet med ID 1 har slut tidspunkt "13-2022"
		And der er en aktivitet med ID 2 i projekt med ID "2022-01"
		And aktivitetet med ID 2 har ingen start tidspunkt
		And aktivitetet med ID 2 har ingen slut tidspunkt

	# start tidspunkt
	Scenario: Medarbejder prover at ændre start/slut tidspunkt
		Given en medarbejder er logget ind
		And medarbejderen er en del af projekt med ID "2022-01"
		When medarbejderen prover at ændre start tidspunktet til "14-2022" af aktivitetet med ID 1
		Then kommer der fejlbesked "Skal være projektleder til ændre start tidspunkt"
		And aktivitetet med ID 1 har start tidspunkt "10-2022"
		When medarbejderen prover at ændrer slut tidspunktet til "18-2022" af aktivitetet med ID 1
		Then kommer der fejlbesked "Skal være projektleder til ændre slut tidspunkt"
		And aktivitetet med ID 1 har slut tidspunkt "13-2022"
		
	Scenario: Projektleder prover at ændre start/slut tidspunkt
		Given en medarbejder er logget ind
		And medarbejderen 
#		
#	Scenario: Projektleder prover at ændrer start tidspunkt
#		Given en medarbejder er logget ind
#		And der er en aktivitet med start tidspunkt 10 i en projekt
#		And medarbejderen er projektlederen af projektet
#		When medarbejderen prover at ændrer start tidspunktet til 14
#		Then start tidspunktet er 14
#		
#	Scenario: Medarbejder prover at tilføj start tidspunkt 
#		Given en medarbejder er logget ind
#		And der er en aktivitet uden en start tidspunkt i en projekt
#		When medarbejderen prover at ændrer start tidspunktet til 14
#		Then er der stadig ikke en start tidspunkt til aktivitetet
#		
#	Scenario: Projektleder prover at tilføj start tidspunkt
#		Given en medarbejder er logget ind
#		And der er en aktivitet uden en start tidspunkt i en projekt
#		And medarbejderen er projektlederen af projektet
#		When medarbejderen prover at ændrer start tidspunktet til 14
#		Then start tidspunktet er 14
#	
#	Scenario: Medarbejder prover at slet start tidspunkt
#		Given en medarbejder er logget ind
#		And der er en aktivitet med en start tidspunkt i en projekt
#		When medarbejderen prover at slet start tidspunktet
#		Then er der stadig en start tidspunkt til aktivitetet
#		
#	Scenario: Projektleder prover at slet start tidspunkt
#		Given en medarbejder er logget ind
#		And der er en aktivitet med en start tidspunkt i en projekt
#		And medarbejderen er projektlederen af projektet
#		When medarbejderen prover at slet start tidspunktet
#		Then er der ikke en start tidspunkt til aktivitetet
