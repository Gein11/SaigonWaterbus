<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="datve.css">
    <style type="text/css">
    .image-container {
    position: relative;
    width: 100%;
}

.text-overlay {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    color: white;
    font-size: 24px;
    font-weight: bold;
    text-align: center;
}

.timve {
    background-color: #fcb900;
    color: black;
    border: none;
    border-radius: 10px;
    padding: 10px 25px;
}
    </style>
</head>

<body>
    <div class="image-container" style="height: 240px;">
        <img src="img/home-slide-4-1536x880.jpg" class="d-block" alt="..." style="height: 100%; width: 100%;">
        <div class="text-overlay">
            Đặt vé trực tuyến
        </div>
    </div>

    <div class="row justify-content-center g-2" style="margin-top: 10px;">
        <div class="col-10 d-flex">
            <div class="col-3">
                <strong class="go"><i class="fa-solid fa-circle-arrow-up"></i> Nơi đi</strong>
                <select class="form-select fs-6 border border-0" aria-label="Chọn nơi đến">
                    <!-- Thêm các tùy chọn cho nơi đến -->
                    <option value="optionA">Chọn nơi đi</option>
                    <option value="optionB">Ga tàu thủy Bạch Đằng</option>
                    <option value="optionC">Ga tàu thủy Bình An</option>
                    <option value="optionC">Ga tàu thủy Thanh Đa</option>
                    <option value="optionC">Ga tàu thủy Hiệp Bình Chánh</option>
                    <option value="optionC">Ga tàu thủy Linh Đông</option>
                    <option value="optionC">30 Phút Trên Sông</option>
                    <option value="optionC">60 Phút Trên Sông</option>
                    <option value="optionC">60 Phút Ngắm Hoàng Hôn</option>
                </select>
            </div>

            <div class="col-1 d-flex align-items-center justify-content-center">
                <img src="img/swap-xe-to.svg" alt="">
            </div>

            <div class="col-3">
                <strong class="go"><i class="fa-solid fa-circle-arrow-up"></i> Nơi đến</strong>
                <select class="form-select fs-6 border border-0" aria-label="Chọn nơi đến">
                    <!-- Thêm các tùy chọn cho nơi đến -->
                    <option value="optionA">Chọn nơi đến</option>
                    <option value="optionB">Ga tàu thủy Bạch Đằng</option>
                    <option value="optionC">Ga tàu thủy Bình An</option>
                    <option value="optionC">Ga tàu thủy Thanh Đa</option>
                    <option value="optionC">Ga tàu thủy Hiệp Bình Chánh</option>
                    <option value="optionC">Ga tàu thủy Linh Đông</option>
                    <option value="optionC">30 Phút Trên Sông</option>
                    <option value="optionC">60 Phút Trên Sông</option>
                    <option value="optionC">60 Phút Ngắm Hoàng Hôn</option>
                </select>
            </div>

            <div class="col-2" style="padding-left: 5px;">
                <strong class="go"><i class="fa-solid fa-calendar-days"></i> Ngày đi</strong>
                <input type="date" class="form-control fs-6 border border-0">
            </div>

            <div class="col-2 d-flex align-items-center justify-content-center">
                <button class="timve"><i class="fa-solid fa-magnifying-glass"></i> Tìm vé</button>
            </div>
        </div>
    </div>

    <h5 style="font-style: italic; font-weight: bold; color: #6ec1e4; text-align: center; margin-top: 10px;">Lưu ý:
        Saigon Waterbus miễn phí vé cho người cao
        tuổi từ 70 và các bé dưới 1 tuổi, người khuyết tật và thương binh. </h5>

    <img src="img/325469969_479843330780453_2536484999119177769_n-1-1536x1141.jpg" alt="" style="width:70% ; display: block; margin-left: auto; margin-right: auto;">


    <div class="row" style="padding: 10px;width: 1000px; display: block; margin-left: auto; margin-right: auto; font-weight: 400;">
        <h2>Hướng dẫn đặt vé trực tuyến</h2>
    
        <h3 style="color: #fcb900;">Bước 1: Tham khảo lịch khởi hành Saigon Waterbus</h3>
        <p>Step 1: Check out the departure timetable of Saigon Waterbus</p>
    
        <h3 style="color: #fcb900;">Bước 2: Chọn bến đi – bến đến, chọn ngày khởi hành sau đó chọn tìm vé.</h3>
        <p><strong>Lưu ý:</strong></p>
        <ul style="list-style: none;">
            <li>Vé Saigon Waterbus là vé 1 chiều, Quý khách đặt vé đi sau đó đặt vé về.</li>
            <li>Thời gian đến di chuyển qua các bến như trên lịch khởi hành.</li>
        </ul>
        <p><strong>Ví dụ:</strong></p>
        <ul style="list-style: none;">
            <li>Từ Bạch Đằng – Bình An: 15 phút/ chiều.</li>
            <li>Từ Bạch Đằng – Thanh Đa: 32 phút/ chiều.</li>
            <li>Từ Bạch Đằng – Hiệp Bình Chánh: 42 phút/ chiều.</li>
            <li>Từ Bạch Đằng – Linh Đông: 52 phút/ chiều.</li>
        </ul>
    
        <h3 style="color: #fcb900;">Bước 3: Chọn vị trí ghế ngồi phù hợp, số lượng ghế ngồi là số lượng vé bạn muốn đặt.</h3>
        <p>Step 3: Choose your seats position, the number of seats is the number of tickets you want to book.</p>
    
        <h3 style="color: #fcb900;">Bước 4: Điền thông tin liên lạc và tiến hành thanh toán.</h3>
        <p>Step 4: Fill in contact information and payment.</p>
    
        <p><strong>Lưu ý:</strong> Vé Saigon Waterbus không hoàn, không hủy vì vậy Quý khách vui lòng kiểm tra kỹ thông tin trước khi đặt vé, thanh toán.</p>
        <p><strong>Note:</strong> Saigon Waterbus’s tickets are non-refundable, non-cancellable, so please check the information carefully before booking and making payment.</p>
    </div>

    <script src="https://kit.fontawesome.com/8a355c8929.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>

</html>