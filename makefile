all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "\n" >> README.md
	echo "Make was run on: $$(date)" >> README.md
	echo "\n" >> README.md
	echo "Number of lines in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md
