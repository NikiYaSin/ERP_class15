tableextension 50000 "Sales Header Extension" extends "Sales Header"
{
    fields
    {
        // Add changes to table fields here
        field(50000; "Source of Sales"; Code[20])
        {
            TableRelation = "Source of Sales".code where(Blocked = const(false));
        }
    }

    var
        myInt: Integer;
}