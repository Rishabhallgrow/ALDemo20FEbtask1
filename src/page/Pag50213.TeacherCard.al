page 60104 TeacherCard
{
    PageType = Card;
    SourceTable = TeacherMaster;
    Caption = 'Teacher card';
    layout
    {
        area(content)
        {
            group(General)
            {
                field(TeacherID; Rec.TeacherID)
                {
                    ApplicationArea = all;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = all;
                }
                field(PhoneNo; Rec.PhoneNo)
                {
                    ApplicationArea = all;
                }
            }
        }
    }
}
