namespace RealEstate;

using Microsoft.Foundation.Address;

table 50000 Object
{
    Caption = 'Object';
    DataClassification = ToBeClassified;
    LookupPageId = "Object List";

    fields
    {
        field(1; "No."; Code[10])
        {
            Caption = 'No.';
        }
        field(4; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(5; Address; Text[100])
        {
            Caption = 'Address';
            OptimizeForTextSearch = true;
            ToolTip = 'Here you can enter the address of the property.Example: An administrative property refers to multiple house numbers "Feldstraße 11-20." Thus, the complete address would be stored on the property card.';
        }
        field(6; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
            OptimizeForTextSearch = true;
            ToolTip = 'Specifies additional address information.';
        }
        field(7; City; Text[30])
        {
            Caption = 'City';
            OptimizeForTextSearch = true;
            TableRelation = if ("Country/Region Code" = const('')) "Post Code".City else if ("Country/Region Code" = filter(<> '')) "Post Code".City where("Country/Region Code" = field("Country/Region Code"));
            ValidateTableRelation = false;
            ToolTip = 'Specifies the Object''s city.';

            trigger OnLookup()
            begin
                PostCode.LookupPostCode(City, "Post Code", County, "Country/Region Code");
            end;

            trigger OnValidate()
            var
                IsHandled: Boolean;
            begin
                PostCode.ValidateCity(City, "Post Code", County, "Country/Region Code", (CurrFieldNo <> 0) and GuiAllowed);
            end;
        }
        field(35; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
            ToolTip = 'Specifies the country/region of the address.';

            trigger OnValidate()
            begin
                PostCode.CheckClearPostCodeCityCounty(City, "Post Code", County, "Country/Region Code", xRec."Country/Region Code");
            end;
        }
        field(91; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            ToolTip = 'Specifies the post code.';
            TableRelation = if ("Country/Region Code" = const('')) "Post Code" else if ("Country/Region Code" = filter(<> '')) "Post Code" where("Country/Region Code" = field("Country/Region Code"));
            ValidateTableRelation = false;
            trigger OnLookup()
            begin
                PostCode.LookupPostCode(City, "Post Code", County, "Country/Region Code");
            end;

            trigger OnValidate()
            var
                IsHandled: Boolean;
            begin
                PostCode.ValidatePostCode(City, "Post Code", County, "Country/Region Code", (CurrFieldNo <> 0) and GuiAllowed);
            end;
        }
        field(92; County; Text[30])
        {
            CaptionClass = '5,1,' + "Country/Region Code";
            Caption = 'County';
            OptimizeForTextSearch = true;
            ToolTip = 'Specifies the state, province or county as a part of the address.';
            Enabled = false;
        }
        field(100; "Start Date"; Date)
        {
            Caption = 'Start Date';
            ToolTip = 'The start date of administration is required in order to put the object into operation.';

        }
        field(101; "End Date"; Date)
        {
            Caption = 'End Date';
        }
        field(1000; Buildings; Integer)
        {
            ToolTip = 'This field shows you how many buildings the Object has.';
            Caption = 'Buildings';
            FieldClass = FlowField;
            CalcFormula = count("Object Building" where("Object No." = field("No.")));
            Editable = false;
        }
        field(1001; "Building Entrances"; Integer)
        {
            ToolTip = 'This field shows you how many entrances the building has.';
            Caption = 'Building Entrances';
            FieldClass = FlowField;
            CalcFormula = count("Object Building Entrance" where("Object No." = field("No.")));
            Editable = false;
        }
        field(1003; "Units"; Integer)
        {
            ToolTip = 'This field shows you how many Units the building has.';
            Caption = 'Units';
            FieldClass = FlowField;
            CalcFormula = count("Unit" where("Object No." = field("No.")));
            Editable = false;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    var
        PostCode: Record "Post Code";
}
