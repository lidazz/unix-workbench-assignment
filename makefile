README.md: guessinggame.sh
	echo "# The Unix Workbench Assignment\n" > README.md
	echo "### Project description\n" >> README.md
	echo "Coursera - The Unix Workbench course.\n" >> README.md
	echo "Peer-graded Assignment using Bash, Make, Git, and GitHub.\n" >> README.md
	echo "#### Makefile run date:" >> README.md
	date >> README.md
	echo "\n#### Lines of code in shell script:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md