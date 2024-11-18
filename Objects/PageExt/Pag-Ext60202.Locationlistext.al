pageextension 60202 Locationlistext extends "Location List"
{
    actions
    {
        addafter("&Bins")
        {
            action(GetSystemID)
            {
                ApplicationArea = all;
                Visible = true;
                trigger OnAction()
                var
                    location: Record Location;
                    code: text;

                begin
                    if location.FindSet() then begin
                        repeat
                            code := Format(location.SystemId);
                            location."Custom System Id" := code.Replace('{', '').Replace('}', '').ToLower();
                            location."Custom System Created AT" := location.SystemCreatedAt;
                            location.Modify();
                        until location.next() = 0;
                    end
                end;
            }
        }
    }
}


