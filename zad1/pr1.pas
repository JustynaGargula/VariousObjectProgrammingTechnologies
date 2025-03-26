PROGRAM basicProcedures;

var randomNumbers: Array of Integer;
    i, j, number: integer;

procedure generateRandomNumbers(start, last, howManyNumbers: integer);
begin
    setLength(randomNumbers, howManyNumbers);
    Randomize;
    for i:=0 to howManyNumbers-1 do
        begin
                number := Random(last-start+1)+start;
                randomNumbers[i] := number;
        end;
end;

procedure sortArray();
var nr1, nr2: integer;
begin
    for i:= 0 to Length(randomNumbers)-1 do
        begin
        for j:=0 to Length(randomNumbers)-2 do
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
    for i:=0 to Length(randomNumbers)-1 do
    begin
        WriteLn(randomNumbers[i])
    end;
end;

begin
    WriteLn('Step one');
    generateRandomNumbers(0, 100, 10);
    printRandomNumbers();
    WriteLn('Step two');
    sortArray();
    printRandomNumbers();
end.