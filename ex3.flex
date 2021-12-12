%%
%class ex3
%int
%standalone


%{
	int count = 0;
%}

%eofval{
	if(count != 0) {
		System.err.println("Erreur"); return -1;
	}
	else System.out.println("Success");
	return 0;
%eofval}

%%
"(" { count++; }
")" {if(count > 0) count--; else {System.err.println("Erreur"); return -1;}}
[^] {}
