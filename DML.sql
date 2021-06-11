insert into hostel values(&hostel_id,'&name','&type',&strength);

insert into rc values(&rc_id,'&name','&gender',&experience_years,&phone_no,'&degree',&hostel_id);

insert into caretaker values(&caretaker_id,'&name',&phone_no,&hostel_id);

insert into room values(&room_no,&hostel_id,'&floor',&inmates);

insert into payment values(&payment_id,&work_hour,&amount,'&status');

insert into worker values(&worker_id,'&name',&phone_no,'&occupation',&payment_id);

insert into student values(&student_id,'&name','&gender','&dob','&degree',&year,'&department',&phone_no,&room_no,&hostel_id);

insert into complaint values(&complaint_no,'&complaint_date','&area_of_complaint','&description','&status',&student_id,&room_no,&hostel_id,&worker_id,&caretaker_id);