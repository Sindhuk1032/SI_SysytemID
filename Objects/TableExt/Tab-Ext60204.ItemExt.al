tableextension 60204 ItemExt extends Item
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
}
