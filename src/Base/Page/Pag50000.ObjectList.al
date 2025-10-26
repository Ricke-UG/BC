namespace RealEstate;

page 50000 "Object List"
{
    ApplicationArea = All;
    Caption = 'Object List';
    PageType = List;
    SourceTable = Object;
    CardPageId = "Object Card";
    UsageCategory = Lists;
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                }
                field(Address; Rec.Address)
                {
                    ToolTip = 'Specifies the value of the Address field.', Comment = '%';
                }
                field("Address 2"; Rec."Address 2")
                {
                    ToolTip = 'Specifies the value of the Address 2 field.', Comment = '%';
                }
                field("Post Code"; Rec."Post Code")
                {
                    ToolTip = 'Specifies the value of the Post Code field.', Comment = '%';
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the City field.', Comment = '%';
                }
                field("Country/Region Code"; Rec."Country/Region Code")
                {
                    ToolTip = 'Specifies the value of the Country/Region Code field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field("Start Date"; Rec."Start Date")
                {
                    ToolTip = 'Specifies the value of the Start Date field.', Comment = '%';
                }
                field("End Date"; Rec."End Date")
                {
                    ToolTip = 'Specifies the value of the End Date field.', Comment = '%';
                }
                field(Buildings; Rec.Buildings)
                {
                    ToolTip = 'Specifies the value of the Buildings field.', Comment = '%';
                }
                field("Building Entrances"; Rec."Building Entrances")
                {
                    ToolTip = 'Specifies the value of the Building Entrances field.', Comment = '%';
                }
                field("Units"; Rec."Units")
                {

                }
            }
        }
    }
    actions
    {
        area(navigation)
        {
            action(Building)
            {
                ApplicationArea = All;
                Caption = 'Buildings';
                Image = Company;
                RunObject = Page "Object Building List";
                RunPageLink = "Object No." = field("No.");
                ShortCutKey = 'Alt+B';
                ToolTip = 'View or edit Buildings.';
            }
        }
    }
}
