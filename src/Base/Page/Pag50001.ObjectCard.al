namespace RealEstate;

page 50001 "Object Card"
{
    ApplicationArea = All;
    Caption = 'Object Card';
    PageType = Card;
    SourceTable = Object;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("No."; Rec."No.")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field(Address; Rec.Address)
                {
                }
                field("Address 2"; Rec."Address 2")
                {
                }
                field("Post Code"; Rec."Post Code")
                {
                }
                field(City; Rec.City)
                {
                }
                field("Country/Region Code"; Rec."Country/Region Code")
                {
                }
            }
            group(Administration)
            {
                Caption = 'Administration';

                field("Start Date"; Rec."Start Date")
                {
                }
                field("End Date"; Rec."End Date")
                {
                }
                field(Buildings; Rec.Buildings)
                {
                }
                field("Building Entrances"; Rec."Building Entrances")
                {
                }
                field("Units"; Rec."Units")
                {
                }
            }
        }
    }
}
