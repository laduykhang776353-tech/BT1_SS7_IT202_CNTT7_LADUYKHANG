SELECT title, price
FROM Courses
WHERE price = (SELECT price FROM Courses WHERE instructor_id = 5);
 
 -- Toán tử = trong SQL là phép so sánh 1 giá trị với 1 giá trị duy nhất 
 -- Khi kết hớp với subquery
 -- ban đầu chỉ trả về 1 dòng
 
 -- VÌ sao hệ thống bị sập khi ông A có nhiều khóa học 
 -- SUbquery lúc này trả về nhiều dòng
 -- ĐIều này vô nghĩ về mặt toán học với toán tử = vì:
 -- = chỉ nhận 1 vế trái và so sánh với 1 giá trị duy nhất
 -- Nhưng Subquery lại trả về tập hợp giá trị 
 
 -- Câu lệnh sql vá lỗi, chính xác nhất

SELECT title, price
FROM Courses
WHERE price IN (
	SELECT price
    FROM Courses
	WHERE instructor_id = 5
)