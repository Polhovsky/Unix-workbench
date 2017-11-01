# Paul Roggeveen November 1, 2017
# the title of the project.
# the date and time at which make was run.
# the number of lines of code in guessinggame.sh.
nlines=$(shell awk 'END{print NR}' guessinggame.sh)
tod=$(shell date)

README.md:
	touch README.md
	echo "# Unix workbench guessing game readme" >> README.md
	echo "Make run on: $(tod)" >> README.md
	echo "" >> README.md
	echo "There are $(nlines) lines in guessinggame.sh" >> README.md

clean:
	rm README.md