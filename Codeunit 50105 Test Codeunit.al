codeunit 50105 "Test Codeunit"
{
    trigger OnRun()
    begin
        Message('The value of %1 is %2', 'LoopNo', LoopNo);
        Message('The value of %1 is %2', 'YesOrNO', YesOrNo);
        Message('The value of %1 is %2', 'Amount', Amount);
        Message('The value of %1 is %2', 'When Was It', "when Was It");
        Message('The value of %1 is %2', 'WhatTime', "What Time");
        Message('The value of %1 is %2', 'Description', Description);
        Message('The value of %1 is %2', 'Code Number', "Code Number");
        Message('The value of %1 is %2', 'Ch', Ch);
        Message('The value of %1 is %2', 'Color', Color);
    end;

    var
        LoopNo: Integer;
        YesOrNo: Boolean;
        Amount: Decimal;
        "When Was It": Date;
        "What Time": Time;
        Description: Text[30];
        "Code Number": code[10];
        ch: char;
        Color: Option Red,Orange,Yellow,Green,Blue,violet;

}