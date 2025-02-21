pageextension 60102 PurchaseOrderListExt extends "Purchase Order List"
{

    actions
    {
        addlast(processing)
        {
            action(ShowMatchingOrders)
            {
                Caption = 'Show Orders with Vendor Invoice No. = INV';
                ApplicationArea = All;
                Image = List;

                trigger OnAction()
                var
                    PurchaseHeader: Record "Purchase Header";
                    OrderList: Text;
                begin
                    PurchaseHeader.SetRange("Vendor Invoice No.", 'INV');
                    PurchaseHeader.SetRange("Document Type", PurchaseHeader."Document Type"::Order);

                    if PurchaseHeader.FindSet() then begin
                        repeat
                            OrderList += Format(PurchaseHeader."No.");
                        until PurchaseHeader.Next() = 0;

                        Message('Purchase Orders with Vendor Invoice No. "INV":', OrderList);
                    end else
                        Message('No Purchase Orders found with Vendor Invoice No. "INV".');
                end;
            }
        }
    }
}
