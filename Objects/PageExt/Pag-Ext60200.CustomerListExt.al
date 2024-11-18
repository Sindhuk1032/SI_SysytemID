pageextension 60200 CustomerListExt extends "Customer List"
{
    actions
    {
        addafter(Action24)
        {
            action(GetSystemID)
            {
                ApplicationArea = all;
                Visible = true;
                trigger OnAction()
                var
                    customer: record Customer;
                    Id: text;

                begin
                    if customer.FindSet() then begin
                        repeat
                            Id := Format(customer.SystemId);
                            customer."Custom System Id" := Id.Replace('{', '').Replace('}', '').ToLower();
                            customer."Custom System Created AT" := customer.SystemCreatedAt;
                            customer.Modify();
                        until customer.next() = 0;
                    end
                end;
            }
        }
    }
}