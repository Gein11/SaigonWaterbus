<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <link rel="stylesheet" href="trangchu.css">
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
  #carouselExampleAutoplaying {
/*     width: 1343px;
 */    height: 600px;
}

.carousel-inner {
    width: 100%;
    height: 100%;
}

.carousel-item {
    width: 100%;
    height: 100%;
}

.carousel-item img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    opacity: 0.9;
}

.title {
    position: relative;
    top: -250px;
    text-transform: uppercase;
    text-align: right;
    float: right;
    font-size: 50px;
    color: black;
    text-shadow: 2px 2px 2px #FFFFFF;
}

.title-content {
    position: relative;
    top: -200px;
    float: right;
    text-align: right;
    font-size: 20px;
    color: black;
    text-shadow: 2px 2px 2px #FFFFFF;
    font-weight: bold;
}

/* Box tìm kiếm */
.nav-link {
    width: 300px;
    color: #979797;
}

.nav-underline .nav-link.active, .nav-underline .show>.nav-link {
    color: #fcb900;
}

.go {
    font-size: 25px;
}

.timve {
    background-color: #fcb900;
    color: black;
    border: none;
    border-radius: 10px;
    padding: 10px 25px;
}

.iicon {
    font-size: 40px;
    color: #fcb900;
}

.tau{
    width: 200px;
}

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
  </style>
  
 <%--  <script type="text/javascript">
  $(document).ready(function() {
		$("a[href*=lang]").on("click", function() {
			var param = $(this).attr("href");
			$.ajax({
				url : "/home/index" + param,
				success : function() {
					location.reload();
				}
			});
			return false;
		})
	})
  </script> --%>
</head>

<body>
  <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="${pageContext.request.contextPath}/img/slideshow1.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h5 class="title"><s:message code="lo.mn.caroseltitle1"/></h5>
          <p class="title-content"><s:message code="lo.mn.caroseltitlesup1"/></p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="${pageContext.request.contextPath}/img/slideshow2.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h5 class="title"><s:message code="lo.mn.caroseltitle2"/></h5>
          <p class="title-content"><s:message code="lo.mn.caroseltitlesup2"/></p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="${pageContext.request.contextPath}/img/slideshow3.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h5 class="title"><s:message code="lo.mn.caroseltitle3"/></h5>
          <p class="title-content"><s:message code="lo.mn.caroseltitlesup3"/></p>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
      data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
      data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>

  <div class="row justify-content-center align-items-center g-2 border border-2 m-4 p-2">
    <!-- Nav tabs -->
    <ul class="nav nav-underline justify-content-center" id="myMenu" role="tablist">

      <li class="nav-item" role="presentation">
        <button class="nav-link active" id="waterbus-tab" data-bs-toggle="tab" data-bs-target="#waterbus" type="button"
          role="tab" aria-controls="waterbus" aria-selected="true">
          <img src="${pageContext.request.contextPath}/img/swb-logo.svg" alt=""> <br>
          Saigon WaterBus
        </button>
      </li>
      <li class="nav-item" role="presentation">
        <button class="nav-link" id="watergo-tab" data-bs-toggle="tab" data-bs-target="#watergo" type="button"
          role="tab" aria-controls="watergo" aria-selected="false">
          <img src="${pageContext.request.contextPath}/img/swg-logo.svg" alt=""> <br>
          Saigon WaterGo
        </button>
      </li>

    </ul>
    <!-- Tab panes -->
    <div class="tab-content">

      <div class="tab-pane active" id="waterbus" role="tabpanel" aria-labelledby="waterbus-tab" tabindex="0">
        <!-- bắt đầu form tìm kiếm chuyến tàu -->
    <div class="row justify-content-center align-items-center g-2" style="margin-top: 10px;">
    	<form:form method="get" action="/asm/saigonwaterbus/tim-ve" class="d-flex justify-content-center align-items-center">
        <div class="col-10 d-flex align-items-center justify-content-center">
            <div class="col-3">
                <strong class="go"><i class="fa-solid fa-circle-arrow-up"></i> <s:message code="lo.mn.Departure"/></strong>
                <select name="benDi" class="form-select fs-6 border border-0" aria-label="Chọn nơi đến">
                    <!-- Thêm các tùy chọn cho nơi đến -->
                    <option value="Chọn">Chọn nơi đi</option>
                    <option value="Bạch Đằng">Ga tàu thủy Bạch Đằng</option>
                    <option value="Bình An">Ga tàu thủy Bình An</option>
                    <option value="Thanh Đa">Ga tàu thủy Thanh Đa</option>
                    <option value="Hiệp Bình Chánh">Ga tàu thủy Hiệp Bình Chánh</option>
                    <option value="Linh Đông">Ga tàu thủy Linh Đông</option>
                </select>
            </div>

            <div class="col-1 d-flex align-items-center justify-content-center">
                <img src="${pageContext.request.contextPath}/img/swap-xe-to.svg" alt="">
            </div>

            <div class="col-3">
                <strong class="go"><i class="fa-solid fa-circle-arrow-up"></i> <s:message code="lo.mn.Destination"/></strong>
                <select name="benDen" class="form-select fs-6 border border-0" aria-label="Chọn nơi đến">
                    <!-- Thêm các tùy chọn cho nơi đến -->
                    <option value="Chọn">Chọn nơi đến</option>
                    <option value="Bạch Đằng">Ga tàu thủy Bạch Đằng</option>
                    <option value="Bình An">Ga tàu thủy Bình An</option>
                    <option value="Thanh Đa">Ga tàu thủy Thanh Đa</option>
                    <option value="Hiệp Bình Chánh">Ga tàu thủy Hiệp Bình Chánh</option>
                    <option value="Linh Đông">Ga tàu thủy Linh Đông</option>
                </select>
            </div>

            <div class="col-2" style="padding-left: 5px;">
                <strong class="go"><i class="fa-solid fa-calendar-days"></i> <s:message code="lo.mn.Dateofdepartment"/></strong>
                <input name="ngayKhoiHanh" type="date" class="form-control fs-6 border border-0">
            </div>

            <div class="col-2 d-flex align-items-center justify-content-center">            
        		<button type="submit" class="btn btn-success timve p-2"><i class="fa-solid fa-magnifying-glass"></i><span> <s:message code="lo.mn.findTicket"/></span></button>
            </div>
        </div>
        </form:form>
    </div>
	<!-- kết thúc form tìm kiếm chuyến tàu -->

      </div>
      <div class="tab-pane" id="watergo" role="tabpanel" aria-labelledby="watergo-tab" tabindex="0">
        <div class="row justify-content-center g-2">
          <div class="col-10 d-flex justify-content-center align-items-center">
            <div class="col-5">
              <select class="form-select fs-6 border border-0" aria-label="Chọn nơi đến">
                <!-- Thêm các tùy chọn cho nơi đến -->
                <option value="optionA">Khám Phá Thành Phố - Tàu 2 Tầng</option>
              </select>
            </div>

            <div class="col-3" style="padding-left: 5px;">
              <input type="date" class="form-control fs-6 border border-0">
            </div>

            <div class="col-2 d-flex align-items-center justify-content-center">
              <button class="timve"><i class="fa-solid fa-magnifying-glass"></i> Tìm vé</button>
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>

  <div class="row justify-content-center align-items-center border border-2 m-4 p-2">
    <h2><s:message code="lo.mn.steps"/></h2>
    <div class="col-12 d-flex justify-content-center align-items-center text-center">
      <div class="col-3">
        <i class="fa-solid fa-magnifying-glass-location iicon"></i>
        <h5><s:message code="lo.mn.Findaflight"/></h5>
        <p style="font-size: 14px;"><s:message code="lo.mn.Select"/></p>
      </div>
      <div class="col-3">
        <i class="fa-solid fa-user iicon"></i>
        <h5><s:message code="lo.mn.Chooseaseat"/></h5>
        <p style="font-size: 14px;"><s:message code="lo.mn.Selectthe"/></p>
      </div>
      <div class="col-3">
        <i class="fa-solid fa-circle-check iicon"></i>
        <h5><s:message code="lo.mn.Reservation"/></h5>
        <p style="font-size: 14px;"><s:message code="lo.mn.Proceed"/></p>
      </div>
      <div class="col-3">
        <i class="fa-solid fa-anchor iicon"></i>
        <h5><s:message code="lo.mn.Getonthetrain"/></h5>
        <p style="font-size: 14px;"><s:message code="lo.mn.Receive"/></p>
      </div>
    </div>
    <h5 style="font-style: italic; font-weight: bold; color: #6ec1e4;"><s:message code="lo.mn.note"/></h5>
  </div>

  <div class="row justify-content-center align-items-center">
    <div class="col-10 d-flex align-items-center justify-content-center">
      <div class="col-5">
        <div class="row">
          <h3>Khám phá Sông Sài Gòn theo cách riêng của bạn</h3>
          <p>Chỉ với 30,000 cho vé đi và về là bạn sẽ ngay có một chuyến vi vu trên sông Sài Gòn bằng Saigon Waterbus để
            ngắm vẻ đẹp của Thành phố Hồ Chí Minh nhìn từ phía sông.</p>
        </div>
        <hr>
        <button class="border border-0 m-0 p-0 d-block"
          style="background-color: white; width: 350px; align-items: flex-end;">
          <i class="fa-solid fa-circle-plus iicon" style="display: inline-block;"></i>
          <strong style="display: inline-block; text-align: left;">Xem hướng dẫn, <br>
            đặt vé và trải nghiệm ngay!</strong>
        </button>
      </div>

      <div class="col-5">
        <img src="${pageContext.request.contextPath}/img/home-slide-1-1536x880.jpg" alt="" class="w-100" style="margin-left: 25px;">
      </div>
    </div>
  </div>

  <div class="row justify-content-center align-items-center text-center g-2 border border-2 m-4 p-2">
    <h2>Hệ thống ga tàu thủy Saigon Waterbus</h2>
    <!-- Nav tabs -->
    <ul class="nav nav-underline justify-content-center" id="myMenu" role="tablist">

      <li class="nav-item" role="presentation">
        <button class="nav-link tau active" id="bachdang-tab" data-bs-toggle="tab" data-bs-target="#bachdang"
          type="button" role="tab" aria-controls="bachdang" aria-selected="true">
          Bạch Đằng
        </button>
      </li>
      <li class="nav-item" role="presentation">
        <button class="nav-link tau" id="binhan-tab" data-bs-toggle="tab" data-bs-target="#binhan" type="button"
          role="tab" aria-controls="binhan" aria-selected="false">
          Bình An
        </button>
      </li>
      <li class="nav-item" role="presentation">
        <button class="nav-link tau" id="thanhda-tab" data-bs-toggle="tab" data-bs-target="#thanhda" type="button"
          role="tab" aria-controls="thanhda" aria-selected="false">
          Thanh Đa
        </button>
      </li>
      <li class="nav-item" role="presentation">
        <button class="nav-link tau" id="hiepbinhchanh-tab" data-bs-toggle="tab" data-bs-target="#hiepbinhchanh"
          type="button" role="tab" aria-controls="hiepbinhchanh" aria-selected="false">
          Hiệp Bình Chánh
        </button>
      </li>
      <li class="nav-item" role="presentation">
        <button class="nav-link tau" id="linhdong-tab" data-bs-toggle="tab" data-bs-target="#linhdong" type="button"
          role="tab" aria-controls="linhdong" aria-selected="false">
          Linh Đông
        </button>
      </li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">

      <div class="tab-pane active" id="bachdang" role="tabpanel" aria-labelledby="bachdang-tab" tabindex="0">
        <div class="row justify-content-center g-2">
          <div class="col-10 d-flex  justify-content-center">
            <div class="col-5">
              <img src="${pageContext.request.contextPath}/img/home-slide-0-1-1536x880.jpg" alt="" class="w-100">
            </div>
            <div class="col-5">
              <div class="row" style="text-align: justify; margin-left: 5px;">
                <h3>Ga tàu thủy Bạch Đằng - Nơi giao thoa lịch sử và hiện đại</h3>
                <p>Tọa lạc ngay trung tâm Thành phố (Q1) với công viên Bạch Đằng, phố đi bộ Nguyễn Huệ cùng nhiều địa
                  điểm vui chơi, ăn uống khác đang chờ bạn.</p>
              </div>
              <hr>
              <button class="border border-0 m-0 p-0 d-block"
                style="background-color: white; width: 350px; align-items: flex-end;">
                <i class="fa-solid fa-circle-plus iicon" style="display: inline-block;"></i>
                <strong style="display: inline-block; text-align: left;">Xem chi tiết <br>
                  và chỉ đường</strong>
              </button>
            </div>
          </div>
        </div>

      </div>
      <div class="tab-pane" id="binhan" role="tabpanel" aria-labelledby="binhan-tab" tabindex="0">
        <div class="row justify-content-center g-2">
          <div class="col-10 d-flex  justify-content-center">
            <div class="col-5">
              <img src="${pageContext.request.contextPath}/img/home-slide-3-1536x880.jpg" alt="" class="w-100">
            </div>
            <div class="col-5">
              <div class="row" style="text-align: justify; margin-left: 5px;">
                <h3>Ga tàu thủy Bình An - Ngắm nhìn thành phố đổi mới</h3>
                <p>Kết nối 2 thành phố: TP. Thủ Đức - TP. HCM. Đây là nơi ngắm tòa nhà Landmark 81, kết nối Vinhome
                  Central Park, Tân Cảng, Chợ Thảo Điền và các điểm đến khác.</p>
              </div>
              <hr>
              <button class="border border-0 m-0 p-0 d-block"
                style="background-color: white; width: 350px; align-items: flex-end;">
                <i class="fa-solid fa-circle-plus iicon" style="display: inline-block;"></i>
                <strong style="display: inline-block; text-align: left;">Xem chi tiết <br>
                  và chỉ đường</strong>
              </button>
            </div>
          </div>
        </div>
      </div>
      <div class="tab-pane" id="thanhda" role="tabpanel" aria-labelledby="thanhda-tab" tabindex="0">
        <div class="row justify-content-center g-2">
          <div class="col-10 d-flex  justify-content-center">
            <div class="col-5">
              <img src="${pageContext.request.contextPath}/img/home-slide-6-1536x930.jpg" alt="" class="w-100">
            </div>
            <div class="col-5">
              <div class="row" style="text-align: justify; margin-left: 5px;">
                <h3>Ga tàu thủy Thanh Đa - Nhịp sống bình yên giữa lòng đô thị</h3>
                <p>Bán đảo Thanh Đa xanh mát, yên bình giữa lòng thành phố nhộn nhịp, sôi động. Dừng chân tại đây, đừng
                  quên thưởng thức Cháo Vịt Thanh Đa trứ danh, Phong Cua hay dạo chơi KDL Bình Quới.</p>
              </div>
              <hr>
              <button class="border border-0 m-0 p-0 d-block"
                style="background-color: white; width: 350px; align-items: flex-end;">
                <i class="fa-solid fa-circle-plus iicon" style="display: inline-block;"></i>
                <strong style="display: inline-block; text-align: left;">Xem chi tiết <br>
                  và chỉ đường</strong>
              </button>
            </div>
          </div>
        </div>
      </div>
      <div class="tab-pane" id="hiepbinhchanh" role="tabpanel" aria-labelledby="hiepbinhchanh-tab" tabindex="0">
        <div class="row justify-content-center g-2">
          <div class="col-10 d-flex  justify-content-center">
            <div class="col-5">
              <img src="${pageContext.request.contextPath}/img/home-slide-1-1536x880.jpg" alt="" class="w-100">
            </div>
            <div class="col-5">
              <div class="row" style="text-align: justify; margin-left: 5px;">
                <h3>Ga tàu thủy Hiệp Bình Chánh - Điểm hẹn của người Sài Gòn</h3>
                <p>Đúng với biệt danh “điểm hẹn của người Sài Gòn” Xung quanh ga tàu thủy Hiệp Bình Chánh rất nhiều nhà
                  hàng, dịch vụ vui chơi ăn uống mà tiêu biểu là Giga Mall.</p>
              </div>
              <hr>
              <button class="border border-0 m-0 p-0 d-block"
                style="background-color: white; width: 350px; align-items: flex-end;">
                <i class="fa-solid fa-circle-plus iicon" style="display: inline-block;"></i>
                <strong style="display: inline-block; text-align: left;">Xem chi tiết <br>
                  và chỉ đường</strong>
              </button>
            </div>
          </div>
        </div>
      </div>
      <div class="tab-pane" id="linhdong" role="tabpanel" aria-labelledby="linhdong-tab" tabindex="0">
        <div class="row justify-content-center g-2">
          <div class="col-10 d-flex  justify-content-center">
            <div class="col-5">
              <img src="${pageContext.request.contextPath}/img/home-slide-4-1536x880.jpg" alt="" class="w-100">
            </div>
            <div class="col-5">
              <div class="row" style="text-align: justify; margin-left: 5px;">
                <h3>Ga tàu thủy Linh Đông - Vi vu làng du lịch Bình Quới</h3>
                <p>Tại đây bạn sẽ cảm nhận cảm giác thanh mát mộc mạc của làng quê yên bình. Đặc biệt, cạnh Ga tàu thủy
                  Linh Đông có bến đò Bình Qưới để sang KDL Bình Quới 2.</p>
              </div>
              <hr>
              <button class="border border-0 m-0 p-0 d-block"
                style="background-color: white; width: 350px; align-items: flex-end;">
                <i class="fa-solid fa-circle-plus iicon" style="display: inline-block;"></i>
                <strong style="display: inline-block; text-align: left;">Xem chi tiết <br>
                  và chỉ đường</strong>
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="row justify-content-center align-items-center">
    <div class="col-10 d-flex align-items-center justify-content-center">
      <div class="col-5">
        <div class="row">
          <h3>Lịch trình</h3>
          <p>Các chuyến từ Bạch Đằng đến Linh Đông sẽ khởi hành lúc 8:30, 10:40, 14:30, 17:10.
            <br>
            Và từ Linh Đông về Bạch
            Đằng sẽ khởi hành lúc 9:40, 12:00, 15:40 và 18:15.
            <br>
            Các chuyến Bạch Đằng - Bình An (khứ hồi) sẽ khởi hành lúc
            17:00, 17:30, 18:00, 18:30, 19:00, 19:30, 20:00, 20:30, 21:00.
            <br>
            Thứ bảy, chủ nhật và các ngày lễ: bổ sung
            thêm giờ khởi hành lúc: 16:00, 16:30, 21:30.
          </p>
        </div>
        <hr>
        <button class="border border-0 m-0 p-0 d-block"
          style="background-color: white; width: 350px; align-items: flex-end;">
          <i class="fa-solid fa-circle-plus iicon" style="display: inline-block;"></i>
          <strong style="display: inline-block; text-align: left;">Xem chi tiết, <br>
            Lịch khởi hành!</strong>
        </button>
      </div>

      <div class="col-5">
        <img src="${pageContext.request.contextPath}/img/325469969_479843330780453_2536484999119177769_n-1-1536x1141.jpg" alt="" class="w-100"
          style="margin-left: 25px;">
      </div>
    </div>
  </div>

  <div class="image-container">
    <img src="${pageContext.request.contextPath}/img/home-slide-6-1.jpg" class="d-block w-100" alt="...">
    <div class="text-overlay">
      Hãy cùng khám phá vẻ đẹp sông Sài Gòn trên những chuyến tàu Water Bus
    </div>
  </div>


  <script src="https://kit.fontawesome.com/8a355c8929.js" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
    crossorigin="anonymous"></script>
</body>

</html>