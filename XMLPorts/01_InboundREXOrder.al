xmlport 50005 xmlInboundREXOrder2
{
    UseDefaultNamespace = false;
    Format = Xml;
    Encoding = UTF8;  
    FormatEvaluate = Legacy;  
    
    schema
    {
        tableelement(REXEDISalesHeader;REXEDISalesHeader)
        {
             
            XmlName = 'Sales_Order_Inbox_WS';
            fieldelement(Documen_Type;REXEDISalesHeader."Document Type")
            {
              
            }
            fieldelement(Sell_to_Customer;REXEDISalesHeader."Sell-to Customer No.")
            {
            }
            fieldelement(No;REXEDISalesHeader."No.")
            {
            }
            fieldelement(Your_Reference;REXEDISalesHeader."Your Reference")
            {
 
            }            
            fieldelement(Ship_to_Code;REXEDISalesHeader."Ship-to Code")
            {
 
            }            
            fieldelement(Ship_to_Name;REXEDISalesHeader."Ship-to Name")
            {
 
            }            
            fieldelement(Ship_to_Address;REXEDISalesHeader."Ship-to Address")
            {
 
            }            
            fieldelement(Ship_to_City;REXEDISalesHeader."Ship-to City")
            {
 
            }            
            fieldelement(Order_Date;REXEDISalesHeader."Order Date")
            {
 
            }            
            fieldelement(Shipment_Method_Code;REXEDISalesHeader."Shipment Method Code")
            {
 
            }            
            fieldelement(Ship_to_Post_Code;REXEDISalesHeader."Ship-to Post Code")
            {
 
            }            
            fieldelement(Ship_to_Country_Region_Code;REXEDISalesHeader."Ship-to Country/Region Code")
            {
 
            }            
            fieldelement(Requested_Delivery_Date;REXEDISalesHeader."Requested Delivery Date")
            {
 
            }            
            fieldelement(OrderType;REXEDISalesHeader."Order Class")
            {
 
            }            
            fieldelement(Shipment_Notification;REXEDISalesHeader."Shipment Notification")
            {
 
            }            
            textelement("<sales_line_node>")
            {
 
                XmlName = 'Sales_Line';
                tableelement(REXEDISalesLine;REXEDISalesLine)
                {
     
                    XmlName = 'Sales_Line_Inbox_WS';
                    fieldelement(Line_No;REXEDISalesLine."Line No.")
                    {
         
                    }
                    fieldelement(Quantity;REXEDISalesLine.Quantity)
                    {
         
                    }
                    textelement(unit_price_txt)
                    {
         
                        XmlName = 'Unit_Price';

                        trigger OnAfterAssignVariable();
                        begin
                            EVALUATE(REXEDISalesLine."Unit Price",CONVERTSTR(Unit_Price_Txt,'.',DELCHR(FORMAT(0.1),'=','01')));
                        end;
                    }
                    fieldelement(Cross_Reference_Type_No;REXEDISalesLine."Cross-Reference Type No.")
                    {
         
                    }
                    fieldelement(Requested_Delivery_Date;REXEDISalesLine."Requested Delivery Date")
                    {
         
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

