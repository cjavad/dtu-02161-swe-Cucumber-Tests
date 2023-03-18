Feature: Ændrer tidsbudget af en aktivitet

	Scenario: Medarbejder prover at ændrer tidsbudget
		Given en medarbejder er logget ind
		And der er en aktivitet med 100 times tidsbudget i en projekt
		When medarbejderen prover at ændrer tidsbudgeten til 140 timer
		Then er tidsbudgeten 100 timer
		
	Scenario: Projektleder prover at ændrer tidsbudget
		Given en medarbejder er logget ind
		And der er en aktivitet med 100 times tidsbudget i en projekt
		And medarbejderen er projektlederen af projektet
		When medarbejderen prover at ændrer tidsbudgeten til 140 timer
		Then er tidsbudgeten 140 timer
		
	Scenario: Medarbejder prover at tilføj en tidsbudget 
		Given en medarbejder er logget ind
		And der er en aktivitet uden tidsbudget i en projekt
		When medarbejderen prover at ændrer tidsbudgeten til 140 timer
		Then er der stadig ikke en tidsbudget
		
	Scenario: Projektleder prover at tilføj en tidsbudget
		Given en medarbejder er logget ind
		And der er en aktivitet uden tidsbudget i en projekt
		And medarbejderen er projektlederen af projektet
		When medarbejderen prover at ændrer tidsbudgeten til 140 timer
		Then er tidsbudgeten er 140 timer
	
	Scenario: Medarbejder prover at slet tidsbudgeten
		Given en medarbejder er logget ind
		And der er en aktivitet med 100 times tidsbudget i en projekt
		When medarbejderen prover at slet tidsbudgeten
		Then er tidsbudgeten 100 timer
		
	Scenario: Projektleder prover at slet start tidspunkt
		Given en medarbejder er logget ind
		And der er en aktivitet med 100 times tidsbudget i en projekt
		And medarbejderen er projektlederen af projektet
		When medarbejderen prover at slet tidsbudgeten
		Then er der ikke en tidsbudget