# Bài tập: Luyện tập các thao tác xóa CSDL

Mục tiêu của bài tập này là luyện tập xóa cơ sở dữ liệu (CSDL) bằng 2 cách trên MySQL Workbench.

## Cách 1: Xóa CSDL sử dụng MySQL Workbench (Giao diện đồ họa)

Các bước thực hiện để xóa CSDL bằng giao diện:

1. **Bật MySQL Workbench** và đăng nhập vào kết nối MySQL bằng tài khoản (username) và mật khẩu (password) của bạn.
2. Trong bảng điều hướng (Navigator) ở bên trái màn hình, chọn tab **SCHEMAS** để hiển thị danh sách các cơ sở dữ liệu hiện có.
3. Chọn một schema (CSDL) mà bạn muốn xóa, ví dụ như `my_database`.
4. **Click chuột phải** vào tên CSDL đó và chọn **Drop Schema...**
5. Sau đó, một thông báo của Workbench sẽ xuất hiện để xác nhận hành động. Bạn nhấn chọn **Drop Now** để thực hiện xóa.
6. **Kiểm tra trạng thái:** Ở phần Output (dưới cùng màn hình), kiểm tra log thực thi. Nếu báo thành công và CSDL biến mất khỏi danh sách SCHEMAS, CSDL đã được xóa hoàn tất.

*(Lưu ý: Chúng ta phải rất cẩn thận với thao tác xoá CSDL bởi vì tất cả các dữ liệu trong CSDL này sẽ bị mất nếu không được sao lưu trước đó.)*

---

## Cách 2: Xóa CSDL sử dụng dòng lệnh SQL trên MySQL Workbench

Các bước thực hiện xóa CSDL bằng dòng lệnh:

1. Trong cửa sổ MySQL Workbench vừa đăng nhập, nhấn chọn biểu tượng **New Query Tab** (biểu tượng SQL có dấu cộng) để mở một cửa sổ mới để viết câu lệnh.
2. Trong cửa sổ truy vấn mới được mở ra, nhập câu lệnh SQL sau:
   ```sql
   DROP DATABASE `my_database`;
   ```
3. Sau đó, nhấn chọn biểu tượng **Execute** (hình tia sét màu vàng) để chạy câu lệnh vừa viết.
4. **Kiểm tra trạng thái việc thực thi:** Hãy nhìn xuống bảng **Output** ở bên dưới. Nếu xuất hiện dấu tích màu xanh báo câu lệnh `DROP DATABASE` thành công, CSDL đã được xóa. Bạn có thể nhấn nút **Refresh** trong tab SCHEMAS để làm mới danh sách và xác nhận CSDL không còn tồn tại.

*(Lưu ý: Chúng ta phải rất cẩn thận với thao tác xoá CSDL bởi vì tất cả các dữ liệu trong CSDL này sẽ bị mất nếu không được sao lưu trước đó.)*

---
---

# Bài tập: Luyện tập các thao tác tạo bảng bằng câu lệnh SQL trên MySQL Workbench

Mục tiêu của bài tập này là thực hành tạo một CSDL mới và tạo bảng bằng cách sử dụng các câu lệnh SQL trong MySQL Workbench.

## Các bước thực hiện:

1. **Bật MySQL Workbench** và đăng nhập vào MySQL bằng tài khoản và mật khẩu của bạn.
2. Nhấn chọn biểu tượng **New Query Tab** (biểu tượng SQL có dấu cộng ở góc trên bên trái) để mở một cửa sổ soạn thảo câu lệnh mới.
3. Nhập toàn bộ đoạn mã SQL dưới đây vào cửa sổ truy vấn để tạo CSDL `demo` và tạo bảng `Student` bên trong nó:

   ```sql
   create database demo;
   
   use demo;
   
   create table Student(
    id int,
    name varchar(200),
    age int,
    country varchar(50)
   );
   ```

4. **Chạy từng câu lệnh hoặc chạy toàn bộ:** Bạn có thể bôi đen từng câu lệnh và nhấn nút **Execute** (hình tia sét) để chạy lần lượt. Hoặc nếu bạn không bôi đen, nhấn nút Execute sẽ chạy toàn bộ các lệnh trên từ trên xuống dưới.
5. **Kiểm tra kết quả thực thi:**
   - Quan sát bảng **Output** ở dưới cùng. Bạn sẽ thấy các tích xanh xác nhận:
     - Câu lệnh `create database demo` thành công (1 row affected).
     - Câu lệnh `use demo` thành công (0 rows affected).
     - Câu lệnh `create table Student...` thành công (0 rows affected).
   - Tiếp theo, ở thanh điều hướng bên trái (tab **SCHEMAS**), bạn nhấn nút **Refresh** (hình mũi tên xoay vòng).
   - Bạn sẽ thấy CSDL `demo` xuất hiện. Mở rộng `demo` -> `Tables`, bạn sẽ thấy bảng `Student` đã được tạo thành công với các trường `id`, `name`, `age`, `country`.
