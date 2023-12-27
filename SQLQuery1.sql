use SchoolDb


create table Student
(
StudentId int primary key,
FirstName nvarchar(50),
LastName nvarchar(50),
ClassName int foreign key references Classes(ClassId) on delete cascade on update cascade,
SubjectName int foreign key references Subjects(SubjectId) on delete cascade on update cascade 
)

create table Subjects
(
SubjectId int primary key,
SubjectName nvarchar(50)
)

create table Classes
(
ClassId int primary key,
ClassName nvarchar(50)
)


select * from Student

select * from Subjects 

select * from Classes