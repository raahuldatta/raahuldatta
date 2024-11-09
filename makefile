# Makefile for the Guessing Game project

# Variable to get the current date and time
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# Variable to get the number of lines in guessinggame.sh
LINE_COUNT=$(wc -l < guessinggame.sh)

# Rule to generate the README.md
README.md: guessinggame.sh
	@echo "# Guessing Game Project" > README.md
	@echo "Date and Time: $(DATE)" >> README.md
	@echo "Number of lines in guessinggame.sh: $(LINE_COUNT)" >> README.md

# Rule to run the guessing game
run_game:
	@echo "Running the guessing game..."
	@bash guessinggame.sh

# Clean up generated files
clean:
	rm -f README.md
