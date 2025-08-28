namespace db;

context school{
    entity student{
        id: UUID;
        first_name:String(30);
        last_name:String(30);
        gender: String(1);
    }
    entity subjects{
        subject_id:Int16;
        sub_name:String(15);
    }
}