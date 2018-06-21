page 123456707 "Seminar Commment List"
{
    PageType = List;
    SourceTable = "Seminar Comment Line";
    UsageCategory=Tasks;
    Caption='Seminar Comment List';

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