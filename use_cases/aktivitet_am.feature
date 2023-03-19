Feature: Ændre anførte medarbejder for aktivitet
	Background:
		Given der er projekt med ID "2022-01"
		And der er en aktivitet med ID 1 i projekt med ID "2022-01"
		And der eksistere medarbejder "abcd"
		And medarbejder "abcd" er en medlem af projekt med ID "2022-01"
		And medarbejder "abcd" er anførte til aktivitet med ID 1
		And der eksistere medarbejder "cdef"
		And medarbejder "cdef" er en medlem af projekt med ID "2022-01"
		And der eksistere medarbejder "defg"
		
	Scenario: Medarbejder prover at tilføj/fjern medarbejder til aktivitet
		Given en medarbejder er logget ind
		And medarbejderen er en del af projektet med ID "2022-01"
		When medarbejderen prover at tilføj medarbejderen "cdef" til aktivitetet med ID 1
		Then kommer der fejlbesked "Skal være projektleder til tilføj medarbejder"
		When medarbejderen prover at tilføj medarbejderen "defg" til aktivitetet med ID 1
		Then kommer der fejlbesked "Skal være projektleder til tilføj medarbejder"
		When medarbejderen prover at fjen medarbejderen "cdef" fra aktivitetet med ID 1
		Then kommer der fejlbesked "Skal være projektleder til fjern medarbejder"
		
	Scenario: Projektleder prover at tilføj/fjern medarbejder til aktivitet
		Given en medarbejder er logget ind
		And medarbejderen er projektlederen af projektet med id "2022-01"
		When medarbejderen prover at tilføj medarbejderen "cdef" til aktivitetet med ID 1
		Then er medarbejder "cdef" anførte til aktivitet med ID 1
		When medarbejderen prover at tilføj medarbejderen "defg" til aktivitetet med ID 1
		Then kommer der fejlbesked "Kan ikke tilføj medarbejder der er ikke en del af projektet"
		When medarbejderen prover at fjern medarbejderen "abcd" fra aktivitet med ID 1
		Then er medarbejderen "abcd" ikke længer anførte til aktivitet med ID 1
		When medarbejderen prover at fjern medarbejderen "defg" fra aktivitet med ID 1
		Then kommer der fjelbesked "Kan ikke fjern medarbejder der er ikke anførte"
