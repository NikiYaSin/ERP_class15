tableextension 50143 "Item Journal Line Extension" extends "Item Journal Line"
{
    fields
    {
        field(50140; "Source of Sales"; Code[20])
        {
            TableRelation = "Source of Sales".code where(Blocked = const(false));
        }
    }
}