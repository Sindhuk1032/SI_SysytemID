pageextension 60204 SalesOrderExt extends "Sales Order List"
{
    actions
    {
        addafter("O&rder")
        {
            action(GetSystemID)
            {
                ApplicationArea = all;
                Visible = true;
                trigger OnAction()
                var
                    SalesHeader: Record "Sales Header";
                    Id: text;

                begin
                    if SalesHeader.FindSet() then begin
                        repeat
                            Id := Format(SalesHeader.SystemId);
                            SalesHeader."Custom System Id" := Id.Replace('{', '').Replace('}', '').ToLower();
                            SalesHeader."Custom System Created AT" := SalesHeader.SystemCreatedAt;
                            SalesHeader.Modify();
                        until SalesHeader.next() = 0;
                    end
                end;
            }
        }
    }

}



