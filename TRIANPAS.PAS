program PascalTriangulo;
uses
    Crt;
var
    lados, i, j, k: integer;
    triangulo: array[1..25, 1..25] of integer;

begin
    ClrScr;
    writeln('=== Triangulo de Pascal ===');
    write('Cuantos lados: ');
    readln(lados);
    

    for i := 1 to 25 do
        for j := 1 to 25 do
            triangulo[i, j] := 0;


    for i := 1 to lados do
    begin
        triangulo[i, 1] := 1;
        triangulo[i, i] := 1;

        if i > 2 then
        begin
            for j := 2 to i - 1 do
            begin
                triangulo[i, j] := triangulo[i-1, j-1] + triangulo[i-1, j];
            end;
        end;
    end;

    writeln;
    writeln('Triangulo de Pascal:');
    writeln;


    for i := 1 to lados do
    begin

        for k := 1 to lados - i + 1 do
            write('  ');


        for j := 1 to i do
            write(triangulo[i, j]:4);

        writeln;
    end;

    writeln;
    write('Presiona Enter para salir...');
    readln;
end.