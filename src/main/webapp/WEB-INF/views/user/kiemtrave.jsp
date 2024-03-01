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
  <link rel="stylesheet" href="kiemtrave.css">
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
        <img src="${pageContext.request.contextPath}/img/home-slide-4-1536x880.jpg" class="d-block" alt="..." style="height: 100%; width: 100%;">
        <div class="text-overlay">
            Kiểm tra vé
        </div>
    </div>

    <div class="row justify-content-center g-2" style="margin-top: 10px;">
        <div class="col-10 d-flex justify-content-center align-items-center">
            <div class="col-4 p-2">
                <strong class="go">Mã vé</strong>
                <input type="text" placeholder="Nhập mã vé" name="idTicket" class="form-control fs-6 border border-0">
            </div>

           
            <div class="col-4 p-2">
                <strong class="go">Số điện thoại</strong>
                <input type="text" placeholder="Nhập số điện thoại" name="phoneNumber" class="form-control fs-6 border border-0">
            </div>

            <div class="col-2 d-flex align-items-center justify-content-center">
                <button class="timve"><i class="fa-solid fa-magnifying-glass"></i> Tìm vé</button>
            </div>
        </div>
    </div>

    <div class="row justify-content-center">
        <div class="col-10 d-flex justify-content-center align-items-center">
            <div class="col-5 p-2">
                <img src="${pageContext.request.contextPath}/img/check-ticket-1.png" alt="">
            </div>
            <div class="col-5 p-2">
                <img src="${pageContext.request.contextPath}/img/check-ticket-2.png" alt="">
            </div>
        </div>
    </div>


    <script src="https://kit.fontawesome.com/8a355c8929.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"></script>
  </body>
  
  </html>