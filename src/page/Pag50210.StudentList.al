page 60100 StudentList
{
    PageType = List;
    SourceTable = StudentMaster;
    Caption = 'gautam';
    CardPageId = StudentCard;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(StudentID; Rec.StudentID)
                {
                    ApplicationArea = all;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = all;
                }
                field(Age; Rec.Age)
                {
                    ApplicationArea = all;
                }
                field(TeacherNo; Rec.TeacherNo)
                {
                    ApplicationArea = all;
                }
                field(TeacherName; Rec.TeacherName)
                {
                    ApplicationArea = all;
                }
                field(TeacherPhoneNo; Rec.TeacherPhoneNo)
                {
                    ApplicationArea = all;
                }
            }
        }
    }
}
