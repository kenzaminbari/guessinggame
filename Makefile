all: README.md

README.md: guessinggame.sh
	@echo "# Projet Guessing Game" > README.md
	@echo "Date de génération : $(shell date)" >> README.md
	@echo "Nombre de lignes de code dans guessinggame.sh : $(shell wc -l < guessinggame.sh)" >> README.md
