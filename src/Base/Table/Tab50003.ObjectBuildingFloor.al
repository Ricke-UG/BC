namespace RealEstate;

table 50003 "Object Building Floor"
{
    Caption = 'Object Building Floor';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Object No."; Code[10])
        {
            Caption = 'Object No.';
            TableRelation = Object;
        }
        field(2; "Object Building No."; Code[3])
        {
            Caption = 'Object Buliding No.';

        }
        field(3; "Code"; Code[10])
        {
            Caption = 'Code';
        }
    }
    keys
    {
        key(PK; "Object No.", "Object Building No.", "Code")
        {
            Clustered = true;
        }
    }
}
