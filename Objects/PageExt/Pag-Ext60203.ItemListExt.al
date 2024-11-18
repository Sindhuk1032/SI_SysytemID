pageextension 60203 ItemListExtt extends "Item List"
{
    actions
    {
        addafter(Attributes)
        {
            action(GetSystemID)
            {
                ApplicationArea = all;
                Visible = true;
                trigger OnAction()
                var
                    Item: Record Item;
                    code: text;

                begin
                    if item.FindSet() then begin
                        repeat
                            code := Format(Item.SystemId);
                            item."Custom System Id" := code.Replace('{', '').Replace('}', '').ToLower();
                            item."Custom System Created AT" := item.SystemCreatedAt;
                            item.Modify();
                        until item.Next() = 0;
                    end
                end;
            }
        }
    }

}
