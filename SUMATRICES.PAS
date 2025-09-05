program SUMATRICES;

var
  a, b, r: array[0..1, 0..1] of integer;
  x, z: integer;

begin
  writeln('////presiona Enter al ingresar cada numero////');
  writeln(' Matriz A, Ingresa 4 numeros: ');
  
  for x := 0 to 1 do
  begin
    for z := 0 to 1 do
    begin
      readln(a[x,z]);
    end;
  end;

  writeln(' Matriz B, Ingresa 4 numeros: ');
  for x := 0 to 1 do
  begin
    for z := 0 to 1 do
    begin
      readln(b[x,z]);
    end;
  end;

 
  for x := 0 to 1 do
  begin
    for z := 0 to 1 do
    begin
      r[x,z] := a[x,z] + b[x,z];
    end;
  end;

  writeln('Resultado:');
  writeln(r[0,0], ' ', r[0,1]);
  writeln(r[1,0], ' ', r[1,1]);
end.