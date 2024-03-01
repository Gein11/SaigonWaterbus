<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/owlcarousel/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/owlcarousel/assets/owl.theme.default.min.css">
    <script src="assets/vendors/jquery.min.js"></script>
    <script src="assets/owlcarousel/owl.carousel.js"></script>
    <link rel="stylesheet" href="css.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style type="text/css">
.body{
  margin: 0px auto;
}


.map-container-2{
    overflow:hidden;
    padding-bottom:56.25%;
    position:relative;
    height:0;
  }
  .map-container-2 iframe{
    left:0;
    top:0;
    height:100%;
    width:100%;
    position:absolute;
  }
  .generic p {
    display: block;
    font-size: 28px;
    text-align: center;
    color: #3E3735;
    font-family: "Montserrat";
    font-weight: 600;
    line-height: 1.3em;
    margin: 4px 0;
}

.generic img {
    width: 150px;
    height: 120px;
    object-fit: scale-down;
    margin: auto;
    vertical-align: middle;

}
.sd{
  margin-top: 50px;
    margin-bottom: 50px;
padding: 20px;
margin-block-end: 20px;
margin-bottom: 20px;

height: auto;
    max-width: 100%;
    border: none;
    border-radius: 0;
    box-shadow: none;
}
.line6{
margin-bottom: 30px;
}
.title2{
  margin-bottom: 30px;
}

.container2{
  padding: 30px 0px 0px 0px;
  margin-block-end: 20px;
margin-bottom: 20px;
height: 100%;
width: 100%;
}
.section1{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  --widgets-spacing: 20px 20px;
}
.default1{
  text-align: center;
  --swiper-theme-color: #FFFF;
    --swiper-navigation-size: 44px;
    --swiper-pagination-bullet-size: 6px;
    --swiper-pagination-bullet-horizontal-gap: 6px;
    position: relative;
    display: inline-block;
    width: 100%;
    vertical-align: top;
    
}
.imgs{
  font-size: 50px;
  color: #FFFF;
  font-family: Sarabun,sans-serif;
    font-weight: 700;
    letter-spacing: -.01em;
}
/*  */



.lkh2{
  --widgets-spacing: 20px 20px;
}
.ic{
  text-align: center;
    padding-top: 15px;
    padding-bottom: 15px;
  text-align: center;
  width: 30px;
  height: 30px;
}
</style>
</head>

<body>
    <section class="lkh1">
        <img src="${pageContext.request.contextPath}/img/lich.jpg" alt="" width="100%">

    </section>
    <section class="lkh2">
        <div class="daily">
            <h2 class="daily">
                Các chuyến Daily </h2>
        </div>

        <div class="chuyen">

            <p>Mỗi ngày có 4 chuyến lượt đi, và 4 chuyến lượt về. Đi qua tất cả các bến: Bạch Đằng, Bình An,
                Thanh Đa, Hiệp Bình Chánh và Linh Đông. Lịch trình giống nhau kể cả thứ 7, chủ nhật và ngày
                lễ.</p>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="nenxanh">
                        <div class="ld">
                            <h4>
                                <span class="qodef-icon-font-awesome fa fa-anchor qodef-icon qodef-e"></span>
                                <span class="text">Lượt đi: Bạch Đằng - Linh Đông</span>
                                </span>
                            </h4>
                        </div>
                        <table class="table table-hover">
                            <thead>
                                <tr class="row-1 odd">
                                    <th class="column-1 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 28.9583px;"></th>
                                    <th class="column-2 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 61.1875px;">Bạch Đằng</th>
                                    <th class="column-3 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 49.3542px;">Bình An</th>
                                    <th class="column-4 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 63.25px;">Thanh Đa</th>
                                    <th class="column-5 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 69.5417px;">H.B. Chánh</th>
                                    <th class="column-6 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 60.2083px;">Linh Đông</th>
                                </tr>
                            </thead>
                            <tbody class="row-hover">
                                <tr class="row-2 even">
                                    <td class="column-1">Daily 1</td>
                                    <td class="column-2">8:30</td>
                                    <td class="column-3">8:45</td>
                                    <td class="column-4">9:02</td>
                                    <td class="column-5">9:12</td>
                                    <td class="column-6">9:22</td>
                                </tr>
                                <tr class="row-3 odd">
                                    <td class="column-1">Daily 3</td>
                                    <td class="column-2">10:40</td>
                                    <td class="column-3">10:55</td>
                                    <td class="column-4">11:12</td>
                                    <td class="column-5">11:22</td>
                                    <td class="column-6">11:32</td>
                                </tr>
                                <tr class="row-4 even">
                                    <td class="column-1">Daily 5</td>
                                    <td class="column-2">14:30</td>
                                    <td class="column-3">14:45</td>
                                    <td class="column-4">15:02</td>
                                    <td class="column-5">15:12</td>
                                    <td class="column-6">15:22</td>
                                </tr>
                                <tr class="row-5 odd">
                                    <td class="column-1">Daily 7</td>
                                    <td class="column-2">17:10</td>
                                    <td class="column-3">17:25</td>
                                    <td class="column-4">17:42</td>
                                    <td class="column-5">17:52</td>
                                    <td class="column-6">18:02</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="nenhong">
                        <div class="ld">
                            <h4>
                                <span class="qodef-icon-font-awesome fa fa-anchor qodef-icon qodef-e"></span>
                                <span class="text">Lượt về: Linh Đông - Bạch Đằng</span>
                                </span>
                            </h4>
                        </div>
                        <table class="table table-hover">
                            <thead>
                                <tr class="row-1 odd">
                                    <th class="column-1 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 28.9583px;"></th>
                                    <th class="column-2 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 60.1875px;">Linh Đông</th>
                                    <th class="column-3 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 69.5417px;">H.B. Chánh</th>
                                    <th class="column-4 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 63.25px;">Thanh Đa</th>
                                    <th class="column-5 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 49.3542px;">Bình An</th>
                                    <th class="column-6 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 61.2083px;">Bạch Đằng</th>
                                </tr>
                            </thead>
                            <tbody class="row-hover">
                                <tr class="row-2 even">
                                    <td class="column-1">Daily 2</td>
                                    <td class="column-2">9:40</td>
                                    <td class="column-3">9:50</td>
                                    <td class="column-4">10:00</td>
                                    <td class="column-5">10:17</td>
                                    <td class="column-6">10:32</td>
                                </tr>
                                <tr class="row-3 odd">
                                    <td class="column-1">Daily 4</td>
                                    <td class="column-2">12:00</td>
                                    <td class="column-3">12:10</td>
                                    <td class="column-4">12:20</td>
                                    <td class="column-5">12:37</td>
                                    <td class="column-6">12:52</td>
                                </tr>
                                <tr class="row-4 even">
                                    <td class="column-1">Daily 6</td>
                                    <td class="column-2">15:40</td>
                                    <td class="column-3">15:50</td>
                                    <td class="column-4">16:00</td>
                                    <td class="column-5">16:17</td>
                                    <td class="column-6">16:32</td>
                                </tr>
                                <tr class="row-5 odd">
                                    <td class="column-1">Daily 8</td>
                                    <td class="column-2">18:15</td>
                                    <td class="column-3">18:25</td>
                                    <td class="column-4">18:35</td>
                                    <td class="column-5">18:52</td>
                                    <td class="column-6">19:07</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </section>

    <section>
        <div class="ic">
            ---<i aria-hidden="true" class="fas fa-ship"></i>--
        </div>
    </section>
    <section class="lkh2">
        <div class="daily">
            <h2 class="daily">
                Các chuyến Bình An Trip </h2>
        </div>

        <div class="chuyen">

            <p>Các ngày trong tuần có 9 chuyến lượt đi, và 9 chuyến lượt về từ 17:00 đến 21:00. Thứ bảy, chủ nhật và các
                ngày lễ: bổ sung thêm các khung giờ: 16:00, 16:30, 21:30. Chuyến Bình An Trip chỉ đi qua bến Bạch Đằng
                và Bình An (khứ hồi).</p>
        </div>
        <div class="ly">
            <div class="luuy">
                <p><span style="color: #ff0000;"><strong>Lưu ý</strong>: Các chuyến có đánh dấu (*) chỉ hoạt động vào
                        thứ 7, chủ nhật và ngày lễ.</span></p>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="nenxanh">
                        <div class="ld">
                            <h4>
                                <span class="qodef-icon-font-awesome fa fa-anchor qodef-icon qodef-e"></span>
                                <span class="text">Lượt đi: Bạch Đằng - Bình An</span>
                                </span>
                            </h4>
                        </div>
                        <table class="table table-hover">
                            <thead>
                                <tr class="row-1 odd">
                                    <th class="column-1 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 192.292px;">Mã chuyến</th>
                                    <th class="column-2 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 141.656px;">Bạch Đằng</th>
                                    <th class="column-3 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 106.552px;">Bình An</th>
                                </tr>
                            </thead>
                            <tbody class="row-hover">

                                <tr class="row-2 even">
                                    <td class="column-1">Bình An Trip 1 (*)</td>
                                    <td class="column-2">16:00</td>
                                    <td class="column-3">16:15</td>
                                </tr>
                                <tr class="row-3 odd">
                                    <td class="column-1">Bình An Trip 3 (*)</td>
                                    <td class="column-2">16:30</td>
                                    <td class="column-3">16:45</td>
                                </tr>
                                <tr class="row-4 even">
                                    <td class="column-1">Bình An Trip 5</td>
                                    <td class="column-2">17:00</td>
                                    <td class="column-3">17:15</td>
                                </tr>
                                <tr class="row-5 odd">
                                    <td class="column-1">Bình An Trip 7</td>
                                    <td class="column-2">17:30</td>
                                    <td class="column-3">17:45</td>
                                </tr>
                                <tr class="row-6 even">
                                    <td class="column-1">Bình An Trip 9</td>
                                    <td class="column-2">18:00</td>
                                    <td class="column-3">18:15</td>
                                </tr>
                                <tr class="row-7 odd">
                                    <td class="column-1">Bình An Trip 11</td>
                                    <td class="column-2">18:30</td>
                                    <td class="column-3">18:45</td>
                                </tr>
                                <tr class="row-8 even">
                                    <td class="column-1">Bình An Trip 13</td>
                                    <td class="column-2">19:00</td>
                                    <td class="column-3">19:15</td>
                                </tr>
                                <tr class="row-9 odd">
                                    <td class="column-1">Bình An Trip 15</td>
                                    <td class="column-2">19:30</td>
                                    <td class="column-3">19:45</td>
                                </tr>
                                <tr class="row-10 even">
                                    <td class="column-1">Plus 13 (*)</td>
                                    <td class="column-2">19:45</td>
                                    <td class="column-3">20:00</td>
                                </tr>
                                <tr class="row-11 odd">
                                    <td class="column-1">Bình An Trip 17</td>
                                    <td class="column-2">20:00</td>
                                    <td class="column-3">20:15</td>
                                </tr>
                                <tr class="row-12 even">
                                    <td class="column-1">Bình An Trip 19</td>
                                    <td class="column-2">20:30</td>
                                    <td class="column-3">20:45</td>
                                </tr>
                                <tr class="row-13 odd">
                                    <td class="column-1">Plus 15 (*)</td>
                                    <td class="column-2">20:45</td>
                                    <td class="column-3">21:00</td>
                                </tr>
                                <tr class="row-14 even">
                                    <td class="column-1">Bình An Trip 21</td>
                                    <td class="column-2">21:00</td>
                                    <td class="column-3">21:15</td>
                                </tr>
                                <tr class="row-15 odd">
                                    <td class="column-1">Bình An Trip 23 (*)</td>
                                    <td class="column-2">21:30</td>
                                    <td class="column-3">21:45</td>
                                </tr>
                                <tr class="row-16 even">
                                    <td class="column-1">Plus 17 (*)</td>
                                    <td class="column-2">22:00</td>
                                    <td class="column-3">22:15</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="nenhong">
                        <div class="nenxanh">
                            <div class="ld">
                                <h4>
                                    <span class="qodef-icon-font-awesome fa fa-anchor qodef-icon qodef-e"></span>
                                    <span class="text">Lượt về: Bình An - Bạch Đằng</span>
                                    </span>
                                </h4>
                            </div>
                            <table class="table table-hover">
                                <thead>
                                    <tr class="row-1 odd">
                                        <th class="column-1 sorting_disabled" rowspan="1" colspan="1"
                                            style="width: 192.292px;">Mã chuyến</th>
                                        <th class="column-2 sorting_disabled" rowspan="1" colspan="1"
                                            style="width: 106.542px;">Bình An</th>
                                        <th class="column-3 sorting_disabled" rowspan="1" colspan="1"
                                            style="width: 141.667px;">Bạch Đằng</th>
                                    </tr>
                                </thead>
                                <tbody class="row-hover">

                                    <tr class="row-2 even">
                                        <td class="column-1">Bình An Trip 2 (*)</td>
                                        <td class="column-2">16:30</td>
                                        <td class="column-3">16:45</td>
                                    </tr>
                                    <tr class="row-3 odd">
                                        <td class="column-1">Bình An Trip 4 (*)</td>
                                        <td class="column-2">17:00</td>
                                        <td class="column-3">17:15</td>
                                    </tr>
                                    <tr class="row-4 even">
                                        <td class="column-1">Bình An Trip 6</td>
                                        <td class="column-2">17:30</td>
                                        <td class="column-3">17:45</td>
                                    </tr>
                                    <tr class="row-5 odd">
                                        <td class="column-1">Bình An Trip 8</td>
                                        <td class="column-2">18:00</td>
                                        <td class="column-3">18:15</td>
                                    </tr>
                                    <tr class="row-6 even">
                                        <td class="column-1">Bình An Trip 10</td>
                                        <td class="column-2">18:30</td>
                                        <td class="column-3">18:45</td>
                                    </tr>
                                    <tr class="row-7 odd">
                                        <td class="column-1">Bình An Trip 12</td>
                                        <td class="column-2">19:00</td>
                                        <td class="column-3">19:15</td>
                                    </tr>
                                    <tr class="row-8 even">
                                        <td class="column-1">Bình An Trip 14</td>
                                        <td class="column-2">19:30</td>
                                        <td class="column-3">19:45</td>
                                    </tr>
                                    <tr class="row-9 odd">
                                        <td class="column-1">Bình An Trip 16</td>
                                        <td class="column-2">20:00</td>
                                        <td class="column-3">20:15</td>
                                    </tr>
                                    <tr class="row-10 even">
                                        <td class="column-1">Plus 14 (*)</td>
                                        <td class="column-2">20:15</td>
                                        <td class="column-3">20:30</td>
                                    </tr>
                                    <tr class="row-11 odd">
                                        <td class="column-1">Bình An Trip 18</td>
                                        <td class="column-2">20:30</td>
                                        <td class="column-3">20:45</td>
                                    </tr>
                                    <tr class="row-12 even">
                                        <td class="column-1">Bình An Trip 20</td>
                                        <td class="column-2">21:00</td>
                                        <td class="column-3">21:15</td>
                                    </tr>
                                    <tr class="row-13 odd">
                                        <td class="column-1">Plus 16 (*)</td>
                                        <td class="column-2">21:15</td>
                                        <td class="column-3">21:30</td>
                                    </tr>
                                    <tr class="row-14 even">
                                        <td class="column-1">Bình An Trip 22</td>
                                        <td class="column-2">21:30</td>
                                        <td class="column-3">21:45</td>
                                    </tr>
                                    <tr class="row-15 odd">
                                        <td class="column-1">Bình An Trip 24 (*)</td>
                                        <td class="column-2">22:00</td>
                                        <td class="column-3">22:15</td>
                                    </tr>
                                    <tr class="row-16 even">
                                        <td class="column-1">Plus 18 (*)</td>
                                        <td class="column-2">22:30</td>
                                        <td class="column-3">22:45</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>

    </section>
    <section>
        <div class="daily">
            <h2 class="daily">
                Các chuyến Tăng cường Bạch Đằng - Thanh Đa - Bạch Đằng</h2>
        </div>

        <div class="chuyen">

            <p>Các ngày ngày lễ, cuối tuần tăng cường thêm các chuyến Bạch Đằng – Thanh Đa – Bạch Đằng. </p>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="nenxanh">
                        <div class="ld">
                            <h4>
                                <span class="qodef-icon-font-awesome fa fa-anchor qodef-icon qodef-e"></span>
                                <span class="text">Lượt đi: Bạch Đằng - Thanh Đa</span>
                                </span>
                            </h4>
                        </div>
                        <table class="table table-hover">
                            <thead>
                                <tr class="row-1 odd">
                                    <th class="column-1 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 64.1458px;"></th>
                                    <th class="column-2 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 129.438px;">Bạch Đằng</th>
                                    <th class="column-3 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 96.7396px;">Bình An</th>
                                    <th class="column-4 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 114.177px;">Thanh Đa</th>
                                </tr>
                            </thead>
                            <tbody class="row-hover">






                                <tr class="row-2 even">
                                    <td class="column-1">Plus 1</td>
                                    <td class="column-2">9:30</td>
                                    <td class="column-3">9:45</td>
                                    <td class="column-4">10:02</td>
                                </tr>
                                <tr class="row-3 odd">
                                    <td class="column-1">Plus 3</td>
                                    <td class="column-2">11:00</td>
                                    <td class="column-3">11:15</td>
                                    <td class="column-4">11:32</td>
                                </tr>
                                <tr class="row-4 even">
                                    <td class="column-1">Plus 5</td>
                                    <td class="column-2">11:30</td>
                                    <td class="column-3">11:45</td>
                                    <td class="column-4">12:02</td>
                                </tr>
                                <tr class="row-5 odd">
                                    <td class="column-1">Plus 7</td>
                                    <td class="column-2">13:30</td>
                                    <td class="column-3">13:45</td>
                                    <td class="column-4">14:02</td>
                                </tr>
                                <tr class="row-6 even">
                                    <td class="column-1">Plus 9</td>
                                    <td class="column-2">14:00</td>
                                    <td class="column-3">14:15</td>
                                    <td class="column-4">14:32</td>
                                </tr>
                                <tr class="row-7 odd">
                                    <td class="column-1">Plus 11</td>
                                    <td class="column-2">15:10</td>
                                    <td class="column-3">15:25</td>
                                    <td class="column-4">15:42</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="nenhong">
                        <div class="ld">
                            <h4>
                                <span class="qodef-icon-font-awesome fa fa-anchor qodef-icon qodef-e"></span>
                                <span class="text">Lượt về: Thanh Đa - Bạch Đằng</span>
                                </span>
                            </h4>
                        </div>
                        <table class="table table-hover">
                            <thead>
                                <tr class="row-1 odd">
                                    <th class="column-1 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 65.5312px;"></th>
                                    <th class="column-2 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 113.688px;">Thanh Đa</th>
                                    <th class="column-3 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 96.3333px;">Bình An</th>
                                    <th class="column-4 sorting_disabled" rowspan="1" colspan="1"
                                        style="width: 128.948px;">Bạch Đằng</th>
                                </tr>
                            </thead>
                            <tbody class="row-hover">
                                <tr class="row-2 even">
                                    <td class="column-1">Plus 2</td>
                                    <td class="column-2">10:20</td>
                                    <td class="column-3">10:37</td>
                                    <td class="column-4">10:52</td>
                                </tr>
                                <tr class="row-3 odd">
                                    <td class="column-1">Plus 4</td>
                                    <td class="column-2">12:00</td>
                                    <td class="column-3">12:17</td>
                                    <td class="column-4">12:32</td>
                                </tr>
                                <tr class="row-4 even">
                                    <td class="column-1">Plus 6</td>
                                    <td class="column-2">12:30</td>
                                    <td class="column-3">12:47</td>
                                    <td class="column-4">13:02</td>
                                </tr>
                                <tr class="row-5 odd">
                                    <td class="column-1">Plus 8</td>
                                    <td class="column-2">14:30</td>
                                    <td class="column-3">14:47</td>
                                    <td class="column-4">15:02</td>
                                </tr>
                                <tr class="row-6 even">
                                    <td class="column-1">Plus 10</td>
                                    <td class="column-2">15:00</td>
                                    <td class="column-3">15:17</td>
                                    <td class="column-4">15:32</td>
                                </tr>
                                <tr class="row-7 odd">
                                    <td class="column-1">Plus 12</td>
                                    <td class="column-2">15:50</td>
                                    <td class="column-3">16:07</td>
                                    <td class="column-4">16:22</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </section>

    </section>
    <section>
        <div class="elementor-widget-container">
            <p><em>Lưu ý:&nbsp;</em><br>Saigon Waterbus miễn phí vé cho người cao tuổi từ 70 và các bé dưới 1 tuổi,
                người khuyết tật và thương binh.</p>
        </div>
        </div>
    </section>
    <script src="https://kit.fontawesome.com/8a355c8929.js" crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>

    <script src="bootstrap-5.3.1-dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>