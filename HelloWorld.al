// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50100 CustomerListExt extends "Customer List"
{
    /*trigger OnOpenPage();
    begin
        Message('Hello world,this is test');
    end;*/

    actions
    {
        addlast(processing)
        {
            action("ResetTop10Cust")
            {
                Caption = 'Reset Top 10 Cust. Cred. Limit';
                trigger OnAction();
                begin
                    Codeunit.Run(50110);
                end;
            }
        }
    }
}