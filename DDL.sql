create table HOSTEL(
hostel_id number(4),
name varchar(20),
type varchar(10),
strength number(7),
primary key(hostel_id)
);


create table RC(
rc_id number(12),
name varchar(15),
gender varchar(1),
experience_years number(5),
phone_no number(10),
degree varchar(10),
hostel_id number(4),
primary key(rc_id),
foreign key(hostel_id) references hostel(hostel_id)
);



create table CARETAKER(
caretaker_id number(11),
name varchar(30),
phone_no number(10),
hostel_id number(4),
primary key(caretaker_id),
foreign key(hostel_id) references hostel(hostel_id)
);




create table ROOM(
room_no number(5),
hostel_id number(4),
floor varchar(12),
inmates number(3),
primary key(room_no,hostel_id),
foreign key(hostel_id) references hostel(hostel_id)
);


create table PAYMENT(
payment_id number(10),
work_hour number(1),
amount number(10,3),
status varchar(15),
primary key(payment_id)
);


create table WORKER(
worker_id number(10),
name varchar(20),
phone_no number(10),
occupation varchar(20),
payment_id number(10),
primary key(worker_id),
foreign key(payment_id) references payment(payment_id)
);


create table STUDENT(
student_id number(10),
name varchar(15),
gender varchar(1),
DOB date,
degree varchar(10),
year number(1),
department varchar(15),
phone_no number(10),
room_no number(5),
hostel_id number(4),
primary key(student_id),
foreign key(room_no,hostel_id) references room(room_no,hostel_id)
);




create table COMPLAINT(
complaint_no number(10),
complaint_date date,
area_of_complaint varchar(15),
description varchar(50),
status varchar(10),
student_id number(10),
room_no number(5),
hostel_id number(4),
worker_id number(10),
caretaker_id number(11),
primary key(complaint_no),
foreign key(student_id) references student(student_id),
foreign key(room_no,hostel_id) references room(room_no,hostel_id),
foreign key(worker_id) references worker(worker_id),
foreign key(caretaker_id) references caretaker(caretaker_id)
); 









