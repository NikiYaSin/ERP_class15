table 50140 "Source of Sales"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; code; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Description; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Blocked; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Last Modified Date Time"; DateTime)
        {
            DataClassification = ToBeClassified;
            Editable = false;
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
        UpdateLastModifiedDateTime
    end;

    trigger OnModify()
    begin
        UpdateLastModifiedDateTime()
    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin
        UpdateLastModifiedDateTime()
    end;

    local procedure UpdateLastModifiedDateTime()
    var
        myInt: Integer;
    begin
        "Last Modified Date Time" := CurrentDateTime();
    end;

}