all: README.md

README.md: guessinggame.sh
	echo "#Peer-graded Assignment: Bash, Make, Git, and GitHub" > readme.md
	echo '##Author: Paul Borman' >> readme.md
	echo "Created: $$(date +'%D %T %p %Z')" >> readme.md
	echo "Lines of code in guessinggame.sh: $$(wc -l guessinggame.sh | egrep -o '[0-9]+')" >> readme.md
	echo :thumbsup: >> readme.md
clean:
	rm readme.md
