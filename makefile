all: README.md

README.md: guessinggame.sh
	echo "#Peer-graded Assignment: Bash, Make, Git, and GitHub" > readme.md
	echo '##Author: Paul Borman' >> README.md
	echo "Created: $$(date +'%D %T %p %Z')" >> README.md
	echo "Lines of code in guessinggame.sh: $$(wc -l guessinggame.sh | egrep -o '[0-9]+')" >> README.md
	echo :thumbsup: >> README.md
clean:
	rm README.md
