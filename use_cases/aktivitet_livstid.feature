Feature: Aktivitets livstid
	Scenario: Medarbejder prover at oprette en aktivitet (med projektleder)
		Given en medarbejder er logget ind
		And der er et projekt uden nogen aktiviteter
		And projektet har en projektleder
		When medarbejderen prover at opret en aktivitet
		Then er der ingen aktiviteter i projektet

	Scenario: Medarbejder prover at oprette en aktivitet (uden projektleder)
		Given en medarbejder er logget ind
		And der er et projekt uden nogen aktiviteter
		And projektet har ikke en projektleder
		When medarbejderen prover at oprette en aktivitet
		Then er der en aktivitet i projektet

	Scenario: Projektleder prover at oprette en aktivitet
		Given en medarbejder er logget ind
		And der er et projekt uden nogen aktiviteter
		And medarbejderen er projektlederen
		When medarbejderen prover at oprette en aktivitet
		Then er der en aktivitet i projektet
		
	Scenario: Medarbejder prover at slet en projekt (med projektleder)
		Given en medarbejder er logget ind
		And der er et projekt med en aktivitet
		And projektet har en projektleder
		When medarbejderen prover at slette aktiviteten
		Then er der en aktivitet i projektet
		
	Scenario: Medarbejder prover at slette et projekt (uden projektleder)
		Given en medarbejder er logget ind
		And der er et projekt med en aktivitet
		And projektet har ikke en projektleder
		When medarbejderen prover at slette aktiviteten
		Then er der ingen aktiviteter i projektet
		
	Scenario: Projektleder prover at slette en aktivitet
		Given en medarbejder er logget ind
		And der er et projekt med en aktivitet
		And medarbejderen er projektlederen
		When medarbejderen prover at slette aktiviteten
		Then er der ingen aktiviteter i projektet
