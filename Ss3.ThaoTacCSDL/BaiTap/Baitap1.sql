use quan_ly_sinh_vien;

-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
select * from student where StudentName like ("h%");

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
select * from class where month(StartDate) = 12;

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
select * from subject where credit >= 3 and credit <= 5;

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
select * from student;
 SET SQL_SAFE_UPDATES = 0;
update student set classid = 2 where studentname = 'Hung';

-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần
select student.StudentName, subject.SubName, mark.Mark from student
 join mark on student.StudentId = mark.StudentId
 join subject on mark.SubId = subject.SubId
order by mark.mark desc, student.StudentName asc;
