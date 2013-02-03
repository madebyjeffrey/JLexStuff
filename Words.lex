
import java.io.IOException;

class Words // note it is not public so our file doesn't have to be named Words.java
{
	public static void main(String args[])
	{
		WordCounter w = new WordCounter(System.in);
		try
		{
			System.out.println("Ignoring: ");
			w.yylex();
		}
		catch (IOException e)
		{	
			System.err.println(e);
		
		}
		
		System.out.printf("\nFound:\n");
		System.out.printf("words: %d\n", w.words);
		System.out.printf("lines: %d\n", w.getLineCount());
	}
}

%%
%class  WordCounter
%type   void
%{
	int words = 0;
	
	public int getLineCount() { return yyline; }
%}
%eofval{ return;
%eofval}
%line

LETTER=[a-zA-Z]

%%

<YYINITIAL>{LETTER}+ { words++;  }
\n { }
. { System.out.printf("[%s]", yytext());}

