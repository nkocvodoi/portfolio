# Kiên Duy: trang cá nhân + portfolio

Trang cá nhân của Kiên Duy ([@nkocvodoi](https://github.com/nkocvodoi)), giới thiệu ba
sản phẩm đang chạy thật:

- [Bronze Dawn](https://bronzedawn.pages.dev/): game chiến thuật thời gian thực thời đồ đá, chơi trên trình duyệt
- [Cocain](https://cocain.onrender.com/): cờ caro, cờ tướng, cờ vây, cờ vua online bằng tiếng Việt
- [Sòng Phẳng](https://songphang-637431531944.asia-southeast1.run.app/): chia tiền nhóm, ít lần chuyển khoản nhất

Trang chạy tại **https://nkocvodoi.github.io/portfolio/**. Có tiếng Việt (mặc định), English và 日本語,
giao diện sáng và tối.

## Các trang

| file | là gì |
| --- | --- |
| `index.html` | trang chủ: lời chào, rồi danh sách dự án ngay bên dưới |
| `projects.html` | các dự án dạng thẻ có ảnh |
| `about.html` | giới thiệu |
| `portfolio.html` | portfolio một trang: dự án nổi bật, kỹ năng, liên hệ |
| `404.html` | trang không tìm thấy |

Bố cục lấy cảm hứng từ vanhuy.dev và portfolio.vanhuy.dev, làm lại từ đầu với
[Replica skills](replica/recon.md): chỉ học bố cục và cách dùng, không lấy code, chữ, ảnh hay logo của trang gốc.

## Sửa nội dung

Mọi chữ trên trang nằm trong một file: [`assets/js/data.js`](assets/js/data.js).

- `profile`: tên, email, GitHub, câu khẩu hiệu, giới thiệu, kỹ năng.
- `projects`: mỗi dự án một mục, đủ ba thứ tiếng. Thêm dự án mới thì chép một mục, đổi `url`,
  `image` (ảnh 1280×800 trong `assets/img/`) và chữ.
- `strings`: chữ của giao diện (menu, nút, tiêu đề).

Chỉ có tiếng Việt cũng được: thiếu bản dịch thì trang tự dùng tiếng Việt.

Ảnh đại diện hiện là chữ "KD" (`assets/img/avatar.svg`). Muốn dùng ảnh thật thì bỏ ảnh vào
`assets/img/avatar.jpg` và đổi `avatar.svg` thành `avatar.jpg` trong `index.html` và `about.html`.

## CV

`cv.html` là CV in được khổ A4, có tiếng Việt, English và 日本語 (mỗi thứ tiếng một khối `<article>`).
Nút tải về trỏ tới các file PDF trong `assets/cv/`. Sửa `cv.html` xong thì tạo lại PDF (cần Google Chrome):

```bash
sh scripts/build-cv-pdf.sh
```

## Chạy thử trên máy

Không cần cài gì, không có bước build:

```bash
python3 -m http.server 8765
```

Mở http://localhost:8765. Thêm `?lang=en` hoặc `?lang=ja` vào link để mở thẳng bằng thứ tiếng đó.

## Đăng lên

GitHub Pages lấy thẳng nhánh `main`, thư mục gốc. Push là lên.
