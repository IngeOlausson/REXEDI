table 50001 "REXEDISalesHeader"
{
    // version NAVW111.00.00.26401,NAVSE11.00.00.26401,PE8.03

    // PEB *** Begin ***
    // PEB0012 "Note of Goods" field added
    // PEB
    // PEB *** End ***

    CaptionML = ENU='EDI Sales Header',
                SVE='EDI Försäljningshuvud';
    DataCaptionFields = "No.","Sell-to Customer Name";
    //LookupPageID = 45;

    fields
    {
        field(1;"Document Type";Option)
        {
            CaptionML = ENU='Document Type',
                        SVE='Dokumenttyp';
            OptionCaptionML = ENU='Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order',
                              SVE='Offert,Order,Faktura,Kreditnota,Avropsorder,Returorder';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(2;"Sell-to Customer No.";Code[20])
        {
            CaptionML = ENU='Sell-to Customer No.',
                        SVE='Förs.kundnr';
            TableRelation = Customer;
        }
        field(3;"No.";Code[20])
        {
            CaptionML = ENU='No.',
                        SVE='Nr';
        }
        field(4;"Bill-to Customer No.";Code[20])
        {
            CaptionML = ENU='Bill-to Customer No.',
                        SVE='Faktureringskundnr';
            NotBlank = true;
            TableRelation = Customer;


        }
        field(5;"Bill-to Name";Text[50])
        {
            CaptionML = ENU='Bill-to Name',
                        SVE='Faktureringsnamn';
            TableRelation = Customer;
            ValidateTableRelation = false;
        }
        field(6;"Bill-to Name 2";Text[50])
        {
            CaptionML = ENU='Bill-to Name 2',
                        SVE='Faktureringsnamn 2';
        }
        field(7;"Bill-to Address";Text[50])
        {
            CaptionML = ENU='Bill-to Address',
                        SVE='Faktureringsadress';
        }
        field(8;"Bill-to Address 2";Text[50])
        {
            CaptionML = ENU='Bill-to Address 2',
                        SVE='Faktureringsadress 2';
        }
        field(9;"Bill-to City";Text[30])
        {
            CaptionML = ENU='Bill-to City',
                        SVE='Faktureras ort';
        }
        field(10;"Bill-to Contact";Text[50])
        {
            CaptionML = ENU='Bill-to Contact',
                        SVE='Faktureringskontakt';
        }
        field(11;"Your Reference";Text[35])
        {
            CaptionML = ENU='Your Reference',
                        SVE='Er referens';
        }
        field(12;"Ship-to Code";Code[10])
        {
            CaptionML = ENU='Ship-to Code',
                        SVE='Leveransadresskod';
        }
        field(13;"Ship-to Name";Text[50])
        {
            CaptionML = ENU='Ship-to Name',
                        SVE='Leveransnamn';
        }
        field(14;"Ship-to Name 2";Text[50])
        {
            CaptionML = ENU='Ship-to Name 2',
                        SVE='Leveransnamn 2';
        }
        field(15;"Ship-to Address";Text[50])
        {
            CaptionML = ENU='Ship-to Address',
                        SVE='Leveransadress';
        }
        field(16;"Ship-to Address 2";Text[50])
        {
            CaptionML = ENU='Ship-to Address 2',
                        SVE='Leveransadress 2';
        }
        field(17;"Ship-to City";Text[30])
        {
            CaptionML = ENU='Ship-to City',
                        SVE='Leveransort';
        }
        field(18;"Ship-to Contact";Text[50])
        {
            CaptionML = ENU='Ship-to Contact',
                        SVE='Leveranskontakt';
        }
        field(19;"Order Date";Date)
        {
            AccessByPermission = TableData 110=R;
            CaptionML = ENU='Order Date',
                        SVE='Orderdatum';
        }
        field(20;"Posting Date";Date)
        {
            CaptionML = ENU='Posting Date',
                        SVE='Bokföringsdatum';
        }
        field(21;"Shipment Date";Date)
        {
            CaptionML = ENU='Shipment Date',
                        SVE='Utleveransdatum';
        }
        field(22;"Posting Description";Text[50])
        {
            CaptionML = ENU='Posting Description',
                        SVE='Bokföringsbeskrivning';
        }
        field(23;"Payment Terms Code";Code[10])
        {
            CaptionML = ENU='Payment Terms Code',
                        SVE='Betalningsvillkorskod';
            TableRelation = "Payment Terms";
        }
        field(24;"Due Date";Date)
        {
            CaptionML = ENU='Due Date',
                        SVE='Förfallodatum';
        }
        field(25;"Payment Discount %";Decimal)
        {
            CaptionML = ENU='Payment Discount %',
                        SVE='Kassarabatt %';
            DecimalPlaces = 0:5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(26;"Pmt. Discount Date";Date)
        {
            CaptionML = ENU='Pmt. Discount Date',
                        SVE='Kassarabattsdatum';
        }
        field(27;"Shipment Method Code";Code[10])
        {
            CaptionML = ENU='Shipment Method Code',
                        SVE='Utleveransvillkorskod';
            TableRelation = "Shipment Method";
        }
        field(28;"Location Code";Code[10])
        {
            CaptionML = ENU='Location Code',
                        SVE='Lagerställekod';
        }
        field(29;"Shortcut Dimension 1 Code";Code[20])
        {
            CaptionClass = '1,2,1';
            CaptionML = ENU='Shortcut Dimension 1 Code',
                        SVE='Genväg dimension 1 kod';
        }
        field(30;"Shortcut Dimension 2 Code";Code[20])
        {
            CaptionClass = '1,2,2';
            CaptionML = ENU='Shortcut Dimension 2 Code',
                        SVE='Genväg dimension 2 kod';
        }
        field(31;"Customer Posting Group";Code[20])
        {
            CaptionML = ENU='Customer Posting Group',
                        SVE='Kundbokföringsmall';
            Editable = false;
            TableRelation = "Customer Posting Group";
        }
        field(32;"Currency Code";Code[10])
        {
            CaptionML = ENU='Currency Code',
                        SVE='Valutakod';
            TableRelation = Currency;
        }
        field(33;"Currency Factor";Decimal)
        {
            CaptionML = ENU='Currency Factor',
                        SVE='Valutafaktor';
            DecimalPlaces = 0:15;
            Editable = false;
            MinValue = 0;
        }
        field(34;"Customer Price Group";Code[10])
        {
            CaptionML = ENU='Customer Price Group',
                        SVE='Kund prisgrupp';
            TableRelation = "Customer Price Group";
        }
        field(35;"Prices Including VAT";Boolean)
        {
            CaptionML = ENU='Prices Including VAT',
                        SVE='Priser inkl. moms';
        }
        field(37;"Invoice Disc. Code";Code[20])
        {
            AccessByPermission = TableData 19=R;
            CaptionML = ENU='Invoice Disc. Code',
                        SVE='Fakturarabattkod';
        }
        field(40;"Customer Disc. Group";Code[20])
        {
            CaptionML = ENU='Customer Disc. Group',
                        SVE='Kundrabattgrupp';
            TableRelation = "Customer Discount Group";
        }
        field(41;"Language Code";Code[10])
        {
            CaptionML = ENU='Language Code',
                        SVE='Språkkod';
            TableRelation = Language;
        }
        field(43;"Salesperson Code";Code[20])
        {
            CaptionML = ENU='Salesperson Code',
                        SVE='Säljarkod';
            TableRelation = "Salesperson/Purchaser";
        }
        field(45;"Order Class";Code[10])
        {
            CaptionML = ENU='Order Class',
                        SVE='Orderstatistiknr';
        }
        field(46;Comment;Boolean)
        {
            CalcFormula = Exist("Sales Comment Line" WHERE ("Document Type"=FIELD("Document Type"),
                                                            "No."=FIELD("No."),
                                                            "Document Line No."=CONST(0)));
            CaptionML = ENU='Comment',
                        SVE='Kommentar';
            Editable = false;
            FieldClass = FlowField;
        }
        field(47;"No. Printed";Integer)
        {
            CaptionML = ENU='No. Printed',
                        SVE='Utskriven';
            Editable = false;
        }
        field(51;"On Hold";Code[3])
        {
            CaptionML = ENU='On Hold',
                        SVE='Stoppad';
        }
        field(52;"Applies-to Doc. Type";Option)
        {
            CaptionML = ENU='Applies-to Doc. Type',
                        SVE='Kopplas till dokumenttyp';
            OptionCaptionML = ENU=' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund',
                              SVE=' ,Betalning,Faktura,Kreditnota,Räntefaktura,Betalningspåminnelse,Återbetalning';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(53;"Applies-to Doc. No.";Code[20])
        {
            CaptionML = ENU='Applies-to Doc. No.',
                        SVE='Kopplas till ver.nr';
        }
        field(55;"Bal. Account No.";Code[20])
        {
            CaptionML = ENU='Bal. Account No.',
                        SVE='Motkonto';
            TableRelation = IF ("Bal. Account Type"=CONST("G/L Account")) "G/L Account"
                            ELSE IF ("Bal. Account Type"=CONST("Bank Account")) "Bank Account";
        }
        field(56;"Recalculate Invoice Disc.";Boolean)
        {
            CaptionML = ENU='Recalculate Invoice Disc.',
                        SVE='Beräkna om fakturarabatt';
            Editable = false;
        }
        field(57;Ship;Boolean)
        {
            CaptionML = ENU='Ship',
                        SVE='Leverera';
            Editable = false;
        }
        field(58;Invoice;Boolean)
        {
            CaptionML = ENU='Invoice',
                        SVE='Faktura';
        }
        field(59;"Print Posted Documents";Boolean)
        {
            CaptionML = ENU='Print Posted Documents',
                        SVE='Skriv ut bokförda dokument';
        }
        field(60;Amount;Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Line".Amount WHERE ("Document Type"=FIELD("Document Type"),
                                                         "Document No."=FIELD("No.")));
            CaptionML = ENU='Amount',
                        SVE='Belopp';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61;"Amount Including VAT";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Line"."Amount Including VAT" WHERE ("Document Type"=FIELD("Document Type"),
                                                                         "Document No."=FIELD("No.")));
            CaptionML = ENU='Amount Including VAT',
                        SVE='Belopp inkl. moms';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62;"Shipping No.";Code[20])
        {
            CaptionML = ENU='Shipping No.',
                        SVE='Leveransnr';
        }
        field(63;"Posting No.";Code[20])
        {
            CaptionML = ENU='Posting No.',
                        SVE='Bokföring med nr';
        }
        field(64;"Last Shipping No.";Code[20])
        {
            CaptionML = ENU='Last Shipping No.',
                        SVE='Senaste leveransnr';
            Editable = false;
            TableRelation = "Sales Shipment Header";
        }
        field(65;"Last Posting No.";Code[20])
        {
            CaptionML = ENU='Last Posting No.',
                        SVE='Senast bokfört med nr';
            Editable = false;
            TableRelation = "Sales Invoice Header";
        }
        field(66;"Prepayment No.";Code[20])
        {
            CaptionML = ENU='Prepayment No.',
                        SVE='Nr för förskottsbetalning';
        }
        field(67;"Last Prepayment No.";Code[20])
        {
            CaptionML = ENU='Last Prepayment No.',
                        SVE='Nr för senaste förskottsbetalning';
            TableRelation = "Sales Invoice Header";
        }
        field(68;"Prepmt. Cr. Memo No.";Code[20])
        {
            CaptionML = ENU='Prepmt. Cr. Memo No.',
                        SVE='Kreditnotanr för förbet.';
        }
        field(69;"Last Prepmt. Cr. Memo No.";Code[20])
        {
            CaptionML = ENU='Last Prepmt. Cr. Memo No.',
                        SVE='Kreditnotanr för senaste förbet.';
            TableRelation = "Sales Cr.Memo Header";
        }
        field(70;"VAT Registration No.";Text[20])
        {
            CaptionML = ENU='VAT Registration No.',
                        SVE='Momsregistreringsnr';
        }
        field(71;"Combine Shipments";Boolean)
        {
            CaptionML = ENU='Combine Shipments',
                        SVE='Samlingsfakturering';
        }
        field(73;"Reason Code";Code[10])
        {
            CaptionML = ENU='Reason Code',
                        SVE='Uppföljningskod';
            TableRelation = "Reason Code";
        }
        field(74;"Gen. Bus. Posting Group";Code[20])
        {
            CaptionML = ENU='Gen. Bus. Posting Group',
                        SVE='Gen. rörelsebokföringsmall';
            TableRelation = "Gen. Business Posting Group";
        }
        field(75;"EU 3-Party Trade";Boolean)
        {
            CaptionML = ENU='EU 3-Party Trade',
                        SVE='EU trepartshandel';
        }
        field(76;"Transaction Type";Code[10])
        {
            CaptionML = ENU='Transaction Type',
                        SVE='EU transaktionstyp';
            TableRelation = "Transaction Type";
        }
        field(77;"Transport Method";Code[10])
        {
            CaptionML = ENU='Transport Method',
                        SVE='Transportsätt';
            TableRelation = "Transport Method";
        }
        field(78;"VAT Country/Region Code";Code[10])
        {
            CaptionML = ENU='VAT Country/Region Code',
                        SVE='Momskod för land/region';
            TableRelation = "Country/Region";
        }
        field(79;"Sell-to Customer Name";Text[50])
        {
            CaptionML = ENU='Sell-to Customer Name',
                        SVE='Förs.kundnamn';
            TableRelation = Customer;
            ValidateTableRelation = false;
        }
        field(80;"Sell-to Customer Name 2";Text[50])
        {
            CaptionML = ENU='Sell-to Customer Name 2',
                        SVE='Förs.kundnamn 2';
        }
        field(81;"Sell-to Address";Text[50])
        {
            CaptionML = ENU='Sell-to Address',
                        SVE='Förs.adress';
        }
        field(82;"Sell-to Address 2";Text[50])
        {
            CaptionML = ENU='Sell-to Address 2',
                        SVE='Förs.adress 2';
        }
        field(83;"Sell-to City";Text[30])
        {
            CaptionML = ENU='Sell-to City',
                        SVE='Förs.ort';
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(84;"Sell-to Contact";Text[50])
        {
            CaptionML = ENU='Sell-to Contact',
                        SVE='Förs.kontakt';
        }
        field(85;"Bill-to Post Code";Code[20])
        {
            CaptionML = ENU='Bill-to Post Code',
                        SVE='Faktureras postnr';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(86;"Bill-to County";Text[30])
        {
            CaptionML = ENU='Bill-to County',
                        SVE='Faktureras delstat';
        }
        field(87;"Bill-to Country/Region Code";Code[10])
        {
            CaptionML = ENU='Bill-to Country/Region Code',
                        SVE='Faktureringsland/-region';
            TableRelation = "Country/Region";
        }
        field(88;"Sell-to Post Code";Code[20])
        {
            CaptionML = ENU='Sell-to Post Code',
                        SVE='Förs.postnrkod';
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(89;"Sell-to County";Text[30])
        {
            CaptionML = ENU='Sell-to County',
                        SVE='Förs.delstat';
        }
        field(90;"Sell-to Country/Region Code";Code[10])
        {
            CaptionML = ENU='Sell-to Country/Region Code',
                        SVE='Förs.land/-region';
            TableRelation = "Country/Region";
        }
        field(91;"Ship-to Post Code";Code[20])
        {
            CaptionML = ENU='Ship-to Post Code',
                        SVE='Leveranspostnrkod';
        }
        field(92;"Ship-to County";Text[30])
        {
            CaptionML = ENU='Ship-to County',
                        SVE='Leveransdelstat';
        }
        field(93;"Ship-to Country/Region Code";Code[10])
        {
            CaptionML = ENU='Ship-to Country/Region Code',
                        SVE='Kod för leveransland/-region';
            TableRelation = "Country/Region";
        }
        field(94;"Bal. Account Type";Option)
        {
            CaptionML = ENU='Bal. Account Type',
                        SVE='Motkontotyp';
            OptionCaptionML = ENU='G/L Account,Bank Account',
                              SVE='Redov.konto,Bankkonto';
            OptionMembers = "G/L Account","Bank Account";
        }
        field(97;"Exit Point";Code[10])
        {
            CaptionML = ENU='Exit Point',
                        SVE='Utförselplats';
            TableRelation = "Entry/Exit Point";
        }
        field(98;Correction;Boolean)
        {
            CaptionML = ENU='Correction',
                        SVE='Rättningstransaktion';
        }
        field(99;"Document Date";Date)
        {
            CaptionML = ENU='Document Date',
                        SVE='Dokumentdatum';
        }
        field(100;"External Document No.";Code[35])
        {
            CaptionML = ENU='External Document No.',
                        SVE='Externt dokumentnr';
        }
        field(101;"Area";Code[10])
        {
            CaptionML = ENU='Area',
                        SVE='Område';
            TableRelation = Area;
        }
        field(102;"Transaction Specification";Code[10])
        {
            CaptionML = ENU='Transaction Specification',
                        SVE='EU transaktionsspecifikation';
            TableRelation = "Transaction Specification";
        }
        field(104;"Payment Method Code";Code[10])
        {
            CaptionML = ENU='Payment Method Code',
                        SVE='Betalningssätt';
            TableRelation = "Payment Method";
        }
        field(105;"Shipping Agent Code";Code[10])
        {
            AccessByPermission = TableData 5790=R;
            CaptionML = ENU='Shipping Agent Code',
                        SVE='Speditörkod';
            TableRelation = "Shipping Agent";
        }
        field(106;"Package Tracking No.";Text[30])
        {
            CaptionML = ENU='Package Tracking No.',
                        SVE='Godsupplysningsnr';
        }
        field(107;"No. Series";Code[20])
        {
            CaptionML = ENU='No. Series',
                        SVE='Nr-serie';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(108;"Posting No. Series";Code[20])
        {
            CaptionML = ENU='Posting No. Series',
                        SVE='Bokföringsnr-serie';
            TableRelation = "No. Series";
        }
        field(109;"Shipping No. Series";Code[20])
        {
            CaptionML = ENU='Shipping No. Series',
                        SVE='Leverans nr-serie';
            TableRelation = "No. Series";
        }
        field(114;"Tax Area Code";Code[20])
        {
            CaptionML = ENU='Tax Area Code',
                        SVE='Skatteområdeskod';
            TableRelation = "Tax Area";
            ValidateTableRelation = false;
        }
        field(115;"Tax Liable";Boolean)
        {
            CaptionML = ENU='Tax Liable',
                        SVE='Skattepliktig';
        }
        field(116;"VAT Bus. Posting Group";Code[20])
        {
            CaptionML = ENU='VAT Bus. Posting Group',
                        SVE='Moms rörelsebokföringsmall';
            TableRelation = "VAT Business Posting Group";
        }
        field(117;Reserve;Option)
        {
            AccessByPermission = TableData 27=R;
            CaptionML = ENU='Reserve',
                        SVE='Reservera';
            InitValue = Optional;
            OptionCaptionML = ENU='Never,Optional,Always',
                              SVE='Aldrig,Valfri,Alltid';
            OptionMembers = Never,Optional,Always;
        }
        field(118;"Applies-to ID";Code[50])
        {
            CaptionML = ENU='Applies-to ID',
                        SVE='Koppla till ID';
        }
        field(119;"VAT Base Discount %";Decimal)
        {
            CaptionML = ENU='VAT Base Discount %',
                        SVE='Nettobelopprabatt %';
            DecimalPlaces = 0:5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(120;Status;Option)
        {
            CaptionML = ENU='Status',
                        SVE='Status';
            Editable = false;
            OptionCaptionML = ENU='Open,Released,Pending Approval,Pending Prepayment',
                              SVE='Öppen,Släppt,Väntar på godkännande,Väntar på förskottsbetalning';
            OptionMembers = Open,Released,"Pending Approval","Pending Prepayment";
        }
        field(121;"Invoice Discount Calculation";Option)
        {
            CaptionML = ENU='Invoice Discount Calculation',
                        SVE='Fakturarabattberäkning';
            Editable = false;
            OptionCaptionML = ENU='None,%,Amount',
                              SVE='Ingen,%,Belopp';
            OptionMembers = "None","%",Amount;
        }
        field(122;"Invoice Discount Value";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='Invoice Discount Value',
                        SVE='Fakturarabattvärde';
            Editable = false;
        }
        field(123;"Send IC Document";Boolean)
        {
            CaptionML = ENU='Send IC Document',
                        SVE='Skicka konc.int. dokument';
        }
        field(124;"IC Status";Option)
        {
            CaptionML = ENU='IC Status',
                        SVE='Konc.int. status';
            OptionCaptionML = ENU='New,Pending,Sent',
                              SVE='Ny,Väntar,Skickad';
            OptionMembers = New,Pending,Sent;
        }
        field(125;"Sell-to IC Partner Code";Code[20])
        {
            CaptionML = ENU='Sell-to IC Partner Code',
                        SVE='Konc.int. partnerkod för förs.';
            Editable = false;
            TableRelation = "IC Partner";
        }
        field(126;"Bill-to IC Partner Code";Code[20])
        {
            CaptionML = ENU='Bill-to IC Partner Code',
                        SVE='Konc.int. partnerkod för fakt.';
            Editable = false;
            TableRelation = "IC Partner";
        }
        field(129;"IC Direction";Option)
        {
            CaptionML = ENU='IC Direction',
                        SVE='Konc.int. riktning';
            OptionCaptionML = ENU='Outgoing,Incoming',
                              SVE='Utgående,Ingående';
            OptionMembers = Outgoing,Incoming;
        }
        field(130;"Prepayment %";Decimal)
        {
            CaptionML = ENU='Prepayment %',
                        SVE='Förskottsbetalning %';
            DecimalPlaces = 0:5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(131;"Prepayment No. Series";Code[20])
        {
            CaptionML = ENU='Prepayment No. Series',
                        SVE='Nummerserie för förskottsbet.';
            TableRelation = "No. Series";
        }
        field(132;"Compress Prepayment";Boolean)
        {
            CaptionML = ENU='Compress Prepayment',
                        SVE='Komprimera förskottsbetalning';
            InitValue = true;
        }
        field(133;"Prepayment Due Date";Date)
        {
            CaptionML = ENU='Prepayment Due Date',
                        SVE='Förfallodatum för förskottsbet.';
        }
        field(134;"Prepmt. Cr. Memo No. Series";Code[20])
        {
            CaptionML = ENU='Prepmt. Cr. Memo No. Series',
                        SVE='Nr-serie för kreditnota för förbet.';
            TableRelation = "No. Series";
        }
        field(135;"Prepmt. Posting Description";Text[50])
        {
            CaptionML = ENU='Prepmt. Posting Description',
                        SVE='Förskottsbet: bokföringsbeskr.';
        }
        field(138;"Prepmt. Pmt. Discount Date";Date)
        {
            CaptionML = ENU='Prepmt. Pmt. Discount Date',
                        SVE='Betalningsrabattdatum för förskottsbetalning';
        }
        field(139;"Prepmt. Payment Terms Code";Code[10])
        {
            CaptionML = ENU='Prepmt. Payment Terms Code',
                        SVE='Betalningsvillkorskod för förskottsbetalning';
            TableRelation = "Payment Terms";
        }
        field(140;"Prepmt. Payment Discount %";Decimal)
        {
            CaptionML = ENU='Prepmt. Payment Discount %',
                        SVE='Kassarabatter i % för förskottsbetalning';
            DecimalPlaces = 0:5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(151;"Quote No.";Code[20])
        {
            CaptionML = ENU='Quote No.',
                        SVE='Offertnr';
            Editable = false;
        }
        field(152;"Quote Valid Until Date";Date)
        {
            CaptionML = ENU='Quote Valid Until Date',
                        SVE='Offertens giltighetsdatum';
        }
        field(153;"Quote Sent to Customer";DateTime)
        {
            CaptionML = ENU='Quote Sent to Customer',
                        SVE='Offert skickad till kund';
            Editable = false;
        }
        field(154;"Quote Accepted";Boolean)
        {
            CaptionML = ENU='Quote Accepted',
                        SVE='Offert godkänd';
        }
        field(155;"Quote Accepted Date";Date)
        {
            CaptionML = ENU='Quote Accepted Date',
                        SVE='Offertens godkännandedatum';
            Editable = false;
        }
        field(160;"Job Queue Status";Option)
        {
            CaptionML = ENU='Job Queue Status',
                        SVE='Status för jobbkö';
            Editable = false;
            OptionCaptionML = ENU=' ,Scheduled for Posting,Error,Posting',
                              SVE=' ,Planerat för bokföring,Fel,Bokföring';
            OptionMembers = " ","Scheduled for Posting",Error,Posting;
        }
        field(161;"Job Queue Entry ID";Guid)
        {
            CaptionML = ENU='Job Queue Entry ID',
                        SVE='Transaktions-ID för jobbkö';
            Editable = false;
        }
        field(165;"Incoming Document Entry No.";Integer)
        {
            CaptionML = ENU='Incoming Document Entry No.',
                        SVE='Löpnr för inkommande dokument';
            TableRelation = "Incoming Document";
        }
        field(166;"Last Email Sent Time";DateTime)
        {
            CaptionML = ENU='Last Email Sent Time',
                        SVE='Tid för senast skickade e-postmeddelande';
        }
        field(167;"Last Email Sent Status";Option)
        {
            CaptionML = ENU='Last Email Sent Status',
                        SVE='Status för senast skickade e-postmeddelande';
            OptionCaptionML = ENU='Not Sent,In Process,Finished,Error',
                              SVE='Ej skickat,Pågående,Slutfört,Fel';
            OptionMembers = "Not Sent","In Process",Finished,Error;
        }
        field(168;"Sent as Email";Boolean)
        {
            CaptionML = ENU='Sent as Email',
                        SVE='Skicka som e-post';
        }
        field(169;"Last Email Notif Cleared";Boolean)
        {
            CaptionML = ENU='Last Email Notif Cleared',
                        SVE='Senaste e-meddelande rensat';
        }
        field(200;"Work Description";BLOB)
        {
            CaptionML = ENU='Work Description',
                        SVE='Arbetsbeskrivning';
        }
        field(300;"Amt. Ship. Not Inv. (LCY)";Decimal)
        {
            CaptionML = ENU='Amount Shipped Not Invoiced (LCY) Incl. VAT',
                        SVE='Levererat belopp, ej fakturerat (BVA) inkl. moms';
            Editable = false;           
        }
        field(301;"Amt. Ship. Not Inv. (LCY) Base";Decimal)
        {
            CaptionML = ENU='Amount Shipped Not Invoiced (LCY)',
                        SVE='Levererat belopp, ej fakturerat (BVA)';
            Editable = false;
        }
        field(480;"Dimension Set ID";Integer)
        {
            CaptionML = ENU='Dimension Set ID',
                        SVE='Dimensionsuppsättnings-ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(600;"Payment Service Set ID";Integer)
        {
            CaptionML = ENU='Payment Service Set ID',
                        SVE='Uppsättnings-ID för betalningstjänst';
        }
        field(1200;"Direct Debit Mandate ID";Code[35])
        {
            CaptionML = ENU='Direct Debit Mandate ID',
                        SVE='Medgivande-ID för autogiro';
        }
        field(1305;"Invoice Discount Amount";Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Line"."Inv. Discount Amount" WHERE ("Document No."=FIELD("No."),
                                                                         "Document Type"=FIELD("Document Type")));
            CaptionML = ENU='Invoice Discount Amount',
                        SVE='Fakturarabatt';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5043;"No. of Archived Versions";Integer)
        {
            CaptionML = ENU='No. of Archived Versions',
                        SVE='Ant. arkiverade versioner';
            Editable = false;
        }
        field(5048;"Doc. No. Occurrence";Integer)
        {
            CaptionML = ENU='Doc. No. Occurrence',
                        SVE='Dok.nr förekomst';
        }
        field(5050;"Campaign No.";Code[20])
        {
            CaptionML = ENU='Campaign No.',
                        SVE='Kampanjnr';
            TableRelation = Campaign;
        }
        field(5051;"Sell-to Customer Template Code";Code[10])
        {
            CaptionML = ENU='Sell-to Customer Template Code',
                        SVE='Förs.kundmallkod';
            TableRelation = "Customer Template";
        }
        field(5052;"Sell-to Contact No.";Code[20])
        {
            CaptionML = ENU='Sell-to Contact No.',
                        SVE='Förs.kontaktnr';
            TableRelation = Contact;
        }
        field(5053;"Bill-to Contact No.";Code[20])
        {
            CaptionML = ENU='Bill-to Contact No.',
                        SVE='Faktureringskontaktnr';
            TableRelation = Contact;
        }
        field(5054;"Bill-to Customer Template Code";Code[10])
        {
            CaptionML = ENU='Bill-to Customer Template Code',
                        SVE='Mallkod för faktureringskund';
            TableRelation = "Customer Template";
        }
        field(5055;"Opportunity No.";Code[20])
        {
            CaptionML = ENU='Opportunity No.',
                        SVE='Affärsmöjlighetsnr';
        }
        field(5700;"Responsibility Center";Code[10])
        {
            CaptionML = ENU='Responsibility Center',
                        SVE='Ansvarsenhet';
            TableRelation = "Responsibility Center";
        }
        field(5750;"Shipping Advice";Option)
        {
            AccessByPermission = TableData 110=R;
            CaptionML = ENU='Shipping Advice',
                        SVE='Leveranstyp';
            OptionCaptionML = ENU='Partial,Complete',
                              SVE='Delvis,Fullständig';
            OptionMembers = Partial,Complete;
        }
        field(5751;"Shipped Not Invoiced";Boolean)
        {
            AccessByPermission = TableData 110=R;
            CaptionML = ENU='Shipped Not Invoiced',
                        SVE='Levererat ej fakturerat';
            Editable = false;
        }
        field(5752;"Completely Shipped";Boolean)
        {
            CaptionML = ENU='Completely Shipped',
                        SVE='Färdigt levererat';
            Editable = false;
        }
        field(5753;"Posting from Whse. Ref.";Integer)
        {
            AccessByPermission = TableData 14=R;
            CaptionML = ENU='Posting from Whse. Ref.',
                        SVE='Bokf. från dist.lager ref.';
        }
        field(5754;"Location Filter";Code[10])
        {
            CaptionML = ENU='Location Filter',
                        SVE='Lagerställefilter';
            FieldClass = FlowFilter;
            TableRelation = Location;
        }
        field(5755;Shipped;Boolean)
        {
            CaptionML = ENU='Shipped',
                        SVE='Levererat';
            Editable = false;
        }
        field(5790;"Requested Delivery Date";Date)
        {
            AccessByPermission = TableData 99000880=R;
            CaptionML = ENU='Requested Delivery Date',
                        SVE='Begärt leveransdatum';
        }
        field(5791;"Promised Delivery Date";Date)
        {
            AccessByPermission = TableData 99000880=R;
            CaptionML = ENU='Promised Delivery Date',
                        SVE='Lovat leveransdatum';
        }
        field(5792;"Shipping Time";DateFormula)
        {
            AccessByPermission = TableData 110=R;
            CaptionML = ENU='Shipping Time',
                        SVE='Leveranstid';
        }
        field(5793;"Outbound Whse. Handling Time";DateFormula)
        {
            AccessByPermission = TableData 7320=R;
            CaptionML = ENU='Outbound Whse. Handling Time',
                        SVE='Avgående lagerhanteringstid';
        }
        field(5794;"Shipping Agent Service Code";Code[10])
        {
            CaptionML = ENU='Shipping Agent Service Code',
                        SVE='Speditör servicekod';
        }
        field(5795;"Late Order Shipping";Boolean)
        {
            CaptionML = ENU='Late Order Shipping',
                        SVE='Sen orderleverans';
            Editable = false;
        }
        field(5796;"Date Filter";Date)
        {
            CaptionML = ENU='Date Filter',
                        SVE='Datumfilter';
            FieldClass = FlowFilter;
        }
        field(5800;Receive;Boolean)
        {
            CaptionML = ENU='Receive',
                        SVE='Inleverera';
        }
        field(5801;"Return Receipt No.";Code[20])
        {
            CaptionML = ENU='Return Receipt No.',
                        SVE='Returinleveransnr';
        }
        field(5802;"Return Receipt No. Series";Code[20])
        {
            CaptionML = ENU='Return Receipt No. Series',
                        SVE='Returinleverans nr-serie';
            TableRelation = "No. Series";
        }
        field(5803;"Last Return Receipt No.";Code[20])
        {
            CaptionML = ENU='Last Return Receipt No.',
                        SVE='Senaste returinleveransnr';
            Editable = false;
        }
        field(7001;"Allow Line Disc.";Boolean)
        {
            CaptionML = ENU='Allow Line Disc.',
                        SVE='Tillåt radrabatt';
        }
        field(7200;"Get Shipment Used";Boolean)
        {
            CaptionML = ENU='Get Shipment Used',
                        SVE='Hämta använd utleverans';
            Editable = false;
        }
        field(8000;Id;Guid)
        {
            CaptionML = ENU='Id',
                        SVE='ID';
        }
        field(9000;"Assigned User ID";Code[50])
        {
            CaptionML = ENU='Assigned User ID',
                        SVE='Tilldelat användar-ID';
            DataClassification = EndUserIdentifiableInformation;
            TableRelation = "User Setup";
        }
        field(11200;"Source Inv. No.";Code[20])
        {
            CaptionML = ENU='Source Inv. No.',
                        SVE='Källfakt.nr';
        }
        field(11201;"Source Inv. VAT";Decimal)
        {
            CaptionML = ENU='Source Inv. VAT',
                        SVE='Källfakt. moms';
            Editable = false;
        }
        field(11202;"Source Inv. Total";Decimal)
        {
            CaptionML = ENU='Source Inv. Total',
                        SVE='Källfakt. totalt';
            Editable = false;
        }
        field(12047959;"PEB Note of Goods";Text[30])
        {
            CaptionML = ENU='Note of Goods',
                        SVE='Godsmärke';
            Description = 'PEB0012';
        }
        field(223213441;"Shipment Notification";Text[150])
        {
            Caption = 'Shipment Notification';
        }
    }

    keys
    {
        key(Key1;"Document Type","No.")
        {
        }
        key(Key2;"No.","Document Type")
        {
        }
        key(Key3;"Document Type","Sell-to Customer No.")
        {
        }
        key(Key4;"Document Type","Bill-to Customer No.")
        {
        }
        key(Key5;"Document Type","Combine Shipments","Bill-to Customer No.","Currency Code","EU 3-Party Trade","Dimension Set ID")
        {
        }
        key(Key6;"Sell-to Customer No.","External Document No.")
        {
        }
        key(Key7;"Document Type","Sell-to Contact No.")
        {
        }
        key(Key8;"Bill-to Contact No.")
        {
        }
        key(Key9;"Incoming Document Entry No.")
        {
        }
        key(Key10;"Document Date")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(Brick;"No.","Sell-to Customer Name",Amount,"Sell-to Contact","Amount Including VAT")
        {
        }
    }

    trigger OnDelete();
    var
    
    begin
       
        SalesLine.SETRANGE("Document No.","No.");
        //SalesLine.SETRANGE("Date Received","Date Received");
        //SalesLine.SETRANGE("Time Received","Time Received");

        DeleteSalesLines;
    end;

    trigger OnInsert();
    begin
      //"Modified DateTime" := CurrencyDate;
      //"Date Received" := Today;
      //"Time Received" := Time;          
    end;

    trigger OnModify();
    begin
      //"Modified DateTime" := CurrencyDate;
    end;

    trigger OnRename();
    begin
        ERROR(Text003,TABLECAPTION);
    end;

    var
        Text003 : TextConst ENU='You cannot rename a %1.',SVE='Du kan inte byta namn på %1.';

        SalesSetup : Record "Sales & Receivables Setup";
        SalesHeader : Record REXEDISalesHeader;
        SalesLine : Record "REXEDISalesLine";


    [Scope('Personalization')]
    procedure SalesLinesExist() : Boolean;
    begin
        SalesLine.RESET;
        SalesLine.SETRANGE("Document Type","Document Type");
        SalesLine.SETRANGE("Document No.","No.");
        EXIT(SalesLine.FINDFIRST);
    end;

    local procedure DeleteSalesLines();
    var

    begin
        if SalesLine.FINDSET then begin
          repeat
            SalesLine.DELETE(true);
          until SalesLine.NEXT = 0;
        end;
    end;
}

