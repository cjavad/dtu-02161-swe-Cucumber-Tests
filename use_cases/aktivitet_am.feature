Feature: Ændre anførte medarbejder for aktivitet
	Scenario: Medarbejder prover at tilføj medarbejder til aktivitet
		Given en medarbejder er logget ind
		And en medarbejder er en del af et projekt med ID "2022-01"
		And der er en aktivitet med start tidspunkt i uge 1 og slutdato i uge 2 med 10 budgettimer og navn "Test" i projektet med ID "2022-01"
		When medarbejderen prover at tilføj en nye medarbejder til aktivitetet
		Then er den nye medarbejder ikke anførte til aktivitetet 
		
	Scenario: Projektleder prover at tilføj medarbejder til aktivitet
		Given en medarbejder er logget ind
		And der er en aktivitet i en projekt
		And medarbejderen er projektlederen af projektet
		When medarbejderen prover at tilføj en nye medarbejder til aktivitetet
		Then er den nye medarbejder anførte til aktivitetet
	
	Scenario: Medarbejder prover at fjern medarbejder fra aktivitet
		Given en medarbejder er logget ind
		And der er en aktivitet i en projekt
		When medarbejderen prover at fjern en anførte medarbejder fra aktivitetet
		Then er den anførte medarbejder stadig anført
	
	Scenario: Projektleder prover at fjern medarbejder fra aktivitet
		Given en medarbejder er logget ind
		And der er en aktivitet i en projekt
		And medarbejderen er projektlederen af projektet
		When medarbejderen prover at fjern en anførte medarbejder fra aktivitetet
		Then er den anførte medarbejder ikke længer ænført 
