Feature: Aktivitets arbejdstimer
	Scenario: En medarbejder har arbejdet på en aktivitet
		Given at en medarbejder er logget ind på systemet
		When medarbejderen vælger en aktivitet
		Then skal medarbejderen kunne registrere hvor lang tid han har arbejdet på aktiviteten

	Scenario: En medarbejder vil se hvor lang tid han har arbejdet på en aktivitet
		Given at en medarbejder er logget ind på systemet
		When medarbejderen vælger en aktivitet
		Then skal medarbejderen kunne se hvor lang tid han har arbejdet på aktiviteten
