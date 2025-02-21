pageextension 60101 CustomerCardExt extends "Customer Card"
{
    actions
    {
        addlast(processing)
        {
            action(CountSalesOrders)
            {
                Caption = 'Count Sales Orders';
                ApplicationArea = All;


                trigger OnAction()
                var
                    SalesHeader: Record "Sales Header";
                    CustomerNo: Code[20];
                    OrderCount: Integer;
                begin
                    CustomerNo := Rec."No.";
                    SalesHeader.SetRange("Sell-to Customer No.", CustomerNo);
                    SalesHeader.SetRange("Document Type", SalesHeader."Document Type"::Order);

                    OrderCount := SalesHeader.Count;

                    Message('Total Sales Orders for ', CustomerNo, OrderCount);
                end;
            }
        }
    }
}
