PROGRAM basicProcedures;

var randomNumbers: Array[0..49] of Integer;
    i, j, number: integer;

procedure generateRandomNumbers();
begin
    Randomize;
    for i:=0 to Length(randomNumbers) do
        begin
                number := Random(101);
                randomNumbers[i] := number;
        end;
end;

procedure sortArray();
var nr1, nr2: integer;
begin
    for i:= 0 to Length(randomNumbers) do
        begin
        for j:=0 to Length(randomNumbers)-1 do
            begin
                nr1 := randomNumbers[j];
                nr2 := randomNumbers[j+1];
                if nr1 > nr2 then
                    begin
                        randomNumbers[j] := nr2;
                        randomNumbers[j+1] := nr1;
                    end;
            end;
        end;
end;

procedure printRandomNumbers();
begin
    for i:=0 to Length(randomNumbers) do
    begin
        WriteLn(randomNumbers[i])
    end;
end;

begin
    WriteLn('Step one');
    generateRandomNumbers();
    printRandomNumbers();
    WriteLn('Step two');
    sortArray();
    printRandomNumbers();
end.