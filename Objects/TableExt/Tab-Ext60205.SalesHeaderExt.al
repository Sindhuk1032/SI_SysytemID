tableextension 60205 SalesHeaderExt extends "Sales Header"
{
    fields
    {
        field(60200; "Custom System Id"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(60201; "Custom System Created AT"; DateTime)
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {

    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}