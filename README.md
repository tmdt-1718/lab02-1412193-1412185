# BT-TMDT-2 - *Yalo*

**Yalo** là một bài tập môn TMDT. Ứng dụng cho phép người dùng gửi tin nhắn (email) cho người dùng khác.

Thành viên:
* [x] **1412193** Nguyễn Thái Học (1412193 - NguyenThaiHoc1)
* [x] **1412185** Trần Thiên Hoàng (1412185)

URL: **https://damp-dawn-21411.herokuapp.com/**

## Yêu cầu

Sinh viên check vào các mục bên dưới và ghi mã sinh viên đã làm vào chức năng theo mẫu. Mục nào ko có MSSV là tính điểm theo nhóm. Cần sắp xếp các chức năng bên dưới theo thứ tự MSSV đã thực hiện.

Yêu cầu **GIT**:
* [x] Sử dụng GIT theo [Feature Branch Workflow](https://w...content-available-to-author-only...n.com/git/tutorials/comparing-workflows#feature-branch-workflow).

Yêu cầu **bắt buộc**
* [x] Đăng ký tài khoản bằng email, password, và tên.  (**1412193**)
* [x] Đăng nhập bằng email và password. (**1412193**)
* [x] Sau khi đăng nhập, người dùng sẽ được chuyển đến trang liệt kê danh sách các tin nhắn đã nhận, sắp xếp theo thứ tự thời gian, một nút để tạo tin nhắn mới, nút để xem danh sách bạn bè và nút để xem các tin nhắn đã gửi.(**1412193**)
* [x] Nhấn vào nút "xem danh sách bạn" sẽ chuyển người dùng đến trang liệt kê danh sách người dùng cùng với các chức năng thêm bạn. (**1412193**)
* [x] Nhấn "xem tin đã gửi" sẽ chuyển sang giao diện hiển thị danh sách tin nhắn đã gửi. Mỗi tin nhắn cần hiện thời gian người nhận đã đọc. (**1412185**)
* [x] Mỗi người dùng chỉ có thể đọc tin nhắn 1 lần duy nhất. (**1412185**)
* [x] Người dùng chỉ có thể đọc tin nhắn khi họ nằm trong danh sách người nhận. (**1412185**)
* [x] Tin nhắn chưa đọc phải được làm nổi bật hơn các tin nhắn khác.(**1412185**)
* [x] Nhấn nút "tạo tin nhắn" sẽ chuyển sang giao diện cho phép người dùng gửi tin nhắn cho người dùng trong danh sách bạn bè. Người gửi phải nằm trong danh sách bạn bè và cho phép người dùng chọn qua dropdown.

Yêu cầu **không bắt buộc**:
* [x] Người dùng có thể gửi hình ảnh đính kèm theo thông điệp. (**1412193** cái này em dùng summernote không biết có đúng ý thầy ko?)
* [ ] Người dùng có thể gửi tin nhắn đến nhiều người dùng cùng lúc. (**MSSV**)
* [ ] Người dùng có thể đăng nhập với Facebook. (**MSSV**)
* [x] Người dùng có thể block người khác. Sau khi block, người dùng sẽ không nhận được tin nhắn từ người bị block gửi nữa. (**1412193**)
* [ ] Người dùng có thể xóa người dùng khác ra khỏi danh sách bạn. (**MSSV**)
* [ ] Người dùng có thể unblock người dùng khác. (**MSSV**)
* [ ] Khi người dùng kéo xuống cuối trang, các tin nhắn tiếp theo sẽ tự động hiển thị hoặc có nút nhấn "Xem thêm tin nhắn" để nạp thêm danh sách tin nhắn. (**MSSV**)
* [ ] Người dùng sẽ nhận được email thông báo khi họ nhận được tin nhắn cùng với link để xem tin nhắn. (**MSSV**)
* [ ] Người dùng sẽ nhận được email khi người nhận đã đọc tin nhắn. (**MSSV**)
* [ ] Người dùng có thể gửi tin nhắn cho người dùng ngoài hệ thống. Khi đó, người nhận sẽ nhận được 1 email chứa link đăng ký tài khoản. Sau khi đăng ký tài khoản, họ có thể xem tin nhắn đã nhận. (**MSSV**)

Liệt kê các **yêu cầu nâng cao** đã thực hiện:
* [x] Gửi friend request (có dùng ajax để quản lý khi người ta gửi 1 friend request đến thể hiện trạng thái chờ đợi hay đã chấp nhận) (**1412193**)
* [ ] Chức năng 2

## Demo

Link ảnh GIF demo ứng dụng:

[Chức năng cơ bản](https://i.imgur.com/oMoNUBs.gifv) - Do ảnh gif này em upload lên giphy không được nên đành upload lên imgur. Nhưng khi tạo xem trước thì github lại báo lỗi "Non-Image content-type returned" nên em phải gắn link trực tiếp vào. Mong thầy thông cảm.

![Chức năng nâng cao](https://media.giphy.com/media/3ov9k2lWeBN50S76Ny/giphy.gif)

Tạo ảnh GIF với chương trình [LiceCap](http://w...content-available-to-author-only...s.com/licecap/).


link youtube
https://www.youtube.com/watch?v=hmnb4deEITY&feature=youtu.be (Friends, list friend , sent messages, friendrequest, block, ...)

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://w...content-available-to-author-only...e.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
