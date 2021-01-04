tableextension 50142 "Sales Ship Header Extension" extends "Sales Shipment Header"
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