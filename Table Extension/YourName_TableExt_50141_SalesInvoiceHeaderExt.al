tableextension 50141 "Sales Invoice Header Extension" extends "Sales Invoice Header"
{
    fields
    {
        // Add changes to table fields here
        field(50140; "Source of Sales"; Code[20])
        {
            TableRelation = "Source of Sales".code where(Blocked = const(false));
            Editable = false;
        }
    }

    var
        myInt: Integer;
}