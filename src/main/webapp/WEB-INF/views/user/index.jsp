<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SAIGON WATERBUS</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="/ASM/user/index.css">
    <style type="text/css">
    .navbar {
    background-color: white; 
    height: 70px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
    padding: 0;
    font-weight: bold;
}

.logo {
    width: auto;
    height: 45px;
}

.nav-link {
    font-size: 17px;
}

.navbar-nav {
    display: flex;
    height: 70px;
    width: 1114px;
}

.navbar-nav li a {
    display: flex;
}

.nav-item {
    width: 185px;
    display: flex;
    align-items: center;
    justify-content: center;
    position: relative;
}

.nav-link, .dropdown-toggle{
    justify-content: center;
    padding: 0 0;
}

.dropdown-menu {
    display: none;
    position: absolute;
    top: 100%;
    left: 0;
    padding: 0;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
    width: 200px;
}

.icon {
    display: none;
    margin-right: 5px;
}

.dropdown-item:active,  .dropdown-item.active{
    background-color: black;
}

.dropdown-item:hover .icon, .dropdown-item:hover {
    display: inline-block;
    color: #fcb900;
}

.nav-item:hover .nav-link{
    color: #fcb900;
}

.nav-item:hover .dropdown-menu {
    display: block;
}

/* CSS for Footer */
.footer {
    height: 300px;
    width: 100%;
    position: relative;
    background-color: black;
}

.infor {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 250px;
}

.img_footer {
    width: 195px;
    height: 195px;
}

.nav_menu {
    height: 250px;
    margin-top: 85px;
    padding: 0 20px;
}

.title {
    
    color: white;
}

.list {
    list-style: none;
  padding: 0;
}

.menu_item {
    text-decoration: none;
    color: #979797;
}

.menu_item:hover {
    color:  #fcb900; /* Màu của văn bản khi hover */
}
    </style>
</head>
<body>
    <!-- Menu -->
    <nav class="navbar sticky-top navbar-expand-lg fs-4" data-bs-theme="light" >
        <div class="container-fluid">
            <a class="navbar-brand active fs-4" href="/ASM/saigonwaterbus">
                <img src="img/logo.png" alt="Bootstrap" class="logo">
            </a>
       
          <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/ASM/saigonwaterbus">
                        TRANG CHỦ
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link" href="">
                        GA TÀU THỦY
                    </a>
                    <ul class="dropdown-menu">
                      <li><a class="dropdown-item" href="/ASM/saigonwaterbus/ga-tau-thuy-bach-dang"> <span class="icon"><i class="fa-solid fa-plus"></i></span> Bạch Đằng</a></li>
                      <li><a class="dropdown-item" href="/ASM/saigonwaterbus/ga-tau-thuy-binh-an"> <span class="icon"><i class="fa-solid fa-plus"></i></span> Bình An</a></li>
                      <li><a class="dropdown-item" href="/ASM/saigonwaterbus/ga-tau-thuy-thanh-da"> <span class="icon"><i class="fa-solid fa-plus"></i></span> Thanh Đa</a></li>
                      <li><a class="dropdown-item" href="/ASM/saigonwaterbus/ga-tau-thuy-hiep-binh-chanh"> <span class="icon"><i class="fa-solid fa-plus"></i></span> Hiệp Bình Chánh</a></li>
                      <li><a class="dropdown-item" href="/ASM/saigonwaterbus/ga-tau-thuy-linh-dong"> <span class="icon"><i class="fa-solid fa-plus"></i></span> Linh Đông</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/ASM/saigonwaterbus/lich-khoi-hanh">
                        LỊCH KHỞI HÀNH
                    </a>
                </li>
                
                <li class="nav-item dropdown">
                    <a class="nav-link" href="#">
                        ĐẶT VÉ 
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/ASM/saigonwaterbus/tim-ve"> <span class="icon"><i class="fa-solid fa-plus"></i></span> Tìm Vé</a></li>
                        <li><a class="dropdown-item" href="/ASM/saigonwaterbus/kiem-tra-ve"> <span class="icon"><i class="fa-solid fa-plus"></i></span> Kiểm Tra Vé</a></li>
                      </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/ASM/saigonwaterbus/lien-he">
                        LIÊN HỆ
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="fa-solid fa-language"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item active" href="#">Tiếng Việt</a></li>
                        <li><a class="dropdown-item" href="#">Tiếng Anh</a></li>
                    </ul>
                </li>
            </ul>
          </div>
            
        </div>
    </nav>

    <!-- Views -->
    <article class="p-0">
        <jsp:include page="${view}"></jsp:include>
        
    </article>

    <!-- Footer -->
    <footer class="footer row mt-1" >
       <div class="infor">
            <img src="img/logo_footer.png" alt="" class="img_footer">
            <div class="nav_menu">
                <h5 class="title">Thông tin</h5>
                <ul class="list">
                    <li><a class="menu_item" href="">Giới Thiệu</a></li>
                    <li><a class="menu_item" href="">Đối Tác</a></li>
                    <li><a class="menu_item" href="">Tuyển Dụng</a></li>
                    <li><a class="menu_item" href="">Hoạt Động Nội Bộ</a></li>
                </ul>
            </div>
            <div class="nav_menu">
                <h5 class="title">Dịch Vụ</h5>
                <ul class="list">
                    <li><a class="menu_item" href="">Water Bus</a></li>
                    <li><a class="menu_item" href="">Water Taxi</a></li>
                    <li><a class="menu_item" href="">Water Biz Coffee</a></li>
                    <li><a class="menu_item" href="">Waterbus Souvenirs</a></li>
                </ul>
            </div>
            <div class="nav_menu">
                <h5 class="title">Liên Hệ</h5>
                <ul class="list">
                    <li><a class="menu_item" href="">Văn Phòng Chính</a></li>
                    <li><a class="menu_item" href="">Hợp Tác Ngân Hàng</a></li>
                    <li><a class="menu_item" href="">Câu Hỏi Thường Gặp</a></li>
                </ul>
            </div>
            <div class="nav_menu">
                <h5 class="title">Chính Sách</h5>
                <ul class="list">
                    <li><a class="menu_item" href="">Chính Sách & Quy Định Chung</a></li>
                    <li><a class="menu_item" href="">Điều Khoản Sử Dụng</a></li>
                    <li><a class="menu_item" href="">Chính Sách Bảo Mật</a></li>
                </ul>
                <img src="img/da-thong-bao-bct.png" alt="" width="150" height="57">
            </div>
       </div>
       <div class="copyright" style="text-align: center; color: #979797;">
            <p>© 2022 CÔNG TY TNHH THƯỜNG NHẬT. Giấy CNĐK DN số: 0304354924 cấp ngày 05/05/2006 tại Sở Kế hoạch & đầu tư Tp. Hồ Chí Minh.
               <br>
                Địa chỉ: 6 Phan Kế Bính, Phường Đa Kao, Quận 1, TP. Hồ Chí Minh.</p>
       </div>
    </footer>

    <script src="https://kit.fontawesome.com/8a355c8929.js" crossorigin="anonymous"></script>
   	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>