table 50101 Course
{
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "code"; code[10])
        {
        }
        field(20; Name; Text[30])
        {
        }
        field(30; Description; Text[50])
        {
        }
        field(40; Type; Option)
        {
            OptionMembers = "Instructor Led","E-Learning","Remote Training";
        }
        field(50; Dyration; Decimal)
        {
        }
        field(60; Price; Decimal)
        {
        }
        field(70; Active; Boolean)
        {
        }
        field(80; Difficulty; Integer)
        {
        }
        field(90; PassingRate; Integer)
        {
        }

    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}