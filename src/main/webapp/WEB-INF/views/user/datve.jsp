<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
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
    
<script>
    function submitBookingForm() {
        var selectedSeats = [];
        $('input[type=checkbox]:checked').each(function() {
            selectedSeats.push($(this).attr('id').replace('ve_', ''));
        });
        $('#bookingForm').append('<input type="hidden" name="selectedSeats" value="' + selectedSeats.join(',') + '">');
        $('#bookingForm').submit();
    }
</script>
</head>

<body>
    <div class="image-container" style="height: 240px;">
        <img src="${pageContext.request.contextPath}/img/home-slide-4-1536x880.jpg" class="d-block" style="height: 100%; width: 100%;">
        <div class="text-overlay">
            Đặt vé trực tuyến
        </div>
    </div>
    
	<!-- bắt đầu form tìm kiếm chuyến tàu -->
    <div class="row justify-content-center align-items-center g-2" style="margin-top: 10px;">
    	<form:form method="get" action="/asm/saigonwaterbus/tim-ve" class="d-flex justify-content-center align-items-center">
        <div class="col-10 d-flex align-items-center justify-content-center">
            <div class="col-3">
                <strong class="go"><i class="fa-solid fa-circle-arrow-up"></i> Nơi đi</strong>
                <select name="benDi" class="form-select fs-6 border border-0" aria-label="Chọn nơi đến">
                    <!-- Thêm các tùy chọn cho nơi đi -->
	                <option value="Chọn">Chọn nơi đi</option>
	                <option value="Bạch Đằng" ${benDi eq 'Bạch Đằng' ? 'selected' : ''}>Ga tàu thủy Bạch Đằng</option>
	                <option value="Bình An" ${benDi eq 'Bình An' ? 'selected' : ''}>Ga tàu thủy Bình An</option>
	                <option value="Thanh Đa" ${benDi eq 'Thanh Đa' ? 'selected' : ''}>Ga tàu thủy Thanh Đa</option>
	                <option value="Hiệp Bình Chánh" ${benDi eq 'Hiệp Bình Chánh' ? 'selected' : ''}>Ga tàu thủy Hiệp Bình Chánh</option>
	                <option value="Linh Đông" ${benDi eq 'Linh Đông' ? 'selected' : ''}>Ga tàu thủy Linh Đông</option>
                </select>
            </div>

            <div class="col-1 d-flex align-items-center justify-content-center">
                <img src="${pageContext.request.contextPath}/img/swap-xe-to.svg" alt="">
            </div>

            <div class="col-3">
                <strong class="go"><i class="fa-solid fa-circle-arrow-up"></i> Nơi đến</strong>
                <select name="benDen" class="form-select fs-6 border border-0" aria-label="Chọn nơi đến">
                    <!-- Thêm các tùy chọn cho nơi đến -->
	                <option value="Chọn">Chọn nơi đến</option>
	                <option value="Bạch Đằng" ${benDen eq 'Bạch Đằng' ? 'selected' : ''}>Ga tàu thủy Bạch Đằng</option>
	                <option value="Bình An" ${benDen eq 'Bình An' ? 'selected' : ''}>Ga tàu thủy Bình An</option>
	                <option value="Thanh Đa" ${benDen eq 'Thanh Đa' ? 'selected' : ''}>Ga tàu thủy Thanh Đa</option>
	                <option value="Hiệp Bình Chánh" ${benDen eq 'Hiệp Bình Chánh' ? 'selected' : ''}>Ga tàu thủy Hiệp Bình Chánh</option>
	                <option value="Linh Đông" ${benDen eq 'Linh Đông' ? 'selected' : ''}>Ga tàu thủy Linh Đông</option>
                </select>
            </div>

            <div class="col-2" style="padding-left: 5px;">
                <strong class="go"><i class="fa-solid fa-calendar-days"></i> Ngày đi</strong>
                <input name="ngayKhoiHanh" value="${ngayKH}" type="date" class="form-control fs-6 border border-0">
            </div>

            <div class="col-2 d-flex align-items-center justify-content-center">            
        		<button type="submit" class="btn btn-success timve p-2"><i class="fa-solid fa-magnifying-glass"></i><span> Tìm vé</span></button>
            </div>
        </div>
        </form:form>
    </div>
	<!-- kết thúc form tìm kiếm chuyến tàu -->
	
	<div class="row d-flex justify-content-center align-items-center p-0">
		<div class="col-10">
			<!-- each ở đây nè -->
			<c:forEach var="item" items="${listChuyen}">
			    <div class="card mb-3">
			        <div class="row g-0">
			            <div class="col-md-5 d-flex justify-content-center">
			                <img src="${pageContext.request.contextPath}/img/anhve.jpeg" class="img-fluid rounded-start">
			            </div>
			            <div class="col-md-4">
			                <div class="card-body">
			                    <h5 class="card-title">SỐ GHẾ CÒN TRỐNG: <span style="color: #fcb900;">${item.gheTrong}</span> </h5>
			                    <div>
			                        <i class="fa-regular fa-circle"></i>
			                        <strong>${item.gioDi}</strong>
			                        <b style="color: #fcb900;">Ga tàu thủy ${item.tuyen.benDi}</b>
			                    </div>
			                    <div>
			                        <i class="fa-solid fa-ellipsis-vertical"></i> 
			                        <strong style="font-size: 11px;">Bến dừng: ${item.tuyen.benDung}</strong>
			                    </div>
			                    <div>
			                        <i class="fa-solid fa-location-dot"></i>
			                        <strong>${item.gioDen}</strong>
			                        <b style="color: #fcb900;">Ga tàu thủy ${item.tuyen.benDen}</b>
			                    </div>
			       			 <div class="">  
			       			 		<form id="bookingForm" action="/asm/dat-ve" method="post">
			       			 		    <b>Danh sách chỗ ngồi</b>  <br>    
			       			 		    <input type="hidden" name="idChuyen" value="${item.id}">
										<c:choose>
										    <c:when test="${empty item.listVe}">
										        <p>Không có ghế ngồi</p>
										    </c:when>
										    <c:otherwise>
										        <c:forEach var="ve" items="${item.listVe}" varStatus="loop">
										       	 <%-- <input type="hidden" name="giaVe" value="${ve.giaVe}"> --%>
										            <input type="checkbox" value="${ve.tenGhe}" name="selectedSeats" id="ve_${ve.id}" name="ve_${ve.id}" 
										                   <c:if test="${ve.status}">
										                       checked disabled
										                   </c:if>>
										            <label for="ve_${ve.id}">${ve.tenGhe}</label>
										            <!-- Kiểm tra nếu là phần tử cuối cùng của mỗi dòng hoặc là phần tử cuối cùng của danh sách, thì thêm thẻ <br> -->
										            <c:if test="${loop.index % 4 == 3 || loop.last}">
										                <br>
										            </c:if>
										        </c:forEach>
										    </c:otherwise>
										</c:choose>
										<button type="submit" onclick="submitBookingForm()" class="btn btn-success timve p-2"><i class="fa-solid fa-ticket"></i><span> Đặt vé</span></button>
									</form>
			                    </div>
			                </div>
			            </div>
			            <div class="col-md-3 d-flex justify-content-center">
			            	<img alt="" src="${pageContext.request.contextPath}/img/mapthuyen.png" class="img-fluid rounded-start">
			            </div>
			        </div>
			    </div>

			</c:forEach>
		</div>
	</div>
	
    <h5 style="font-style: italic; font-weight: bold; color: #6ec1e4; text-align: center; margin-top: 10px;">Lưu ý:
        Saigon Waterbus miễn phí vé cho người cao
        tuổi từ 70 và các bé dưới 1 tuổi, người khuyết tật và thương binh.</h5>

    <img src="${pageContext.request.contextPath}/img/325469969_479843330780453_2536484999119177769_n-1-1536x1141.jpg" alt="" style="width:70% ; display: block; margin-left: auto; margin-right: auto;">


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