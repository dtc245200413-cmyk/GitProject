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
