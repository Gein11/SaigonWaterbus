<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SAIGON WATERBUS</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
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
    width: 150px;
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

.titlee {
    
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
    
    <script>
	    function submitBookingForm() {
	        var selectedSeats = [];
	        $('input[type=checkbox]:checked').each(function() {
	            selectedSeats.push($(this).attr('id').replace('ve_', ''));
	        });
	        $('#bookingForm').append('<input type="hidden" name="selectedSeats" value="' + selectedSeats.join(',') + '">');
	        $('#bookingForm').submit();
	    }
	    
	    
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
	</script>
</head>
<body>
    <!-- Menu -->
    <nav class="navbar sticky-top navbar-expand-lg fs-6" data-bs-theme="light" >
        <div class="container-fluid">
            <a class="navbar-brand active fs-4" href="/asm/saigonwaterbus">
                <img src="${pageContext.request.contextPath}/img/logo.png" alt="Bootstrap" class="logo">
            </a>
       
          <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/asm/saigonwaterbus">
                        <s:message code="lo.mn.homePage"/>
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link" href="">
                        <s:message code="lo.mn.trainStation"/>
                    </a>
                    <ul class="dropdown-menu">
                      <li><a class="dropdown-item" href="/asm/saigonwaterbus/ga-tau-thuy-bach-dang"> <span class="icon"><i class="fa-solid fa-plus"></i></span> Bạch Đằng</a></li>
                      <li><a class="dropdown-item" href="/asm/saigonwaterbus/ga-tau-thuy-binh-an"> <span class="icon"><i class="fa-solid fa-plus"></i></span> Bình An</a></li>
                      <li><a class="dropdown-item" href="/asm/saigonwaterbus/ga-tau-thuy-thanh-da"> <span class="icon"><i class="fa-solid fa-plus"></i></span> Thanh Đa</a></li>
                      <li><a class="dropdown-item" href="/asm/saigonwaterbus/ga-tau-thuy-hiep-binh-chanh"> <span class="icon"><i class="fa-solid fa-plus"></i></span> Hiệp Bình Chánh</a></li>
                      <li><a class="dropdown-item" href="/asm/saigonwaterbus/ga-tau-thuy-linh-dong"> <span class="icon"><i class="fa-solid fa-plus"></i></span> Linh Đông</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/asm/saigonwaterbus/lich-khoi-hanh">
                        <s:message code="lo.mn.departureSchedule"/>
                    </a>
                </li>
                
                <li class="nav-item dropdown">
                    <a class="nav-link" href="#">
                        <s:message code="lo.mn.bookTickets"/> 
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/asm/saigonwaterbus/tim-ve"> <span class="icon"><i class="fa-solid fa-plus"></i></span> <s:message code="lo.mn.findTickets"/></a></li>
                        <li><a class="dropdown-item" href="/asm/saigonwaterbus/kiem-tra-ve"> <span class="icon"><i class="fa-solid fa-plus"></i></span> <s:message code="lo.mn.checkTickets"/></a></li>
                      </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/asm/saigonwaterbus/lien-he">
                        <s:message code="lo.mn.contact"/>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="fa-solid fa-language"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item active" href="?lang=vi">Tiếng Việt</a></li>
                        <li><a class="dropdown-item" href="?lang=en">Tiếng Anh</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="fa-regular fa-address-card"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/asm/saigonwaterbus/profile"><s:message code="lo.mn.personalInformation"/></a></li>
                        <li><a class="dropdown-item" href="/asm/saigonwaterbus/lichsudatve"><s:message code="lo.mn.ticketHistory"/></a></li>
                        <li><a class="dropdown-item" href="/asm/logout"><s:message code="lo.mn.logout"/></a></li>
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
            <img src="${pageContext.request.contextPath}/img/logo_footer.png" alt="" class="img_footer">
            <div class="nav_menu">
                <h5 class="titlee"><s:message code="lo.mn.information"/></h5>
                <ul class="list">
                    <li><a class="menu_item" href=""><s:message code="lo.mn.introduction"/></a></li>
                    <li><a class="menu_item" href=""><s:message code="lo.mn.partners"/></a></li>
                    <li><a class="menu_item" href=""><s:message code="lo.mn.recruitment"/></a></li>
                    <li><a class="menu_item" href=""><s:message code="lo.mn.internalOperations"/></a></li>
                </ul>
            </div>
            <div class="nav_menu">
                <h5 class="titlee"><s:message code="lo.mn.service"/></h5>
                <ul class="list">
                    <li><a class="menu_item" href="">Water Bus</a></li>
                    <li><a class="menu_item" href="">Water Taxi</a></li>
                    <li><a class="menu_item" href="">Water Biz Coffee</a></li>
                    <li><a class="menu_item" href="">Waterbus Souvenirs</a></li>
                </ul>
            </div>
            <div class="nav_menu">
                <h5 class="titlee"><s:message code="lo.mn.contactLi"/></h5>
                <ul class="list">
                    <li><a class="menu_item" href=""><s:message code="lo.mn.mainOffice"/></a></li>
                    <li><a class="menu_item" href=""><s:message code="lo.mn.bankingCooperation"/></a></li>
                    <li><a class="menu_item" href=""><s:message code="lo.mn.frequentlyAskedQuestions"/></a></li>
                </ul>
            </div>
            <div class="nav_menu">
                <h5 class="titlee"><s:message code="lo.mn.policy"/></h5>
                <ul class="list">
                    <li><a class="menu_item" href=""><s:message code="lo.mn.generalPoliciesRegulations"/></a></li>
                    <li><a class="menu_item" href=""><s:message code="lo.mn.termsofUse"/></a></li>
                    <li><a class="menu_item" href=""><s:message code="lo.mn.PrivacyPolicy"/></a></li>
                </ul>
                <img src="${pageContext.request.contextPath}/img/da-thong-bao-bct.png" alt="" width="150" height="57">
            </div>
       </div>
       <div class="copyright" style="text-align: center; color: #979797;">
            <p>©<s:message code="lo.mn.copyright"/>
               <br>
                <s:message code="lo.mn.address"/></p>
       </div>
    </footer>

    <script src="https://kit.fontawesome.com/8a355c8929.js" crossorigin="anonymous"></script>
   	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>