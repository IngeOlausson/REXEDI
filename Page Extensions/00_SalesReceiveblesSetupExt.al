// IOL 190312
pageextension 50034 REXEDISalesReceiveblesSetupExt extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Dynamics 365 for Sales")
        {
            group(REXEDI)
            {
                field("REXEDI Path";"REXEDI Path")
                {

                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
}