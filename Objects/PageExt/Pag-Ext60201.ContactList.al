pageextension 60201 ContactList extends "Contact List"
{
    actions
    {
        addafter(ActionGroupCRM)
        {
            action(GetSystemID)
            {
                ApplicationArea = all;
                Visible = true;
                trigger OnAction()
                var
                    Contact: record Contact;
                    Id: text;

                begin
                    if Contact.FindSet() then begin
                        repeat
                            Id := Format(Contact.SystemId);
                            Contact."Custom System Id" := Id.Replace('{', '').Replace('}', '').ToLower();
                            Contact."Custom System Created AT" := Contact.SystemCreatedAt;
                            Contact.Modify();
                        until Contact.next() = 0;
                    end
                end;
            }
        }
    }
}


