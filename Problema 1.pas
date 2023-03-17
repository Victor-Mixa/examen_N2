program Examen1;
uses crt;
var palabra, binario,resp: string;
cont, num: integer;

 procedure CodigoB;  ///codigo binario/// 
begin

  for cont := 1 to Length(palabra) do
	begin
		for num := 7 downto   0 do
			begin
      if ((ord(palabra[cont]) shr num) and 1) = 1 then
        binario := binario + '1'
      else
        binario := binario + '0';
    end;
    binario := binario + ' ';
  end;
	writeln('El texto "', palabra, '" en binario es: ', binario);
	readkey;
  end;
  
procedure Hexadecimal;
	var
	hexa:string;
begin
	writeln('El texto "', palabra, '" en hexadecimal es: ');
  for cont := 1 to length(palabra) do
	begin
		hexa:=hexstr(ord(palabra[cont]), 2);
		write(hexa,' ');
	end;

  readln;
end;

begin

Writeln('Bienvenido al transformador de palabras, desea transformar una palabra?');
readln(resp);
	while(resp)='si' do
		begin
		writeln();
		writeln();
		write('Ingresa el texto que quieres convertir: ');
		readln(palabra);
		writeln('==================================================');
		writeln ('Que transformacion desea hacer?');
		writeln ('1= convertir en binario');
		writeln ('2=convertir en romano') ;
		writeln ('3=convertir en octal');
		writeln ('4=convertir en hexadecimal');
		readln (num);
  clrscr;

	Case num of
		1:codigoB;
		4:Hexadecimal;
   else writeln('no es una transformacion valida')
   end;
   WriteLn('desea continuar?');
   readln(resp);
		end;
			Writeln();
			writeln('Hasta luego');
end.
