table 123456704 "Seminar Comment Line"
{
    Caption='Seminar Comment Line';
    LookupPageId="Seminar Commment List";
    DrillDownPageId="Seminar Commment List";
    fields
    {
        field(10;"Table Name";Option)
        {
            OptionMembers = "Seminar","Seminar Registration Header","Posted Seminar Reg. Header";
            OptionCaption= 'Seminar,Seminar Registration Header,Posted Seminar Reg. Header';
            Caption='Table Name';
        }
        field(20;"Document Line No.";Integer)
        {
            Caption='Document Line No.';
        }
        field(30;"No.";Code[20])
        {
            Caption='No.';
            TableRelation=if ("Table Name"=CONST(Seminar)) "Seminar";
        }
        field(40;"Line No.";Integer)
        {
            Caption='Line No.';
        }
        field(50;Date;Date)
        {
            Caption='Date';
        }
        field(60;Code;Code[10])
        {
            
        }
        field(70;Comment;Text[80])
        {
            Caption='Comment';
        }
    }

    keys
    {
        key(PK;"Table Name","Document Line No.","Line No.")
        {
            Clustered = true;
        }
    }
}