table 60100 TeacherMaster
{
    DataClassification = ToBeClassified;
    Caption = 'Teacher Master Table';
    fields
    {
        field(1; TeacherID; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Name; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; PhoneNo; Text[20])
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK1; TeacherID)
        {
            Clustered = true;
        }
    }
}

