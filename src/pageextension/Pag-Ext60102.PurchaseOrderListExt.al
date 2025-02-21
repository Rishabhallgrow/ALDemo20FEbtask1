pageextension 60102 PurchaseOrderListExt extends "Purchase Order List"
{

    actions
    {
        addlast(processing)
        {
            action(ShowMatchingOrders)
            {
                Caption = 'Show Orders with Vendor Invoice No.';
                ApplicationArea = All;
                Image = List;

                trigger OnAction()
                var
                    PurchaseHeader: Record "Purchase Header";
                    OrderCount: Integer;
                    VendorInvNo: Code[20];
                begin
                    VendorInvNo := '23047';

                    PurchaseHeader.SetRange("Vendor Invoice No.", VendorInvNo);
                    PurchaseHeader.SetRange("Document Type", PurchaseHeader."Document Type"::Order);

                    OrderCount := 0;

                    if PurchaseHeader.FindSet() then
                        repeat
                            OrderCount += 1;
                        until PurchaseHeader.Next() = 0;

                    if OrderCount > 0 then
                        Message('Purchase Orders with Vendor Invoice No. "%1": %2', VendorInvNo, OrderCount)
                    else
                        Message('No Purchase Orders found with Vendor Invoice No. "%1".', VendorInvNo);
                end;
            }
        }
    }
}
