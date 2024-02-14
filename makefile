README.md:
        touch  README.md
        echo "bash-make-git-and-github" > README.md
        date  >> README.md
        wc -l  guessinggame.sh | egrep -o "[0-9]+" >> README.md
        echo "git link : https://github.com/mahmoudsalah30/bash_labs " >> README.md
clean:
                rm README.md
