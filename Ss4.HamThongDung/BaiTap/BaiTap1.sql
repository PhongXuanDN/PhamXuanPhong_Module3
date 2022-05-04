use quan_ly_sinh_vien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
 SET SQL_SAFE_UPDATES = 0;
select *, max(credit) as max_credit  from subject ;

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select *, max(mark) from subject
join mark on mark.subid = subject.subid;

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select * ,avg(mark) from student
join mark on mark.studentid = student.studentid
group by mark.studentid
order by mark.mark asc;