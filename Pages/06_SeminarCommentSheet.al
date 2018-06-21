page 123456706 "Seminar Commment Sheet"
{
    Caption='Seminar Comment Sheet';
    PageType = List;
    SourceTable = "Seminar Comment Line";
    UsageCategory=Tasks;


    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date;Date)
                {}
                field(Code;Code)
                {
                    Visible=false;
                }
                field(Comment;Comment)
                {}
            }
        }
    } 
}