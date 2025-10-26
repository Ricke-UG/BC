namespace RealEstate;

page 50002 "Object Building List"
{
    ApplicationArea = All;
    Caption = 'Object Building List';
    PageType = List;
    SourceTable = "Object Building";
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
                field("No."; Rec."No.")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field("Construction Year"; Rec."Construction Year")
                {
                }
            }
        }
    }
    actions
    {
        area(navigation)
        {
            action("Building Entrance")
            {
                ApplicationArea = All;
                Caption = 'Building Entrances';
                Image = BankAccount;
                RunObject = Page "Object Building Entrance List";
                RunPageLink = "Object No." = field("Object No."), "Object Building No." = field("No.");
                ToolTip = 'View or set up the vendor''s bank accounts. You can set up any number of bank accounts for each vendor.';
            }
        }
    }
}
