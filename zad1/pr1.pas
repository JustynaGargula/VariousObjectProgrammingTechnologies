PROGRAM basicProcedures;

var random_numbers: Array[0..49] of Integer;
    i, j, number: integer;

procedure randomNumbers();
begin
    Randomize;
    for i:=0 to 49 do
        begin
                number := Random(101);
                random_numbers[i] := number;
        end;
end;

procedure sortArray();
var sorted_numbers: Array[0..49] of Integer;
nr1, nr2: integer;
begin
    for i:= 0 to 49 do
        begin
        for j:=0 to 48 do
            begin
                nr1 := random_numbers[j];
                nr2 := random_numbers[j+1];
                if nr1 > nr2 then
                    random_numbers[j] := nr2;
                    random_numbers[j+1] := nr1;
            end;
        end;
end;

begin
    randomNumbers();
end.