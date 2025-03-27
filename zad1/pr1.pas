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
        WriteLn(randomNumbers[i]);
    end;
end;

procedure testGenerateRandomNumbers(start, last, howManyNumbers: integer);
var number: integer;
begin
    generateRandomNumbers(start, last, howManyNumbers);
    if Length(randomNumbers) <> howManyNumbers then
    begin
        WriteLn('Failed to generate random numbers correctly. Quantity of numbers is wrong.');
        Exit;
    end;

    for i:=0 to howManyNumbers-1 do
    begin
    number:=randomNumbers[i];
        if (number > last) or (number < start) then
        begin
            WriteLn('Failed to generate random numbers correctly. Numbers are out of given range.');
            Exit;
        end;
    end;
    WriteLn('Succeded to generate random numbers correctly.')
end;

procedure testSortArray();
begin
    sortArray();
    for i:=0 to Length(randomNumbers)-2 do
    begin
        if (randomNumbers[i] > randomNumbers[i+1]) then
        begin
            WriteLn('Failed to sort numbers correctly.');
            Exit;
        end;
    end;
    WriteLn('Succeded to sort numbers correctly.');
end;

begin
    testGenerateRandomNumbers(0, 100, 50);
    testSortArray();
    testGenerateRandomNumbers(50, 80, 15);
    testSortArray();
    WriteLn('Finished');
end.