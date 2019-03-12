// Text
codeunit 50032 REXEDIManagement
{
    trigger OnRun();
    begin
    end;
    
    var
        myInt : Integer;

    procedure GetXMLFilesREX();
    var
        SalesSetup : Record "Sales & Receivables Setup";
        ImportName : Text[500];
        NewImportName : Text[500];
        FileRec : Record File;
        ImportError : Boolean;
    begin
    
        SalesSetup.Get;
        ImportName := '';
        NewImportName := '';
        Clear(FileRec);
        FileRec.SetRange(Path,'c:\');
        if FileRec.FindFirst() then;
        FileRec.SetRange(Path,SalesSetup."REXEDI Path" + 'InOrder\');
        FileRec.SetRange("Is a file",true);
        FileRec.SetFilter(Name,'%1','*.xml');
        if FileRec.FindFirst() then
          repeat
            ImportName := FileRec.Path+FileRec.Name;
            NewImportName := SalesSetup."REXEDI Path" + 'InOrder\History\' + FileRec.Name;
            if Rename(ImportName,NewImportName) then begin
              case CopyStr(FileRec.Name,1,5) of
                'Order':
                  ImportError := XMLREXOrderInbound(NewImportName);
              end;
              if not ImportError then
                Sleep(1000);
            end;
          until FileRec.NEXT=0;    
    end;

    local procedure XMLREXOrderInbound(XMLFilename : Text[500]): Boolean;
    var
        XMLDeliveryOrderInbound : Boolean;
        XMLFile : File;
        InXMLStream : InStream;
        //XMLSourceDocument
        //XMLDestinationDocument
    begin
        XMLDeliveryOrderInbound := false;
        if XMLFile.Open(XMLFilename) then begin
          XMLFile.CreateInStream(InXMLStream);
          // IOL Remove Namespace in XML
          //CREATE(XMLSourceDocument);
          //CREATE(XMLDestinationDocument);
          //XMLSourceDocument.load(InXMLStream);
          //RemoveNamespace(XMLSourceDocument,XMLDestinationDocument);
          //TempTable."BLOB Field".CREATEOUTSTREAM(OutXMLStreamConverted);
          //TempTable."BLOB Field".CREATEINSTREAM(InXMLStreamConverted);
          //XMLDestinationDocument.save(OutXMLStreamConverted);
          //TempTable."BLOB Field".CREATEINSTREAM(InXMLStreamConverted);
          /// IOL
          if GuiAllowed then
            Xmlport.Import(50004,InXMLStream)
          else
            if not Xmlport.Import(50004,InXMLStream) then
              XMLDeliveryOrderInbound := true;
          XMLFile.Close;
        end;        
    end;    
}