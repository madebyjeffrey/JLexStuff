
Download this onto a Mac or Linux machine with 'git':

> git clone https://github.com/iaefai/JLexStuff.git

Then, in the JLexStuff directory run:

> ./build Words <Lorem.txt

build is a script that will build JLex if needed, then build Words.lex into the java, and then into the class file, folowed by feeding Lorem.txt into it.

It if it works, it will output:

> Found:
> words: 552
> lines: 10

At the end of a bunch of other stuff. It also tells you what it ignored.

