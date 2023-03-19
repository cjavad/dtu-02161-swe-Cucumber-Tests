Feature: Aktivitets livstid

	Scenario: Medarbejder prover at opret en aktivitet (med projektleder)
		Given en medarbejder er logget ind
		And der er et projekt unden nogen aktiviteter
		And projekten har en projektleder
		When medarbejderen prover at opret en aktivitet
		Then er der ingen aktiviteter i projektet

	Scenario: Medarbejder prover at opret en aktivitet (uden projektleder)
		Given en medarbejder er logget ind
		And der er et projekt unden nogen aktiviteter
		And projekten har ikke en projektleder
		When medarbejderen prover at opret en aktivitet
		Then er der en aktivitet i projektet

	Scenario: Projektleder prover at opret en aktivitet
		Given en medarbejder er logget ind
		And der er et projekt unden nogen aktiviteter
		And medarbejderen er projektlederen
		When medarbejderen prover at opret en aktivitet
		Then er der en aktivitet i projektet
		
	Scenario: Medarbejder prover at slet en projekt (med projektleder)
		Given en medarbejder er logget ind
		And der er et projekt med en aktivitet
		And projekten har en projektleder
		When medarbejderen prover at slet aktivitetet
		Then er der en aktivitet i projektet
		
	Scenario: Medarbejder prover at slet en projekt (uden projektleder)
		Given en medarbejder er logget ind
		And der er et projekt med en aktivitet
		And projekten har ikke en projektleder
		When medarbejderen prover at slet aktivitetet
		Then er der ingen aktiviteter i projektet
		
	Scenario: Projektleder prover at slet en aktivitet
		Given en medarbejder er logget ind
		And der er et projekt med en aktivitet
		And medarbejderen er projektlederen
		When medarbejderen prover at slet aktivitetet
		Then er der ingen aktiviteter i projektet
