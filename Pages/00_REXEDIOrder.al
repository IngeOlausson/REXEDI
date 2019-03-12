// IOL 190312

page 50034 REXEDIOrder
{
    Caption = 'EDI Order';
    PageType = Card;
    SourceTable = REXEDISalesHeader;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No.";"No.")
                {
                    
                }
                field("Sell-to Customer Name";"Sell-to Customer Name")
                {
                    
                }

                field("Ship-to Code";"Ship-to Code")
                {

                }
                field("Ship-to Address";"Ship-to Address")
                {

                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                    REXEDIManagement.GetXMLFilesREX;
                end;
            }
        }
    }
    
    var
        REXEDIManagement : Codeunit REXEDIManagement;
}