Feature: Aktivitets arbejdstimer
	Scenario: En medarbejder vil inspicere en aktivitet
		Given medarbejderen er logget ind på systemet
		When medarbejderen vælger en aktivitet
		Then skal medarbejderen kunne se en oversigt over aktiviteten, hvilket inkluderer:
			| Navn |
			| Startdato |
			| Slutdato |
			| Tildelte medarbejdere |
		When medarbejderen er tildelt aktiviteten
		Then skal medarbejderen også kunne se en oversigt over arbejdstimerne på aktiviteten
		When medarbejderen er en projektleder
		Then skal medarbejderen kunne se en oversigt over ledige medarbejdere

	Scenario: En medarbejder har arbejdet på en aktivitet
		Given medarbejderen er logget ind på systemet
		And medarbejderen er tildelt aktiviteten
		When medarbejderen vælger en aktivitet
		Then skal medarbejderen kunne registrere hvor lang tid han har arbejdet på aktiviteten
