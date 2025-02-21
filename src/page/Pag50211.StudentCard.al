page 60102 StudentCard
{
    PageType = Card;
    SourceTable = StudentMaster;
    layout
    {
        area(content)
        {
            group(General)
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