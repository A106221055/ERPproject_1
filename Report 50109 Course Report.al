report 50109 "Course Report"
{
    RDLCLayout = 'Course Report.rdl';
    UsageCategory = Administration;
    ApplicationArea = All;

    dataset
    {
        dataitem(Course; Course)
        {
            column(Code; Course.Code)
            {

            }
            column(Name; Course.Name)
            {

            }
            column(Description; Course.Description)
            {

            }
            column(Type; Course.Type)
            {

            }
            column(Duration; Course.Duration)
            {

            }
            column(Price; Course.Price)
            {

            }
            column(Active; Course.Active)
            {

            }
            column(Difficulty; Course.Difficulty)
            {

            }
            column(PassingRate; Course.PassingRate)
            {

            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    /*field(Name; SourceExpression)
                    {
                        ApplicationArea = All;

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
                    ApplicationArea = All;

                }
            }
        }
    }

    var
        myInt: Integer;
}