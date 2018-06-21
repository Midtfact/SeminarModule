tableextension 123456700 "CSD ResourceExt" extends Resource
//CSD1.00 - 2018-06-20 Holger
{
    fields
    {
        field(123456701;"CSD Resource Type";Option)
        {
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';
            Caption = 'Resource Type';
        }
        field(123456702;"CSD Maximum Participants";Integer)
        {
            Caption ='Maximum Participants';
        }
        field(123456703;"CSD Quantity Per Day";Decimal)
        {
            Caption = 'Quantity Per Day';
        }
        modify("Profit %")
        {
            trigger OnAfterValidate();
            begin
                Rec.TestField("Unit Cost");               
            end;
        }

    }
}