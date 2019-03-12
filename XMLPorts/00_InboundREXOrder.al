xmlport 50004 xmlInboundREXOrder
{
    Namespaces = sal='urn:microsoft-dynamics-schemas/page/sales_order_inbox_ws';
    schema
    {
        tableelement(REXEDISalesHeader;REXEDISalesHeader)
        {
            NamespacePrefix = 'sal';            
            XmlName = 'Sales_Order_Inbox_WS';
            fieldelement(Documen_Type;REXEDISalesHeader."Document Type")
            {
                NamespacePrefix = 'sal';                
            }
            fieldelement(Sell_to_Customer;REXEDISalesHeader."Sell-to Customer No.")
            {
                NamespacePrefix = 'sal';
            }
            fieldelement(No;REXEDISalesHeader."No.")
            {
                NamespacePrefix = 'sal';
            }
            fieldelement(Your_Reference;REXEDISalesHeader."Your Reference")
            {
                NamespacePrefix = 'sal';
            }            
            fieldelement(Ship_to_Code;REXEDISalesHeader."Ship-to Code")
            {
                NamespacePrefix = 'sal';
            }            
            fieldelement(Ship_to_Name;REXEDISalesHeader."Ship-to Name")
            {
                NamespacePrefix = 'sal';
            }            
            fieldelement(Ship_to_Address;REXEDISalesHeader."Ship-to Address")
            {
                NamespacePrefix = 'sal';
            }            
            fieldelement(Ship_to_City;REXEDISalesHeader."Ship-to City")
            {
                NamespacePrefix = 'sal';
            }            
            fieldelement(Order_Date;REXEDISalesHeader."Order Date")
            {
                NamespacePrefix = 'sal';
            }            
            fieldelement(Shipment_Method_Code;REXEDISalesHeader."Shipment Method Code")
            {
                NamespacePrefix = 'sal';
            }            
            fieldelement(Ship_to_Post_Code;REXEDISalesHeader."Ship-to Post Code")
            {
                NamespacePrefix = 'sal';
            }            
            fieldelement(Ship_to_Country_Region_Code;REXEDISalesHeader."Ship-to Country/Region Code")
            {
                NamespacePrefix = 'sal';
            }            
            fieldelement(Requested_Delivery_Date;REXEDISalesHeader."Requested Delivery Date")
            {
                NamespacePrefix = 'sal';
            }            
            fieldelement(OrderType;REXEDISalesHeader."Order Class")
            {
                NamespacePrefix = 'sal';
            }            
            fieldelement(Shipment_Notification;REXEDISalesHeader."Shipment Notification")
            {
                NamespacePrefix = 'sal';
            }            
            textelement("<sales_line_node>")
            {
                NamespacePrefix = 'sal';
                XmlName = 'Sales_Line';
                tableelement(REXEDISalesLine;REXEDISalesLine)
                {
                    NamespacePrefix = 'sal';
                    XmlName = 'Sales_Line_Inbox_WS';
                    fieldelement(Line_No;REXEDISalesLine."Line No.")
                    {
                        NamespacePrefix = 'sal';
                    }
                    fieldelement(Quantity;REXEDISalesLine.Quantity)
                    {
                        NamespacePrefix = 'sal';
                    }
                    textelement(unit_price_txt)
                    {
                        NamespacePrefix = 'sal';
                        XmlName = 'Unit_Price';

                        trigger OnAfterAssignVariable();
                        begin
                            EVALUATE(REXEDISalesLine."Unit Price",CONVERTSTR(Unit_Price_Txt,'.',DELCHR(FORMAT(0.1),'=','01')));
                        end;
                    }
                    fieldelement(Cross_Reference_Type_No;REXEDISalesLine."Cross-Reference Type No.")
                    {
                        NamespacePrefix = 'sal';
                    }
                    fieldelement(Requested_Delivery_Date;REXEDISalesLine."Requested Delivery Date")
                    {
                        NamespacePrefix = 'sal';
                    }
                }
            }
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }
}

