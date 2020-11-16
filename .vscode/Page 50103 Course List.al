page 50103 "Course List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Course;
    CardPageId = "Course Card";
    Editable = false;
    Caption = 'Course List';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(code; Code)
                {
                    ApplicationArea = All;

                }
                field(Name; Name)
                {
                    ApplicationArea = All;

                }
                field(Description; Description)
                {
                    ApplicationArea = All;

                }
                field(Level; Level)
                {
                    ApplicationArea = All;

                }
                field(Suggestion; Suggestion)
                {
                    ApplicationArea = All;

                }
                field(SPA; SPA)
                {
                    ApplicationArea = All;

                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
            action("Insert Table")
            {
                trigger OnAction();
                begin
                    InsertNewRecord();
                end;
            }
            action("Export Course Detail (XML)")
            {
                trigger OnAction();
                begin
                    Xmlport.Run(50106, false, false);
                end;
            }
            action("Export Course Detail (Variable Text)")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    xmlport.Run(50107, false, false);
                end;
            }
            action("Course Report")
            {
                Caption = 'Show the Course Report';
                trigger OnAction()
                begin
                    report.Run(50109, false, false);
                end;
            }
        }
    }
    var
        Level: text[30];
        Suggestion: text[80];
        SPA: Boolean;

    procedure insertNewRecord();
    var
        courseRec: Record Course;
    begin
        with courseRec do begin
            Init;
            code := '80040';
            Name := 'Installation & configuration';
            Description := 'Basic knowledge of Installation & configuration';
            Type := Type::"Remote Training";
            Duration := 2.0;
            Price := 1000.0;
            Active := true;
            Difficulty := 5;
            PassingRate := 75;
            Insert;
            Message('Already Insert');
        end;
        with courseRec do begin
            Init;
            code := '80041';
            Name := 'Finance';
            Description := 'Basic knowledge of finance';
            Type := Type::"Instructor Led";
            Duration := 3.0;
            Price := 1500.0;
            Active := true;
            Difficulty := 7;
            PassingRate := 80;
            Insert;
            Message('Already Insert');
        end;
        with courseRec do begin
            Init;
            code := '80042';
            Name := 'C/SIDE Introduction';
            Description := 'Introduction to programming';
            Type := Type::"Instructor Led";
            Duration := 5.0;
            Price := 2500.0;
            Active := true;
            Difficulty := 8;
            PassingRate := 80;
            Insert;
            Message('Already Insert');
        end;
        with courseRec do begin
            Init;
            code := '80043';
            Name := 'Introduction';
            Description := 'Introduction to Microsoft Dynamics Nav';
            Type := Type::"Remote Training";
            Duration := 2.0;
            Price := 1000.0;
            Active := true;
            Difficulty := 4;
            PassingRate := 60;
            Insert;
            Message('Already Insert');
        end;
        with courseRec do begin
            Init;
            code := '80049';
            Name := 'Application Setup';
            Description := 'Basic knowledge of application setup';
            Type := Type::"e-Learning";
            Duration := 2.0;
            Price := 1000.0;
            Active := true;
            Difficulty := 5;
            PassingRate := 65;
            Insert;
            Message('Already Insert');
        end;
        with courseRec do begin
            Init;
            code := '80050';
            Name := 'Business Intelligence';
            Description := 'Basic knowledge of Business Intelligence';
            Type := Type::"e-Learning";
            Duration := 1.0;
            Price := 500.0;
            Active := true;
            Difficulty := 5;
            PassingRate := 65;
            Insert;
            Message('Already Insert');
        end;
        with courseRec do begin
            Init;
            code := '80055';
            Name := 'C/ISE Solution Development';
            Description := 'Advanced topics in programming';
            Type := Type::"Instructor Led";
            Duration := 5.0;
            Price := 2500.0;
            Active := true;
            Difficulty := 10;
            PassingRate := 75;
            Insert;
            Message('Already Insert');
        end;
    end;

    trigger OnAfterGetRecord();
    begin
        Level := '';
        Suggestion := '';
        SPA := false;
        case Difficulty of
            1 .. 5:
                begin
                    Level := 'Beginner';
                    Suggestion := 'Take e-elearning or remote training';
                end;
            6 .. 8:
                begin
                    Level := 'Advanced';
                    Suggestion := 'Attend instructor-Led';
                end;
            9 .. 10:
                begin
                    Level := 'Advanced';
                    Suggestion := 'Attend instructor-Led and sel study';
                end;
        end;
        if (PassingRate >= 70) And (Difficulty >= 6) then
            SPA := true;
    end;
}
xmlport 50106 "Course Export XML"
{
    Direction = Export;
    Format = Xml;
    FormatEvaluate = Xml;
    schema
    {
        textelement(Root)
        {
            tableelement(Course; Course)
            {
                fieldattribute(Code; Course.Code)
                {

                }
                fieldattribute(Name; Course.Name)
                {

                }
                fieldattribute(Description; Course.Description)
                {

                }
                fieldattribute(Type; Course.Type)
                {

                }
                fieldattribute(Duration; Course.Duration)
                {

                }
                fieldattribute(Price; Course.Price)
                {

                }
                fieldattribute(Active; Course.Active)
                {

                }
                fieldattribute(Difficulty; Course.Difficulty)
                {

                }
                fieldattribute(PassingRate; Course.PassingRate)
                {

                }

            }
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    /*field(Name; SourceExpression)
                    {

                    }*/
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {

                }
            }
        }
    }

    var
        myInt: Integer;
}
xmlport 50107 "Course Export Variable"
{
    Direction = Export;
    Format = VariableText;
    FormatEvaluate = Xml;
    schema
    {
        textelement(Root)
        {
            tableelement(Course; Course)
            {
                fieldattribute(Code; Course.code)
                {

                }
                fieldattribute(Name; Course.Name)
                {

                }
                fieldattribute(Description; Course.Description)
                {

                }
                fieldattribute(Type; Course.Type)
                {

                }
                fieldattribute(Duration; Course.Duration)
                {

                }
                fieldattribute(Price; Course.Price)
                {

                }
                fieldattribute(Active; Course.Active)
                {

                }
                fieldattribute(Difficulty; Course.Difficulty)
                {

                }
                fieldattribute(PassingRate; Course.PassingRate)
                {

                }
            }
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    /*field(Name; SourceExpression)
                    {
                    }*/
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {

                }
            }
        }
    }

    var
        myInt: Integer;
}