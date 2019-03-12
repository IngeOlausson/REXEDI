// IOL 190312 New field holding path to REX XML-files

tableextension 50032 SalesReceiveblesSetupREXEDIExt extends "Sales & Receivables Setup"
{
    fields
    {
        field(223456700;"REXEDI Path";Text[200])
        {
            Caption= 'REXEDI Path';
        }
    }
    
 
}