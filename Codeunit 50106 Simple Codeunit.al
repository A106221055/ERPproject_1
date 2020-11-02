codeunit 50106 "Simple Codeunit"
{
    trigger OnRun()
    begin

    end;

    var
        name: Text[30];

    procedure setName(newName: Text[30]);
    begin
        name := newName;
    end;

    procedure getName(): Text[30];
    begin
        EXIT(name);
    end;
}
codeunit 50107 "Simple Assignment"
{
    trigger OnRun()
    begin
        cu1.setName('Jim');
        Message('First:%1 - second:%2', cu1.getname(), cu2.getName());
        cu2 := cu1;
        Message('First:%1 - second:%2', cu1.getname(), cu2.getName());

    end;

    var
        cu1: Codeunit 50106;
        cu2: Codeunit 50106;
}