tableextension 50144 "Item Ledger Entry Extension" extends "Item Ledger Entry"
{
    fields
    {
        field(50140; "Source of Sales"; Code[20])
        {
            TableRelation = "Source of Sales".code where(Blocked = const(false));
        }
    }
}