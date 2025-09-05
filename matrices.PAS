program multiplicacionDeDosMatrices;
uses
    Crt;
var
    a, b, r: array[1..2, 1..2] of integer;
    x, y, z: integer;
begin
    ClrScr;
    writeln('////presiona Enter al ingresar cada numero////');
    writeln(' Matriz A, Ingresa 4 numeros: ');
    
    for x := 1 to 2 do
    begin
        for z := 1 to 2 do
        begin
            readln(a[x, z]);
        end;
    end;

    writeln(' Matriz B, Ingresa 4 numeros: ');
    for x := 1 to 2 do
    begin
        for z := 1 to 2 do
        begin
            readln(b[x, z]);
        end;
    end;

    
    for x := 1 to 2 do
        for z := 1 to 2 do
            r[x, z] := 0;

    // Multiplicación de matrices
    for x := 1 to 2 do
    begin
        for z := 1 to 2 do
        begin
            for y := 1 to 2 do
            begin
                r[x, z] := r[x, z] + a[x, y] * b[y, z];
            end;
        end;
    end;

    writeln('Resultado:');
    writeln(r[1, 1], ' ', r[1, 2]);
    writeln(r[2, 1], ' ', r[2, 2]);
    
    readln;
end.