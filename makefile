all:	README.md

README.md:	guessinggame.sh
	echo "# UNIX" > README.md
	echo -n DATE: `date` >> README.md
	echo -n "\nNumber of lines of code contained in guessinggame.sh\n" >> README.md
	wc -l guessinggame.sh >> README.md
clean:
	rm README.md
