import java.lang.Integer;
%%
%class ex5
%int
%standalone

entier = [0-9]+
%{
    int total = 0;
	char operation = ' ';
%}

%eofval{
	System.out.println("Result: "+total);
	return 0;
%eofval}

%%
{entier} {

	if(operation == ' ') { total = Integer.parseInt(yytext()); }
	else { switch(operation) {
		case '+': total += Integer.parseInt(yytext());
			break;
		case '-': total -= Integer.parseInt(yytext());
			break;
		case '*': total *= Integer.parseInt(yytext());
			break;
		case '/': total /= Integer.parseInt(yytext());
			break;
		} 
	}
}
"+" | "-" | "*" | "/" { operation = yytext().charAt(0); }
[^] {}
