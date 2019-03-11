table 50002 "REXEDISalesLine"
{
    // version NAVW111.00.00.26401,NAVSE11.00.00.26401,PE8.03

    // PEB *** Begin ***
    // PEB0019 Charge Type to all Documents
    // PEB0020 Textline applied to Itemline
    // PEB
    // PEB *** End ***

    CaptionML = ENU='EDI Sales Line',
                SVE='EDI Försäljningsrad';
    //DrillDownPageID = 516;
    //LookupPageID = 516;

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
            Editable = false;
            TableRelation = Customer;
        }
        field(3;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        SVE='Dokumentnr';
            TableRelation = REXEDISalesHeader."No." WHERE ("Document Type"=FIELD("Document Type"));
        }
        field(4;"Line No.";Integer)
        {
            CaptionML = ENU='Line No.',
                        SVE='Radnr';
        }
        field(5;Type;Option)
        {
            CaptionML = ENU='Type',
                        SVE='Typ';
            OptionCaptionML = ENU=' ,G/L Account,Item,Resource,Fixed Asset,Charge (Item)',
                              SVE=' ,Redov.konto,Artikel,Resurs,Anl.tillgång,Omkostnad (artikel)';
            OptionMembers = " ","G/L Account",Item,Resource,"Fixed Asset","Charge (Item)";
        }
        field(6;"No.";Code[20])
        {
            CaptionML = ENU='No.',
                        SVE='Nr';
        }
        field(7;"Location Code";Code[10])
        {
            CaptionML = ENU='Location Code',
                        SVE='Lagerställekod';
        }
        field(8;"Posting Group";Code[20])
        {
            CaptionML = ENU='Posting Group',
                        SVE='Bokföringsmall';
            Editable = false;
        }
        field(10;"Shipment Date";Date)
        {
            CaptionML = ENU='Shipment Date',
                        SVE='Utleveransdatum';
        }
        field(11;Description;Text[50])
        {
            CaptionML = ENU='Description',
                        SVE='Beskrivning';
        }
        field(12;"Description 2";Text[50])
        {
            CaptionML = ENU='Description 2',
                        SVE='Beskrivning 2';
        }
        field(13;"Unit of Measure";Text[10])
        {
            CaptionML = ENU='Unit of Measure',
                        SVE='Enhet';
        }
        field(15;Quantity;Decimal)
        {
            CaptionML = ENU='Quantity',
                        SVE='Antal';
            DecimalPlaces = 0:5;
        }
        field(16;"Outstanding Quantity";Decimal)
        {
            CaptionML = ENU='Outstanding Quantity',
                        SVE='Restnoterat antal';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(17;"Qty. to Invoice";Decimal)
        {
            CaptionML = ENU='Qty. to Invoice',
                        SVE='Ant. att fakturera';
            DecimalPlaces = 0:5;
        }
        field(18;"Qty. to Ship";Decimal)
        {
            AccessByPermission = TableData 110=R;
            CaptionML = ENU='Qty. to Ship',
                        SVE='Ant. att utleverera';
            DecimalPlaces = 0:5;
        }
        field(22;"Unit Price";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 2;
            CaptionML = ENU='Unit Price',
                        SVE='A-pris';
        }
        field(23;"Unit Cost (LCY)";Decimal)
        {
            AutoFormatType = 2;
            CaptionML = ENU='Unit Cost (LCY)',
                        SVE='Styckkostnad (BVA)';
        }
        field(25;"VAT %";Decimal)
        {
            CaptionML = ENU='VAT %',
                        SVE='Momssats %';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(27;"Line Discount %";Decimal)
        {
            CaptionML = ENU='Line Discount %',
                        SVE='Radrabatt %';
            DecimalPlaces = 0:5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(28;"Line Discount Amount";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Line Discount Amount',
                        SVE='Radrabatt';
        }
        field(29;Amount;Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Amount',
                        SVE='Belopp';
            Editable = false;
        }
        field(30;"Amount Including VAT";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Amount Including VAT',
                        SVE='Belopp inkl. moms';
            Editable = false;
        }
        field(32;"Allow Invoice Disc.";Boolean)
        {
            CaptionML = ENU='Allow Invoice Disc.',
                        SVE='Beräkna fakturarabatt';
            InitValue = true;
        }
        field(34;"Gross Weight";Decimal)
        {
            CaptionML = ENU='Gross Weight',
                        SVE='Bruttovikt';
            DecimalPlaces = 0:5;
        }
        field(35;"Net Weight";Decimal)
        {
            CaptionML = ENU='Net Weight',
                        SVE='Nettovikt';
            DecimalPlaces = 0:5;
        }
        field(36;"Units per Parcel";Decimal)
        {
            CaptionML = ENU='Units per Parcel',
                        SVE='Antal per kolli';
            DecimalPlaces = 0:5;
        }
        field(37;"Unit Volume";Decimal)
        {
            CaptionML = ENU='Unit Volume',
                        SVE='Volym';
            DecimalPlaces = 0:5;
        }
        field(38;"Appl.-to Item Entry";Integer)
        {
            AccessByPermission = TableData 27=R;
            CaptionML = ENU='Appl.-to Item Entry',
                        SVE='Koppla till artikellöpnr';
        }
        field(40;"Shortcut Dimension 1 Code";Code[20])
        {
            CaptionClass = '1,2,1';
            CaptionML = ENU='Shortcut Dimension 1 Code',
                        SVE='Genväg dimension 1 kod';
        }
        field(41;"Shortcut Dimension 2 Code";Code[20])
        {
            CaptionClass = '1,2,2';
            CaptionML = ENU='Shortcut Dimension 2 Code',
                        SVE='Genväg dimension 2 kod';
        }
        field(42;"Customer Price Group";Code[10])
        {
            CaptionML = ENU='Customer Price Group',
                        SVE='Kund prisgrupp';
            Editable = false;
            TableRelation = "Customer Price Group";
        }
        field(45;"Job No.";Code[20])
        {
            CaptionML = ENU='Job No.',
                        SVE='Projektnr';
            Editable = false;
            TableRelation = Job;
        }
        field(52;"Work Type Code";Code[10])
        {
            CaptionML = ENU='Work Type Code',
                        SVE='Arbetstypkod';
            TableRelation = "Work Type";
        }
        field(56;"Recalculate Invoice Disc.";Boolean)
        {
            CaptionML = ENU='Recalculate Invoice Disc.',
                        SVE='Beräkna om fakturarabatt';
            Editable = false;
        }
        field(57;"Outstanding Amount";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Outstanding Amount',
                        SVE='Utestående belopp';
            Editable = false;
        }
        field(58;"Qty. Shipped Not Invoiced";Decimal)
        {
            CaptionML = ENU='Qty. Shipped Not Invoiced',
                        SVE='Ant. levererat ej fakturerat';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(59;"Shipped Not Invoiced";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Shipped Not Invoiced',
                        SVE='Levererat ej fakturerat';
            Editable = false;
        }
        field(60;"Quantity Shipped";Decimal)
        {
            AccessByPermission = TableData 110=R;
            CaptionML = ENU='Quantity Shipped',
                        SVE='Utlevererat antal';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(61;"Quantity Invoiced";Decimal)
        {
            CaptionML = ENU='Quantity Invoiced',
                        SVE='Fakturerat antal';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(63;"Shipment No.";Code[20])
        {
            CaptionML = ENU='Shipment No.',
                        SVE='Utleveransnr';
            Editable = false;
        }
        field(64;"Shipment Line No.";Integer)
        {
            CaptionML = ENU='Shipment Line No.',
                        SVE='Utleveransradnr';
            Editable = false;
        }
        field(67;"Profit %";Decimal)
        {
            CaptionML = ENU='Profit %',
                        SVE='Vinst %';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(68;"Bill-to Customer No.";Code[20])
        {
            CaptionML = ENU='Bill-to Customer No.',
                        SVE='Faktureringskundnr';
            Editable = false;
            TableRelation = Customer;
        }
        field(69;"Inv. Discount Amount";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Inv. Discount Amount',
                        SVE='Fakturarabatt';
            Editable = false;
        }
        field(71;"Purchase Order No.";Code[20])
        {
            AccessByPermission = TableData 110=R;
            CaptionML = ENU='Purchase Order No.',
                        SVE='Inköpsordernr';
            Editable = false;
        }
        field(72;"Purch. Order Line No.";Integer)
        {
            AccessByPermission = TableData 110=R;
            CaptionML = ENU='Purch. Order Line No.',
                        SVE='Radnr på inköpsorder';
            Editable = false;
        }
        field(73;"Drop Shipment";Boolean)
        {
            AccessByPermission = TableData 223=R;
            CaptionML = ENU='Drop Shipment',
                        SVE='Direktutleverans';
            Editable = true;
        }
        field(74;"Gen. Bus. Posting Group";Code[20])
        {
            CaptionML = ENU='Gen. Bus. Posting Group',
                        SVE='Gen. rörelsebokföringsmall';
            TableRelation = "Gen. Business Posting Group";
        }
        field(75;"Gen. Prod. Posting Group";Code[20])
        {
            CaptionML = ENU='Gen. Prod. Posting Group',
                        SVE='Produktbokföringsmall';
            TableRelation = "Gen. Product Posting Group";
        }
        field(77;"VAT Calculation Type";Option)
        {
            CaptionML = ENU='VAT Calculation Type',
                        SVE='Momsberäkningstyp';
            Editable = false;
            OptionCaptionML = ENU='Normal VAT,Reverse Charge VAT,Full VAT,Sales Tax',
                              SVE='Normal moms,Omvänd EG-moms,Enbart moms,Omsättningsskatt';
            OptionMembers = "Normal VAT","Reverse Charge VAT","Full VAT","Sales Tax";
        }
        field(78;"Transaction Type";Code[10])
        {
            CaptionML = ENU='Transaction Type',
                        SVE='EU transaktionstyp';
            TableRelation = "Transaction Type";
        }
        field(79;"Transport Method";Code[10])
        {
            CaptionML = ENU='Transport Method',
                        SVE='Transportsätt';
            TableRelation = "Transport Method";
        }
        field(80;"Attached to Line No.";Integer)
        {
            CaptionML = ENU='Attached to Line No.',
                        SVE='Bifogad till radnr';
            Editable = false;
        }
        field(81;"Exit Point";Code[10])
        {
            CaptionML = ENU='Exit Point',
                        SVE='Utförselplats';
            TableRelation = "Entry/Exit Point";
        }
        field(82;"Area";Code[10])
        {
            CaptionML = ENU='Area',
                        SVE='Område';
            TableRelation = Area;
        }
        field(83;"Transaction Specification";Code[10])
        {
            CaptionML = ENU='Transaction Specification',
                        SVE='EU transaktionsspecifikation';
            TableRelation = "Transaction Specification";
        }
        field(84;"Tax Category";Code[10])
        {
            CaptionML = ENU='Tax Category',
                        SVE='Momskategori';
        }
        field(85;"Tax Area Code";Code[20])
        {
            CaptionML = ENU='Tax Area Code',
                        SVE='Skatteområdeskod';
            TableRelation = "Tax Area";
        }
        field(86;"Tax Liable";Boolean)
        {
            CaptionML = ENU='Tax Liable',
                        SVE='Skattepliktig';
        }
        field(87;"Tax Group Code";Code[20])
        {
            CaptionML = ENU='Tax Group Code',
                        SVE='Skattegruppskod';
            TableRelation = "Tax Group";
        }
        field(88;"VAT Clause Code";Code[20])
        {
            CaptionML = ENU='VAT Clause Code',
                        SVE='Kod för momsklausul';
            TableRelation = "VAT Clause";
        }
        field(89;"VAT Bus. Posting Group";Code[20])
        {
            CaptionML = ENU='VAT Bus. Posting Group',
                        SVE='Moms rörelsebokföringsmall';
            TableRelation = "VAT Business Posting Group";
        }
        field(90;"VAT Prod. Posting Group";Code[20])
        {
            CaptionML = ENU='VAT Prod. Posting Group',
                        SVE='Moms produktbokföringsmall';
            TableRelation = "VAT Product Posting Group";
        }
        field(91;"Currency Code";Code[10])
        {
            CaptionML = ENU='Currency Code',
                        SVE='Valutakod';
            Editable = false;
            TableRelation = Currency;
        }
        field(92;"Outstanding Amount (LCY)";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='Outstanding Amount (LCY)',
                        SVE='Utestående belopp (BVA)';
            Editable = false;
        }
        field(93;"Shipped Not Invoiced (LCY)";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='Shipped Not Invoiced (LCY) Incl. VAT',
                        SVE='Levererat ej fakturerat (BVA) inkl. moms';
            Editable = false;
        }
        field(94;"Shipped Not Inv. (LCY) No VAT";Decimal)
        {
            CaptionML = ENU='Shipped Not Invoiced (LCY)',
                        SVE='Levererat ej fakturerat (BVA)';
            Editable = false;
            FieldClass = Normal;
        }
        field(95;"Reserved Quantity";Decimal)
        {
            CaptionML = ENU='Reserved Quantity',
                        SVE='Reserverat antal';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(96;Reserve;Option)
        {
            AccessByPermission = TableData 27=R;
            CaptionML = ENU='Reserve',
                        SVE='Reservera';
            OptionCaptionML = ENU='Never,Optional,Always',
                              SVE='Aldrig,Valfri,Alltid';
            OptionMembers = Never,Optional,Always;
        }
        field(97;"Blanket Order No.";Code[20])
        {
            CaptionML = ENU='Blanket Order No.',
                        SVE='Avropsordernr';
        }
        field(98;"Blanket Order Line No.";Integer)
        {
            CaptionML = ENU='Blanket Order Line No.',
                        SVE='Avropsorder radnr';
        }
        field(99;"VAT Base Amount";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='VAT Base Amount',
                        SVE='Nettobelopp';
            Editable = false;
        }
        field(100;"Unit Cost";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 2;
            CaptionML = ENU='Unit Cost',
                        SVE='Styckkostnad';
            Editable = false;
        }
        field(101;"System-Created Entry";Boolean)
        {
            CaptionML = ENU='System-Created Entry',
                        SVE='Systemkreerad trans.';
            Editable = false;
        }
        field(103;"Line Amount";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Line Amount',
                        SVE='Radbelopp';
        }
        field(104;"VAT Difference";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='VAT Difference',
                        SVE='Momsdifferens';
            Editable = false;
        }
        field(105;"Inv. Disc. Amount to Invoice";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Inv. Disc. Amount to Invoice',
                        SVE='Fakturarabatt att fakturera';
            Editable = false;
        }
        field(106;"VAT Identifier";Code[20])
        {
            CaptionML = ENU='VAT Identifier',
                        SVE='Moms-ID';
            Editable = false;
        }
        field(107;"IC Partner Ref. Type";Option)
        {
            AccessByPermission = TableData 410=R;
            CaptionML = ENU='IC Partner Ref. Type',
                        SVE='Ref.typ för konc.int. partner';
            OptionCaptionML = ENU=' ,G/L Account,Item,,,Charge (Item),Cross Reference,Common Item No.',
                              SVE=' ,Redovisningskonto,Artikel,,,Debitering (artikel),Korsreferens,Gemensamt artikelnr';
            OptionMembers = " ","G/L Account",Item,,,"Charge (Item)","Cross Reference","Common Item No.";
        }
        field(108;"IC Partner Reference";Code[20])
        {
            AccessByPermission = TableData 410=R;
            CaptionML = ENU='IC Partner Reference',
                        SVE='Konc.int. partnerreferens';
        }
        field(109;"Prepayment %";Decimal)
        {
            CaptionML = ENU='Prepayment %',
                        SVE='Förskottsbetalning %';
            DecimalPlaces = 0:5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(110;"Prepmt. Line Amount";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Prepmt. Line Amount',
                        SVE='Radbelopp, förskottsbetalning';
            MinValue = 0;
        }
        field(111;"Prepmt. Amt. Inv.";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Prepmt. Amt. Inv.',
                        SVE='Fakturabelopp, förskottsbetalning';
            Editable = false;
        }
        field(112;"Prepmt. Amt. Incl. VAT";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Prepmt. Amt. Incl. VAT',
                        SVE='Förskottsbetalningsbelopp inkl. moms';
            Editable = false;
        }
        field(113;"Prepayment Amount";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Prepayment Amount',
                        SVE='Förskottsbetalningsbelopp';
            Editable = false;
        }
        field(114;"Prepmt. VAT Base Amt.";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Prepmt. VAT Base Amt.',
                        SVE='Nettobelopp, förskottsbetalning';
            Editable = false;
        }
        field(115;"Prepayment VAT %";Decimal)
        {
            CaptionML = ENU='Prepayment VAT %',
                        SVE='Moms för förskottsbetalning %';
            DecimalPlaces = 0:5;
            Editable = false;
            MinValue = 0;
        }
        field(116;"Prepmt. VAT Calc. Type";Option)
        {
            CaptionML = ENU='Prepmt. VAT Calc. Type',
                        SVE='Momsberäkningstyp, förskottsbetalning';
            Editable = false;
            OptionCaptionML = ENU='Normal VAT,Reverse Charge VAT,Full VAT,Sales Tax',
                              SVE='Normal moms,Omvänd EG-moms,Enbart moms,Omsättningsskatt';
            OptionMembers = "Normal VAT","Reverse Charge VAT","Full VAT","Sales Tax";
        }
        field(117;"Prepayment VAT Identifier";Code[20])
        {
            CaptionML = ENU='Prepayment VAT Identifier',
                        SVE='Moms-ID, förskottsbetalning';
            Editable = false;
        }
        field(118;"Prepayment Tax Area Code";Code[20])
        {
            CaptionML = ENU='Prepayment Tax Area Code',
                        SVE='Skatteområdeskod, förskottsbetalning';
            TableRelation = "Tax Area";
        }
        field(119;"Prepayment Tax Liable";Boolean)
        {
            CaptionML = ENU='Prepayment Tax Liable',
                        SVE='Skattepliktig förskottsbetalning';
        }
        field(120;"Prepayment Tax Group Code";Code[20])
        {
            CaptionML = ENU='Prepayment Tax Group Code',
                        SVE='Skattegruppskod, förskottsbetalning';
            TableRelation = "Tax Group";
        }
        field(121;"Prepmt Amt to Deduct";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Prepmt Amt to Deduct',
                        SVE='Förskottsbetalning att dra av';
            MinValue = 0;
        }
        field(122;"Prepmt Amt Deducted";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Prepmt Amt Deducted',
                        SVE='Avdragen förskottsbetalning';
            Editable = false;
        }
        field(123;"Prepayment Line";Boolean)
        {
            CaptionML = ENU='Prepayment Line',
                        SVE='Förskottsbetalningsrad';
            Editable = false;
        }
        field(124;"Prepmt. Amount Inv. Incl. VAT";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Prepmt. Amount Inv. Incl. VAT',
                        SVE='Fakturerad förskottsbetalning inkl. moms';
            Editable = false;
        }
        field(129;"Prepmt. Amount Inv. (LCY)";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='Prepmt. Amount Inv. (LCY)',
                        SVE='Fakturerad förskottsbetalning (BVA)';
            Editable = false;
        }
        field(130;"IC Partner Code";Code[20])
        {
            CaptionML = ENU='IC Partner Code',
                        SVE='Konc.int. partnerkod';
            TableRelation = "IC Partner";
        }
        field(132;"Prepmt. VAT Amount Inv. (LCY)";Decimal)
        {
            CaptionML = ENU='Prepmt. VAT Amount Inv. (LCY)',
                        SVE='Fakturerad förskottsbetalning av moms (BVA)';
            Editable = false;
        }
        field(135;"Prepayment VAT Difference";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Prepayment VAT Difference',
                        SVE='Förskottsbetalning momsdifferens';
            Editable = false;
        }
        field(136;"Prepmt VAT Diff. to Deduct";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Prepmt VAT Diff. to Deduct',
                        SVE='Förskottsbet. momsdiff att dra av';
            Editable = false;
        }
        field(137;"Prepmt VAT Diff. Deducted";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Prepmt VAT Diff. Deducted',
                        SVE='Förskottsbet. momsdiff. avdragen';
            Editable = false;
        }
        field(180;"Line Discount Calculation";Option)
        {
            CaptionML = ENU='Line Discount Calculation',
                        SVE='Beräkning av radrabatt';
            OptionCaptionML = ENU='None,%,Amount',
                              SVE='Ingen,%,Belopp';
            OptionMembers = "None","%",Amount;
        }
        field(480;"Dimension Set ID";Integer)
        {
            CaptionML = ENU='Dimension Set ID',
                        SVE='Dimensionsuppsättnings-ID';
            Editable = false;
        }
        field(900;"Qty. to Assemble to Order";Decimal)
        {
            AccessByPermission = TableData 90=R;
            CaptionML = ENU='Qty. to Assemble to Order',
                        SVE='Antal att montera mot kundorder';
            DecimalPlaces = 0:5;
        }
        field(901;"Qty. to Asm. to Order (Base)";Decimal)
        {
            CaptionML = ENU='Qty. to Asm. to Order (Base)',
                        SVE='Antal att montera mot kundorder (bas)';
            DecimalPlaces = 0:5;
        }
        field(902;"ATO Whse. Outstanding Qty.";Decimal)
        {
            BlankZero = true;
            CaptionML = ENU='ATO Whse. Outstanding Qty.',
                        SVE='ATO Restnot. antal i lager';
            DecimalPlaces = 0:5;
            Editable = false;
         }
        field(903;"ATO Whse. Outstd. Qty. (Base)";Decimal)
        {
            BlankZero = true;
            CaptionML = ENU='ATO Whse. Outstd. Qty. (Base)',
                        SVE='ATO Restnot. antal i lager (bas)';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(1001;"Job Task No.";Code[20])
        {
            CaptionML = ENU='Job Task No.',
                        SVE='Projektaktivitetsnr';
            Editable = false;
        }
        field(1002;"Job Contract Entry No.";Integer)
        {
            CaptionML = ENU='Job Contract Entry No.',
                        SVE='Löpnr för projektkontrakt';
            Editable = false;
        }
        field(1300;"Posting Date";Date)
        {
            CaptionML = ENU='Posting Date',
                        SVE='Bokföringsdatum';
        }
        field(1700;"Deferral Code";Code[10])
        {
            CaptionML = ENU='Deferral Code',
                        SVE='Periodiseringskod';
            TableRelation = "Deferral Template"."Deferral Code";
        }
        field(1702;"Returns Deferral Start Date";Date)
        {
            CaptionML = ENU='Returns Deferral Start Date',
                        SVE='Returens periodiseringsstartdatum';
        }
        field(5402;"Variant Code";Code[10])
        {
            CaptionML = ENU='Variant Code',
                        SVE='Variantkod';
        }
        field(5403;"Bin Code";Code[20])
        {
            CaptionML = ENU='Bin Code',
                        SVE='Lagerplatskod';
        }
        field(5404;"Qty. per Unit of Measure";Decimal)
        {
            CaptionML = ENU='Qty. per Unit of Measure',
                        SVE='Antal per enhet';
            DecimalPlaces = 0:5;
            Editable = false;
            InitValue = 1;
        }
        field(5405;Planned;Boolean)
        {
            CaptionML = ENU='Planned',
                        SVE='Planerad';
            Editable = false;
        }
        field(5407;"Unit of Measure Code";Code[10])
        {
            CaptionML = ENU='Unit of Measure Code',
                        SVE='Enhetskod';
        }
        field(5415;"Quantity (Base)";Decimal)
        {
            CaptionML = ENU='Quantity (Base)',
                        SVE='Antal (bas)';
            DecimalPlaces = 0:5;
        }
        field(5416;"Outstanding Qty. (Base)";Decimal)
        {
            CaptionML = ENU='Outstanding Qty. (Base)',
                        SVE='Restnoterat antal (bas)';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(5417;"Qty. to Invoice (Base)";Decimal)
        {
            CaptionML = ENU='Qty. to Invoice (Base)',
                        SVE='Ant. att faktureras (bas)';
            DecimalPlaces = 0:5;
        }
        field(5418;"Qty. to Ship (Base)";Decimal)
        {
            CaptionML = ENU='Qty. to Ship (Base)',
                        SVE='Ant. att utlevereras (bas)';
            DecimalPlaces = 0:5;
        }
        field(5458;"Qty. Shipped Not Invd. (Base)";Decimal)
        {
            CaptionML = ENU='Qty. Shipped Not Invd. (Base)',
                        SVE='Ant. levererat ej faktrd (bas)';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(5460;"Qty. Shipped (Base)";Decimal)
        {
            CaptionML = ENU='Qty. Shipped (Base)',
                        SVE='Ant. levererat (bas)';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(5461;"Qty. Invoiced (Base)";Decimal)
        {
            CaptionML = ENU='Qty. Invoiced (Base)',
                        SVE='Fakturerat antal (bas)';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(5495;"Reserved Qty. (Base)";Decimal)
        {
            AccessByPermission = TableData 110=R;
            CaptionML = ENU='Reserved Qty. (Base)',
                        SVE='Reserverat antal (bas)';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(5600;"FA Posting Date";Date)
        {
            AccessByPermission = TableData 5600=R;
            CaptionML = ENU='FA Posting Date',
                        SVE='Anl. bokföringsdatum';
        }
        field(5602;"Depreciation Book Code";Code[10])
        {
            CaptionML = ENU='Depreciation Book Code',
                        SVE='Avskrivningsregelkod';
            TableRelation = "Depreciation Book";
        }
        field(5605;"Depr. until FA Posting Date";Boolean)
        {
            AccessByPermission = TableData 5600=R;
            CaptionML = ENU='Depr. until FA Posting Date',
                        SVE='Avskr. till anl. bokf.datum';
        }
        field(5612;"Duplicate in Depreciation Book";Code[10])
        {
            CaptionML = ENU='Duplicate in Depreciation Book',
                        SVE='Dubblett i avskrivningsregel';
            TableRelation = "Depreciation Book";
        }
        field(5613;"Use Duplication List";Boolean)
        {
            CaptionML = ENU='Use Duplication List',
                        SVE='Använd dubblettlista';
        }
        field(5700;"Responsibility Center";Code[10])
        {
            CaptionML = ENU='Responsibility Center',
                        SVE='Ansvarsenhet';
            Editable = false;
        }
        field(5701;"Out-of-Stock Substitution";Boolean)
        {
            CaptionML = ENU='Out-of-Stock Substitution',
                        SVE='Ej i lager ersättning';
            Editable = false;
        }
        field(5702;"Substitution Available";Boolean)
        {
            CaptionML = ENU='Substitution Available',
                        SVE='Ersättning tillgänglig';
            Editable = false;
        }
        field(5703;"Originally Ordered No.";Code[20])
        {
            CaptionML = ENU='Originally Ordered No.',
                        SVE='Ursprungligen beställt nr';
         }
        field(5704;"Originally Ordered Var. Code";Code[10])
        {
            CaptionML = ENU='Originally Ordered Var. Code',
                        SVE='Ursprungligen beställt var.kod';
         }
        field(5705;"Cross-Reference No.";Code[20])
        {
            CaptionML = ENU='Cross-Reference No.',
                        SVE='Tvärreferensnr';
        }
        field(5706;"Unit of Measure (Cross Ref.)";Code[10])
        {
            CaptionML = ENU='Unit of Measure (Cross Ref.)',
                        SVE='Enhet (tvärref.)';
        }
        field(5707;"Cross-Reference Type";Option)
        {
            CaptionML = ENU='Cross-Reference Type',
                        SVE='Tvärreferens typ';
            OptionCaptionML = ENU=' ,Customer,Vendor,Bar Code',
                              SVE=' ,Kund,Leverantör,Streckkod';
            OptionMembers = " ",Customer,Vendor,"Bar Code";
        }
        field(5708;"Cross-Reference Type No.";Code[30])
        {
            CaptionML = ENU='Cross-Reference Type No.',
                        SVE='Tvärreferens typnr';
        }
        field(5709;"Item Category Code";Code[20])
        {
            CaptionML = ENU='Item Category Code',
                        SVE='Artikelkategorikod';
            TableRelation = "Item Category";
        }
        field(5710;Nonstock;Boolean)
        {
            AccessByPermission = TableData 5718=R;
            CaptionML = ENU='Nonstock',
                        SVE='Ej lagerförd';
            Editable = false;
        }
        field(5711;"Purchasing Code";Code[10])
        {
            AccessByPermission = TableData 223=R;
            CaptionML = ENU='Purchasing Code',
                        SVE='Inköpskod';
            TableRelation = Purchasing;
        }
        field(5712;"Product Group Code";Code[10])
        {
            CaptionML = ENU='Product Group Code',
                        SVE='Produktgruppkod';
        }
        field(5713;"Special Order";Boolean)
        {
            CaptionML = ENU='Special Order',
                        SVE='Specialorder';
            Editable = false;
        }
        field(5714;"Special Order Purchase No.";Code[20])
        {
            CaptionML = ENU='Special Order Purchase No.',
                        SVE='Specialorderinköpsnr';
         }
        field(5715;"Special Order Purch. Line No.";Integer)
        {
            CaptionML = ENU='Special Order Purch. Line No.',
                        SVE='Specialorderinköp radnr';
        }
        field(5749;"Whse. Outstanding Qty.";Decimal)
        {
            BlankZero = true;
            CaptionML = ENU='Whse. Outstanding Qty.',
                        SVE='Restnot. antal i lager';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(5750;"Whse. Outstanding Qty. (Base)";Decimal)
        {
            BlankZero = true;
            CaptionML = ENU='Whse. Outstanding Qty. (Base)',
                        SVE='Restnot. antal i lager (bas)';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(5752;"Completely Shipped";Boolean)
        {
            CaptionML = ENU='Completely Shipped',
                        SVE='Färdigt levererat';
            Editable = false;
        }
        field(5790;"Requested Delivery Date";Date)
        {
             CaptionML = ENU='Requested Delivery Date',
                        SVE='Begärt leveransdatum';
        }
        field(5791;"Promised Delivery Date";Date)
        {
            CaptionML = ENU='Promised Delivery Date',
                        SVE='Lovat leveransdatum';
        }
        field(5792;"Shipping Time";DateFormula)
        {
            CaptionML = ENU='Shipping Time',
                        SVE='Leveranstid';
        }
        field(5793;"Outbound Whse. Handling Time";DateFormula)
        {
            CaptionML = ENU='Outbound Whse. Handling Time',
                        SVE='Avgående lagerhanteringstid';
        }
        field(5794;"Planned Delivery Date";Date)
        {
            CaptionML = ENU='Planned Delivery Date',
                        SVE='Planerat leveransdatum';
        }
        field(5795;"Planned Shipment Date";Date)
        {
            CaptionML = ENU='Planned Shipment Date',
                        SVE='Planerat utleveransdatum';
        }
        field(5796;"Shipping Agent Code";Code[10])
        {
            CaptionML = ENU='Shipping Agent Code',
                        SVE='Speditörkod';
            TableRelation = "Shipping Agent";
        }
        field(5797;"Shipping Agent Service Code";Code[10])
        {
            CaptionML = ENU='Shipping Agent Service Code',
                        SVE='Speditör servicekod';
        }
        field(5800;"Allow Item Charge Assignment";Boolean)
        {
            CaptionML = ENU='Allow Item Charge Assignment',
                        SVE='Tillåt art.omkost.fördelning';
            InitValue = true;
        }
        field(5801;"Qty. to Assign";Decimal)
        {
            CaptionML = ENU='Qty. to Assign',
                        SVE='Ant. att distribuera';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(5802;"Qty. Assigned";Decimal)
        {
            CaptionML = ENU='Qty. Assigned',
                        SVE='Ant. tilldelat';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(5803;"Return Qty. to Receive";Decimal)
        {
            CaptionML = ENU='Return Qty. to Receive',
                        SVE='Inlevereras antal';
            DecimalPlaces = 0:5;
        }
        field(5804;"Return Qty. to Receive (Base)";Decimal)
        {
            CaptionML = ENU='Return Qty. to Receive (Base)',
                        SVE='Returantal till inlevns (bas)';
            DecimalPlaces = 0:5;
        }
        field(5805;"Return Qty. Rcd. Not Invd.";Decimal)
        {
            CaptionML = ENU='Return Qty. Rcd. Not Invd.',
                        SVE='Inlevrd. returantal ej faktrd';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(5806;"Ret. Qty. Rcd. Not Invd.(Base)";Decimal)
        {
            CaptionML = ENU='Ret. Qty. Rcd. Not Invd.(Base)',
                        SVE='Inlevrd. ret.ant ej faktrd bas';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(5807;"Return Rcd. Not Invd.";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Return Rcd. Not Invd.',
                        SVE='Inlevrd. retur ej faktrd';
            Editable = false;
        }
        field(5808;"Return Rcd. Not Invd. (LCY)";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='Return Rcd. Not Invd. (LCY)',
                        SVE='Inlevrd. retur ej faktrd (BVA)';
            Editable = false;
        }
        field(5809;"Return Qty. Received";Decimal)
        {
            AccessByPermission = TableData 6660=R;
            CaptionML = ENU='Return Qty. Received',
                        SVE='Inlevererat returantal';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(5810;"Return Qty. Received (Base)";Decimal)
        {
            CaptionML = ENU='Return Qty. Received (Base)',
                        SVE='Inlevererat returantal (bas)';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(5811;"Appl.-from Item Entry";Integer)
        {
            CaptionML = ENU='Appl.-from Item Entry',
                        SVE='Koppla från artikellöpnr';
            MinValue = 0;
        }
        field(5909;"BOM Item No.";Code[20])
        {
            CaptionML = ENU='BOM Item No.',
                        SVE='Strukturartikelnr';
            TableRelation = Item;
        }
        field(6600;"Return Receipt No.";Code[20])
        {
            CaptionML = ENU='Return Receipt No.',
                        SVE='Returinleveransnr';
            Editable = false;
        }
        field(6601;"Return Receipt Line No.";Integer)
        {
            CaptionML = ENU='Return Receipt Line No.',
                        SVE='Returinleverans radnr';
            Editable = false;
        }
        field(6608;"Return Reason Code";Code[10])
        {
            CaptionML = ENU='Return Reason Code',
                        SVE='Returorsakskod';
            TableRelation = "Return Reason";
        }
        field(7001;"Allow Line Disc.";Boolean)
        {
            CaptionML = ENU='Allow Line Disc.',
                        SVE='Tillåt radrabatt';
            InitValue = true;
        }
        field(7002;"Customer Disc. Group";Code[20])
        {
            CaptionML = ENU='Customer Disc. Group',
                        SVE='Kundrabattgrupp';
            TableRelation = "Customer Discount Group";
        }
        field(7003;Subtype;Option)
        {
            CaptionML = ENU='Subtype',
                        SVE='Subtyp';
            OptionCaptionML = ENU=' ,Item - Inventory,Item - Service,Comment',
                              SVE=' ,Artikel - Lager,Artikel - Service,Kommentar';
            OptionMembers = " ","Item - Inventory","Item - Service",Comment;
        }
        field(7004;"Price description";Text[80])
        {
            CaptionML = ENU='Price description',
                        SVE='Prisbeskrivning';
        }
        field(11200;"Auto. Acc. Group";Code[10])
        {
            CaptionML = ENU='Auto. Acc. Group',
                        SVE='Automatkonteringsmall';
            TableRelation = "Automatic Acc. Header";
        }
        field(12047958;"PEB Charge Type";Option)
        {
            CaptionML = ENU='Charge Type',
                        SVE='Debiteringstyp';
            Description = 'PEB0019';
            Editable = false;
            OptionCaptionML = ENU=' ,Rounding,Freight,Service Fee,Packing Fee',
                              SVE=' ,Öresutjämning,Frakt,Expedition,Emballage';
            OptionMembers = " ",Rounding,Freight,"Service Fee","Packing Fee";
        }
        field(12047959;"PEB Text connected to Line No.";Integer)
        {
            BlankZero = true;
            CaptionML = ENU='Text connected to Line No.',
                        SVE='Textrad tillhör radnr';
            Description = 'PEB0020';
            Editable = false;
        }
        field(12047960;"PEB Connected to Item Line";Boolean)
        {
            CaptionML = ENU='Connected to Item Line',
                        SVE='Kopplad till artikelrad';
            Description = 'PEB0020';
        }
    }

    keys
    {
        key(Key1;"Document No.","Line No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(Brick;"No.",Description,"Line Amount",Quantity,"Unit of Measure Code","Price description")
        {
        }
    }

    trigger OnInsert();
    begin
      //"Modified DateTime" := CURRENTDATETIME;
    end;

    trigger OnModify();
    begin
      //"Modified DateTime" := CURRENTDATETIME;      
    end;

    trigger OnRename();
    begin
        ERROR(Text001,TABLECAPTION);
    end;

    var
        Text001 : TextConst ENU='You cannot rename a %1.',SVE='Du kan inte byta namn på %1.';

        SalesHeader : Record "REXEDISalesHeader";
        SalesLine2 : Record REXEDISalesLine;
        Item : Record "Item";
        SalesSetup : Record "Sales & Receivables Setup";

        Location : Record Location;

        Currency : Record Currency;
        StatusCheckSuspended : Boolean;





    local procedure CopyFromItem();
    begin
        GetItem;
        Description := Item.Description;
        "Description 2" := Item."Description 2";
    end;
    local procedure GetSalesHeader();
    begin
        TESTFIELD("Document No.");
        IF ("Document Type" <> SalesHeader."Document Type") OR ("Document No." <> SalesHeader."No.") THEN BEGIN
          SalesHeader.GET("Document Type","Document No.");
          IF SalesHeader."Currency Code" = '' THEN
            Currency.InitRoundingPrecision
          ELSE BEGIN
            SalesHeader.TESTFIELD("Currency Factor");
            Currency.GET(SalesHeader."Currency Code");
            Currency.TESTFIELD("Amount Rounding Precision");
          END;
        END;
    end;

    local procedure GetItem();
    begin
        TESTFIELD("No.");
        IF "No." <> Item."No." THEN
          Item.GET("No.");
    end;



    local procedure GetDate() : Date;
    begin
        IF SalesHeader."Posting Date" <> 0D THEN
          EXIT(SalesHeader."Posting Date");
        EXIT(WORKDATE);
    end;

    [Scope('Personalization')]
    procedure TestStatusOpen();
    begin
        IF StatusCheckSuspended THEN
          EXIT;
        GetSalesHeader;
        IF NOT "System-Created Entry" THEN
          SalesHeader.TESTFIELD(Status,SalesHeader.Status::Open);
    end;

    [Scope('Personalization')]
    procedure SuspendStatusCheck(Suspend : Boolean);
    begin
        StatusCheckSuspended := Suspend;
    end;

     [Scope('Personalization')]
    procedure GetItemTranslation();
    var
        ItemTranslation : Record "Item Translation";
    begin
        GetSalesHeader;
        IF ItemTranslation.GET("No.","Variant Code",SalesHeader."Language Code") THEN BEGIN
          Description := ItemTranslation.Description;
          "Description 2" := ItemTranslation."Description 2";
        END;
    end;

    local procedure GetLocation(LocationCode : Code[10]);
    begin
        IF LocationCode = '' THEN
          CLEAR(Location)
        ELSE
          IF Location.Code <> LocationCode THEN
            Location.GET(LocationCode);
    end;

    [Scope('Internal')]
    procedure CrossReferenceNoLookUp();
    var
        ItemCrossReference : Record "Item Cross Reference";
        ICGLAcc : Record "IC G/L Account";
    begin
        CASE Type OF
          Type::Item:
            BEGIN
              GetSalesHeader;
              ItemCrossReference.RESET;
              ItemCrossReference.SETCURRENTKEY("Cross-Reference Type","Cross-Reference Type No.");
              ItemCrossReference.SETFILTER(
                "Cross-Reference Type",'%1|%2',
                ItemCrossReference."Cross-Reference Type"::Customer,
                ItemCrossReference."Cross-Reference Type"::" ");
              ItemCrossReference.SETFILTER("Cross-Reference Type No.",'%1|%2',SalesHeader."Sell-to Customer No.",'');
              IF PAGE.RUNMODAL(PAGE::"Cross Reference List",ItemCrossReference) = ACTION::LookupOK THEN BEGIN
                VALIDATE("Cross-Reference No.",ItemCrossReference."Cross-Reference No.");
                VALIDATE("Unit Price");
              END;
            END;
          Type::"G/L Account",Type::Resource:
            BEGIN
              GetSalesHeader;
              SalesHeader.TESTFIELD("Sell-to IC Partner Code");
              IF PAGE.RUNMODAL(PAGE::"IC G/L Account List",ICGLAcc) = ACTION::LookupOK THEN
                "Cross-Reference No." := ICGLAcc."No.";
            END;
        END;
    end;

}

