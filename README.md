# Flutter Web Portfolio - GitHub Pages

Dự án portfolio cá nhân được xây dựng bằng Flutter và triển khai trên GitHub Pages.

## Cài đặt và Thiết lập

### Bước 1: Cài đặt môi trường

Đảm bảo bạn đã cài đặt các công cụ cần thiết:

```bash
# Kiểm tra phiên bản Flutter
flutter --version

# Kích hoạt Flutter web
flutter config --enable-web

# Kiểm tra phiên bản Git
git --version
```

### Bước 2: Tạo dự án Flutter Web

```bash
# Tạo dự án mới
flutter create my_portfolio

# Di chuyển vào thư mục dự án
cd my_portfolio
```

### Bước 3: Cài đặt các dependency

Thêm các dependency vào file `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.2
  url_launcher: ^6.1.12
  google_fonts: ^6.1.0
  animated_text_kit: ^4.2.2
  flutter_svg: ^2.0.7
  responsive_framework: ^1.1.1
```

Cài đặt các dependency:

```bash
flutter pub get
```

### Bước 4: Tạo cấu trúc thư mục assets

```bash
mkdir -p assets/images
mkdir -p assets/icons
```

### Bước 5: Tạo file 404.html cho điều hướng

Tạo file `web/404.html` với nội dung:

```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="refresh" content="0;url=/">
  <script>
    window.location.href = window.location.origin + '/' + 
                        window.location.pathname.split('/').slice(1).join('/');
  </script>
</head>
<body>
  Redirecting...
</body>
</html>
```

## Xây dựng và Triển khai

### Bước 1: Build ứng dụng

```bash
# Chạy ứng dụng ở chế độ debug
flutter run -d chrome

# Build ứng dụng cho production
flutter build web
```

### Bước 2: Tạo file .nojekyll 

Trong Windows, sử dụng PowerShell:
```powershell
# Di chuyển vào thư mục build/web
cd build/web

# Tạo file .nojekyll
New-Item -Path ".nojekyll" -ItemType File -Force
```

### Bước 3: Tạo GitHub Repository

1. Tạo repository mới trên GitHub với tên `yourusername.github.io` (thay `yourusername` bằng tên người dùng GitHub của bạn)
2. Đối với sub-repository, có thể sử dụng tên bất kỳ (ví dụ: `portfolio`)

### Bước 4: Đẩy code lên GitHub

```bash
# Di chuyển vào thư mục build/web
cd build/web

# Khởi tạo Git repo
git init
git add .
git commit -m "Initial commit"

# Thêm remote và push
git remote add origin https://github.com/Cat1m/Cat1m.github.io.git
git push -u origin main
```

### Bước 5: Cấu hình GitHub Pages

1. Truy cập vào repository của bạn trên GitHub
2. Mở phần "Settings"
3. Chọn mục "Pages" từ menu bên trái
4. Ở phần "Source", chọn "main" (hoặc "master") và thư mục "/ (root)" rồi nhấn "Save"

## Sử dụng tên miền tùy chỉnh

### Bước 1: Tạo file CNAME

Tạo file `CNAME` trong thư mục `web` với nội dung là tên miền của bạn:

```
yourportfolio.com
```

### Bước 2: Cấu hình DNS

Cấu hình DNS ở nhà cung cấp tên miền:
- Thêm bản ghi A trỏ đến các IP của GitHub Pages:
  ```
  185.199.108.153
  185.199.109.153
  185.199.110.153
  185.199.111.153
  ```
- Thêm bản ghi CNAME từ `www` đến `yourusername.github.io`

## Tự động hóa với GitHub Actions

### Bước 1: Tạo workflow file

Tạo thư mục `.github/workflows/` và file `deploy.yml` với nội dung:

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v3
      - uses: subosito/flutter-action@v2
        with:
          flutter-version: '3.16.x'
          channel: 'stable'
      
      - name: Enable Flutter Web
        run: flutter config --enable-web
      
      - name: Get dependencies
        run: flutter pub get
      
      - name: Build Web
        run: flutter build web --base-href /
      
      - name: Create .nojekyll file
        run: touch build/web/.nojekyll
      
      # Nếu có CNAME, sao chép vào thư mục build
      - name: Copy CNAME
        run: cp -f CNAME build/web/ || echo "No CNAME file found"
      
      - name: Deploy
        uses: peaceiris/actions-gh-pages@v3
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: ./build/web
          force_orphan: true
```

### Bước 2: Đẩy mã nguồn lên GitHub

```bash
git add .
git commit -m "Add GitHub Actions workflow"
git push
```

## SEO và Analytics

### Cải thiện SEO

Chỉnh sửa file `web/index.html` để thêm các thẻ meta:

```html
<meta name="description" content="Cat1m's Portfolio - Flutter Developer">
<meta name="keywords" content="flutter, developer, portfolio, mobile, web">
```

### Thêm Google Analytics

Thêm Google Analytics vào file `web/index.html`:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-XXXXXXXXXX');
</script>
```

## Cập nhật nội dung

### Quy trình cập nhật

1. Sửa đổi các file Dart trong thư mục `lib/`
2. Thêm hình ảnh vào thư mục `assets/images/`
3. Test ứng dụng: `flutter run -d chrome`
4. Build ứng dụng: `flutter build web`
5. Đẩy thay đổi lên GitHub:
   ```bash
   cd build/web
   git add .
   git commit -m "Update content"
   git push
   ```

## Mẹo và tối ưu hóa

- Nén hình ảnh để giảm thời gian tải
- Sử dụng lazy loading cho các thành phần không hiển thị ngay lập tức
- Tối ưu hóa build với `flutter build web --release`
- Đặt các text content và biến môi trường trong file cấu hình riêng để dễ dàng cập nhật
- Sử dụng responsive_framework để đảm bảo giao diện hiển thị tốt trên mọi thiết bị

## Giải quyết sự cố thường gặp

### File .nojekyll không được tạo

Sử dụng lệnh thích hợp tùy vào hệ điều hành:

- Windows (PowerShell): `New-Item -Path ".nojekyll" -ItemType File -Force`
- Windows (CMD): `type nul > .nojekyll`
- Mac/Linux: `touch .nojekyll`

### Lỗi khi cài đặt dependency

Kiểm tra phiên bản Flutter và Dart tương thích trong pubspec.yaml và cập nhật nếu cần thiết:
```bash
flutter pub upgrade
```

### Ứng dụng không hiển thị đúng trên GitHub Pages

- Đảm bảo đã thêm file `.nojekyll`
- Kiểm tra lại cài đặt GitHub Pages trong phần Settings
- Kiểm tra base href trong file `index.html`, nên là `<base href="/">`
- Nếu sử dụng sub-repository, base href phải là `<base href="/repository-name/">`