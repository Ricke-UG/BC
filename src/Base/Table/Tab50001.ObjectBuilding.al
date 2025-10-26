namespace RealEstate;

table 50001 "Object Building"
{
    Caption = 'Object';
    DataClassification = ToBeClassified;
    LookupPageId = "Object Building List";

    fields
    {
        field(1; "Object No."; Code[10])
        {
            Caption = 'Object No.';
            TableRelation = Object;
            Editable = false;
        }
        field(2; "No."; Code[3])
        {
            Caption = 'No.';
        }
        field(4; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(10; "Construction Year"; Integer)
        {
            Caption = 'Construction Year';
        }
        field(1000; "Entrance"; Integer)
        {
            ToolTip = 'This field shows you how many Entraces the building has.';
            Caption = 'Floors';
            FieldClass = FlowField;
            CalcFormula = count("Object Building Entrance" where("Object No." = field("Object No."), "Object Building No." = field("No.")));
            Editable = false;
        }
        field(1001; "Floors"; Integer)
        {
            ToolTip = 'This field shows you how many Floors incl. Basement the building has.';
            Caption = 'Floors';
            FieldClass = FlowField;
            CalcFormula = count("Object Building Floor" where("Object No." = field("Object No."), "Object Building No." = field("No.")));
            Editable = false;
        }
    }
    keys
    {
        key(PK; "Object No.", "No.")
        {
            Clustered = true;
        }
    }
}
