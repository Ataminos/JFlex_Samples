%%
%class ex1
%int
%standalone

consonne = [BCDFGHJKLMNPQRSTVWXZ] | [bcdfghjklmnpqrstvwxz]
voyelle = [AEIOUY] | [aeiouy]
ponctuation = [.,;:?!«»()—]

%{
	int countC = 0, countV = 0, countP = 0;
%}

%eofval{
	System.out.printf("consonnes: %d, voyelles: %d, ponctuation: %d", countC, countV, countP);
	return 0;
%eofval}

%%
{consonne} { countC++; }
{voyelle} { countV++; }
{ponctuation} { countP++; }
[^] {}
