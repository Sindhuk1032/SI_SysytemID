tableextension 60202 ContactExt extends Contact
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
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}