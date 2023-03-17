Program Problema2;
uses crt;
var numero: integer;

procedure dividecolor;
	begin
		writeln('Escriba un numero');	///Valor a dividir///
		readln (numero);
			if (numero)mod 2=0 then
				begin
					textcolor (yellow);
					writeln (numero,' su numero es divisible entre 2 ');
				end;
			if (numero)mod 3=0 then ///si no es divisible, pasa a la siguiente comparacion///
				begin
					textcolor (blue);
					writeln (numero, ' su numero es divisible entre 3 ');
				end
			else if (numero) mod 5=0 then
				begin
					textcolor (red);
					writeln (numero, ' su numero es divisibl entre 5 ');
				end
			else if (numero) mod 7=0 then
				begin
					textcolor (green);
					writeln (numero, 'su numero es divisibl entre 7 ');
				end
			else if (numero) mod 13=0 then
				begin
					textcolor (brown);
					writeln (numero, ' su numero es divisible entre 13');
				end
			else
				begin 
					writeln ('El numero que usted ingreso no se puede dividir en ninguna de las opciones');
				end

end;
 

begin
dividecolor();
readln
end.
