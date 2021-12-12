import java.lang.Integer;
%%
%class ex2
%int
%standalone

entier = [0-9]+
%{
	int count = 0, total = 0;
%}

%eofval{
	System.out.printf("Moyenne: %.2f", ((float)total/count));
	return 0;
%eofval}

%%

{entier} { count++; total += Integer.parseInt(yytext()); }
[^] {}
