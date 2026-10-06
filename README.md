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

---
---

# Bài tập: Luyện tập các thao tác tạo bảng bằng giao diện trên MySQL Workbench

Mục tiêu của bài tập này là sử dụng giao diện đồ họa (GUI) của MySQL Workbench để tạo bảng. Chúng ta sẽ tạo bảng Class và Teacher trong một CSDL đã có (ví dụ: student-management hoặc demo).

## Các bước thực hiện:

### 1. Tạo bảng Class
1. **Khởi động MySQL Workbench** và đăng nhập vào kết nối cơ sở dữ liệu của bạn.
2. Tại bảng điều hướng bên trái (tab **SCHEMAS**), tìm đến schema mang tên student-management (hoặc CSDL mà bạn muốn tạo bảng).
3. Mở rộng schema đó ra, **click chuột phải** vào mục **Tables** và chọn **Create Table...**
4. Trong màn hình tạo bảng mới hiện ra:
   - Tại ô **Table Name**, bạn nhập tên bảng là Class.
   - Ở khu vực bên dưới (phần Column Name), bạn click đúp vào dòng đầu tiên để thêm các trường. Lần lượt thêm các trường:
     - id (Kiểu dữ liệu: INT, có thể tích chọn **PK** - Primary Key và **NN** - Not Null).
     - 
ame (Kiểu dữ liệu: VARCHAR(45) hoặc kiểu text phù hợp).
5. Sau khi điền xong các trường, nhấn nút **Apply** ở góc dưới cùng bên phải.
6. Một cửa sổ xác nhận sẽ hiện ra chứa mã SQL tự sinh, tiếp tục nhấn **Apply** một lần nữa, sau đó nhấn **Finish** để hoàn tất việc tạo bảng Class.

### 2. Tạo bảng Teacher
1. Làm tương tự như trên: **Click chuột phải** vào mục **Tables** trong schema student-management và chọn **Create Table...**
2. Tại ô **Table Name**, nhập tên bảng là Teacher.
3. Thêm lần lượt các trường tương ứng vào danh sách cột:
   - id (Kiểu dữ liệu INT).
   - 
ame (Kiểu dữ liệu VARCHAR(...)).
   - ge (Kiểu dữ liệu INT).
   - country (Kiểu dữ liệu VARCHAR(...)).
4. Nhấn nút **Apply** ở góc dưới cùng.
5. Kiểm tra lại đoạn mã SQL tự động sinh ra và nhấn **Apply** lần nữa, rồi nhấn **Finish** để hoàn tất tạo bảng Teacher.

### 3. Kiểm tra kết quả
- Tại tab **SCHEMAS**, nhấn nút **Refresh** (hình mũi tên xoay vòng). Mở rộng phần **Tables** của schema student-management, bạn sẽ thấy cả 2 bảng Class và Teacher đã xuất hiện thành công.

