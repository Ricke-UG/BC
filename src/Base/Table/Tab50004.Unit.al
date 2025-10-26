namespace RealEstate;

table 50004 Unit
{
    Caption = 'Unit';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Object No."; Code[10])
        {
            Caption = 'Object No.';
        }
        field(2; "No."; Code[10])
        {
            Caption = 'No.';
        }
        field(3; "Type"; Enum "Unit Type")
        {
            Caption = 'Type';
        }
        field(4; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(5; Address; Text[100])
        {
            Caption = 'Address';
            OptimizeForTextSearch = true;
            ToolTip = 'Displays the address of the unit.';
        }
        field(6; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
            OptimizeForTextSearch = true;
            ToolTip = 'Specifies additional address information.';
        }
        field(7; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            FieldClass = FlowField;
            CalcFormula = lookup(Object."Post Code" where("No." = field("Object No.")));
            Editable = false;
            ToolTip = 'Specifies the Unit''s Post Code.';
        }
        field(8; City; Text[30])
        {
            Caption = 'City';
            FieldClass = FlowField;
            CalcFormula = lookup(Object.City where("No." = field("Object No.")));
            Editable = False;
            ToolTip = 'Specifies the Unit''s city.';
        }
        field(9; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            FieldClass = FlowField;
            CalcFormula = lookup(Object."Country/Region Code" where("No." = field("Object No.")));
            Editable = false;
            ToolTip = 'Specifies the country/region of the address.';
        }
        field(10; "Object Building No."; Code[3])
        {
            Caption = 'Object Building No.';
            TableRelation = "Object Building" where("Object No." = field("Object No."));
            ValidateTableRelation = true;
        }
        field(11; "Object Building Entrance No."; Code[3])
        {
            Caption = 'Object Building Entrance No.';
            TableRelation = "Object Building Entrance" where("Object No." = field("Object No."), "Object Building No." = field("Object Building No."));
            ValidateTableRelation = true;
        }
        field(12; "Object Building Floor Code"; Code[10])
        {
            Caption = 'Object Building Floor No.';
            TableRelation = "Object Building Floor" where("Object No." = field("Object No."), "Object Building No." = field("Object Building No."));
            ValidateTableRelation = true;
        }
        field(1000; "Facilities "; Integer)
        {
            Caption = 'Facilities ';
            //FieldClass = FlowField;
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
