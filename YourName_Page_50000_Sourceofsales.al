page 50000 "Source of Sales"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Source of Sales";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(code; code)
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field(Blocked; Blocked)
                {
                    ApplicationArea = All;
                }
                field("Last Modified Date Time"; "Last Modified Date Time")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {
            systempart(Link; Links)
            {

            }
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
        }
    }
}