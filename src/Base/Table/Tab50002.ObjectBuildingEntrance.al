namespace RealEstate;

table 50002 "Object Building Entrance"
{
    Caption = 'Object Building Entrance';
    DataClassification = ToBeClassified;
    LookupPageId = "Object Building Entrance List";

    fields
    {
        field(1; "Object No."; Code[10])
        {
            Caption = 'Object No.';
            Editable = false;
        }
        field(2; "Object Building No."; Code[3])
        {
            Caption = 'Building No.';
            Editable = false;
        }
        field(3; "No."; Code[3])
        {
            Caption = 'No.';
        }
        field(4; Description; Text[50])
        {
            Caption = 'Description';
        }
    }
    keys
    {
        key(PK; "Object No.", "Object Building No.", "No.")
        {
            Clustered = true;
        }
    }
}
