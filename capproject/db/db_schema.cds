namespace db;
type contact {
    phnno:String(32);
    emailid:String(100) 
    }
aspect address{
    city:String(20);
    State:String(50);
}
context school{
    entity student:address,contact { 
           //using aspects
        key id: UUID;
        first_name:String(30);
        last_name:String(30);
        gender: String(1);
    }
    entity subjects{
        subject_id:Int16;
        sub_name:String(16);
       // my_address: address;
    }
}
context trans{
    entity fees{
        student_id: Association to school.student;
        fees_amt: Int16
    }
}