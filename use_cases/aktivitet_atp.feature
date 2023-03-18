Feature: Ændrer start/slut tidspunkter af en aktivitet

	# start tidspunkt
	Scenario: Medarbejder prover at ændrer start tidspunkt 
		Given en medarbejder er logget ind
		And der er en aktivitet med start tidspunkt 10 i en projekt
		When medarbejderen prover at ændrer start tidspunktet til 14
		Then start tidspunktet er 10
		
	Scenario: Projektleder prover at ændrer start tidspunkt
		Given en medarbejder er logget ind
		And der er en aktivitet med start tidspunkt 10 i en projekt
		And medarbejderen er projektlederen af projektet
		When medarbejderen prover at ændrer start tidspunktet til 14
		Then start tidspunktet er 14
		
	Scenario: Medarbejder prover at tilføj start tidspunkt 
		Given en medarbejder er logget ind
		And der er en aktivitet uden en start tidspunkt i en projekt
		When medarbejderen prover at ændrer start tidspunktet til 14
		Then er der stadig ikke en start tidspunkt til aktivitetet
		
	Scenario: Projektleder prover at tilføj start tidspunkt
		Given en medarbejder er logget ind
		And der er en aktivitet uden en start tidspunkt i en projekt
		And medarbejderen er projektlederen af projektet
		When medarbejderen prover at ændrer start tidspunktet til 14
		Then start tidspunktet er 14
	
	Scenario: Medarbejder prover at slet start tidspunkt
		Given en medarbejder er logget ind
		And der er en aktivitet med en start tidspunkt i en projekt
		When medarbejderen prover at slet start tidspunktet
		Then er der stadig en start tidspunkt til aktivitetet
		
	Scenario: Projektleder prover at slet start tidspunkt
		Given en medarbejder er logget ind
		And der er en aktivitet med en start tidspunkt i en projekt
		And medarbejderen er projektlederen af projektet
		When medarbejderen prover at slet start tidspunktet
		Then er der ikke en start tidspunkt til aktivitetet
		
	#slut tidspunkt
	Scenario: Medarbejder prover at ændrer slut tidspunkt 
		Given en medarbejder er logget ind
		And der er en aktivitet med slut tidspunkt 10 i en projekt
		When medarbejderen prover at ændrer slut tidspunktet til 14
		Then slut tidspunktet er 10
		
	Scenario: Projektleder prover at ændrer slut tidspunkt
		Given en medarbejder er logget ind
		And der er en aktivitet med slut tidspunkt 10 i en projekt
		And medarbejderen er projektlederen af projektet
		When medarbejderen prover at ændrer slut tidspunktet til 14
		Then slut tidspunktet er 14
		
	Scenario: Medarbejder prover at tilføj slut tidspunkt 
		Given en medarbejder er logget ind
		And der er en aktivitet uden en slut tidspunkt i en projekt
		When medarbejderen prover at ændrer slut tidspunktet til 14
		Then er der stadig ikke en slut tidspunkt til aktivitetet
		
	Scenario: Projektleder prover at tilføj slut tidspunkt
		Given en medarbejder er logget ind
		And der er en aktivitet uden en slut tidspunkt i en projekt
		And medarbejderen er projektlederen af projektet
		When medarbejderen prover at ændrer slut tidspunktet til 14
		Then slut tidspunktet er 14
	
	Scenario: Medarbejder prover at slet slut tidspunkt
		Given en medarbejder er logget ind
		And der er en aktivitet med en slut tidspunkt i en projekt
		When medarbejderen prover at slet slut tidspunktet
		Then er der stadig en slut tidspunkt til aktivitetet
		
	Scenario: Projektleder prover at slet slut tidspunkt
		Given en medarbejder er logget ind
		And der er en aktivitet med en slut tidspunkt i en projekt
		And medarbejderen er projektlederen af projektet
		When medarbejderen prover at slet slut tidspunktet
		Then er der ikke en slut tidspunkt til aktivitetet