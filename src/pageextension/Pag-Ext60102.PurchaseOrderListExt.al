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
                    OrderList: Text;
                    VendorInvNo: Code[20];
                begin
                    VendorInvNo := 'INV';

                    PurchaseHeader.SetRange("Vendor Invoice No.", VendorInvNo);
                    PurchaseHeader.SetRange("Document Type", PurchaseHeader."Document Type"::Order);

                    if PurchaseHeader.FindFirst() then begin
                        OrderList := PurchaseHeader.GetFilter("No.");
                        Message('Purchase Orders with Vendor Invoice No. "%1": %2', VendorInvNo, OrderList);
                    end else
                        Message('No Purchase Orders found with Vendor Invoice No. "%1".', VendorInvNo);
                end;
            }
        }
    }
}
