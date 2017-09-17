"Displays numbers 1 to 10 with 500 milliseconds delay."
[1 to: 10 do: [:x |
		Transcript show: x; cr.
		(Delay forMilliseconds: 500) wait.
	]] fork.