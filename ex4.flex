%%
%class ex4
%int
%standalone


%{
	int count1 = 0, count2 = 0, count3 = 0;
%}

%eofval{
	if(count1 != 0 || count2 != 0 || count3 != 0) {
		System.err.println("Erreur"); return -1;
	}
	else System.out.println("Success");
	return 0;
%eofval}

%%
"(" { count1++; }
")" {if(count1 > 0) count1--; else{ System.err.println("Erreur in )"); return -1;}}
"[" { count2++; }
"]" {if(count2 > 0) count2--; else{ System.err.println("Erreur in ]"); return -1;}}
"{" { count3++; }
"}" {if(count3 > 0) count3--; else{ System.err.println("Erreur in }"); return -1;}}
[^] {}
