table 60101 StudentMaster
{
    DataClassification = ToBeClassified;
    Caption = 'Student Master Table';
    fields
    {
        field(1; StudentID; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Age; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(4; TeacherNo; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = TeacherMaster.TeacherID;
            trigger OnValidate()
            var
                TeacherRec: Record TeacherMaster;
            begin
                if TeacherNo <> ''
                then begin
                    if TeacherRec.Get(TeacherNo)
                    then begin
                        TeacherName := TeacherRec.Name;
                        TeacherPhoneNo := TeacherRec.PhoneNo;
                    end;
                end;
            end;
        }
        field(5; TeacherName; Text[100])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(6; TeacherPhoneNo; Text[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }
    keys
    {
        key(PK1; StudentID)
        {
            Clustered = true;
        }
    }

}