Feature: Projekter
	Scenario: Se aktive projekter
		Given brugeren er logget ind
		When brugeren vælger "Projekter"
		Then skal brugeren se en liste over aktive projekter

	Scenario: Ændre navn på et projekt
		Given Softwarehuset A/S er logget ind
		When Softwarehuset A/S vælger "Projekter"
		And Softwarehuset A/S redigerer et projekt
		Then skal Softwarehuset A/S kunne ændre navnet på projektet
