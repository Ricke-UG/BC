namespace RealEstate;

page 50003 "Object Building Entrance List"
{
    ApplicationArea = All;
    Caption = 'Object Building Entrance List';
    PageType = List;
    SourceTable = "Object Building Entrance";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Object No."; Rec."Object No.")
                {
                }
                field("Building No."; Rec."Object Building No.")
                {
                }
                field("No."; Rec."No.")
                {
                }
                field(Description; Rec.Description)
                {
                }
            }
        }
    }
}
