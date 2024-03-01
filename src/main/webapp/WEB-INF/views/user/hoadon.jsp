<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
	
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <h2 class="text-center">THÔNG TIN VÉ</h2>
        </div>
        <form action="/asm/submitOrder" method="post">
            <div class="row justify-content-center">
                <div class="col-md-5">
                
                    <div class="form-group">
                        <label for="disabledTextInput">TÊN CHUYẾN</label>
                        <input type="text" id="disabledTextInput" class="form-control" value="Đặt vé cho chuyến ${tenChuyen}"
                            name="orderInfo" readonly>
                    </div>
                    <div class="form-group">
                        <label for="disabledTextInput">BẾN ĐI</label>
                        <input type="text" id="disabledTextInput" class="form-control" placeholder="${benDi}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="disabledTextInput">BẾN ĐẾN</label>
                        <input type="text" id="disabledTextInput" class="form-control" placeholder="${benDen}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="disabledTextInput">BẾN DỪNG</label>
                        <input type="text" id="disabledTextInput" class="form-control" placeholder="${benDung}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="disabledTextInput">NGÀY KHỞI HÀNH</label>
                        <input type="text" id="disabledTextInput" class="form-control" placeholder="${ngayKH}" readonly>
                    </div>
                </div> <!-- Kết thúc cột đầu tiên -->
                <!-- Cột thứ hai -->
                <div class="col-md-5">
                    <div class="form-group">
                        <label for="disabledTextInput">GIỜ ĐI</label>
                        <input type="text" id="disabledTextInput" class="form-control" placeholder="${gioDi}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="disabledTextInput">SỐ LƯỢNG GHẾ</label>
                        <input type="text" id="disabledTextInput" class="form-control" placeholder="${soLuongGhe}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="disabledTextInput">TÊN GHẾ</label>
                        <input type="text" id="disabledTextInput" class="form-control" placeholder="${tenGhe}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="disabledTextInput">ĐƠN GIÁ</label>
                        <input type="text" id="disabledTextInput" class="form-control" placeholder="${donGia}" readonly>
                    </div>
                    <div class="form-group">
                        <label >TỔNG TIỀN</label>
					<%-- <div class="input-group">
						  <input type="text" class="form-control" name="tongTien" value="${tongTien}" readonly>
						  <span class="input-group-addon">VND</span>
						</div> --%>
						<div class="input-group mb-3">
						  <input type="text" class="form-control" class="form-control" name="tongTien" value="${tongTien}" readonly aria-describedby="basic-addon2">
						  <div class="input-group-append">
						    <span class="input-group-text" id="basic-addon2">VND</span>
						  </div>
						</div>
                </div> 
            </div> 
            <div class="row justify-content-center">
                <div class="col-md-10">
                    <h5 style="font-style: italic; font-weight: bold; color: #6ec1e4; text-align: center; margin-top: 10px;">
                        Lưu ý: Các mốc thời gian đón, trả bên dưới là thời gian dự kiến. Lịch này có thể thay đổi tùy tình hình thực tế.
                    </h5>
                   <div class="row justify-content-center" >
                       <div class="col-md-8">
                      
                        <input type="email" class="form-control w-75" placeholder="Email nhận hoá đơn và thông tin vé:" value="${emailThanhToan}" name="emailThanhToan" required="required">
                       </div>
            			<div class="col-md-4">
            			           <button type="submit" class="btn btn-primary w-75">
                        <i class="fa-solid fa-money-check-dollar"></i> THANH TOÁN
                    			</button>
            			</div>
                    </div>
                </div> 

                 </div>

            </div>
        </form> 
    </div> 
</body>

</html>