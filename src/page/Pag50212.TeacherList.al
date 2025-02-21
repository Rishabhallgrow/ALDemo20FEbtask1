page 60103 TeacherList
{
    PageType = List;
    ApplicationArea = all;
    UsageCategory = Lists;
    SourceTable = TeacherMaster;
    Caption = 'teacher list';
    CardPageId = TeacherCard;
    layout
    {
        area(content)
        {
            repeater(Group)
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