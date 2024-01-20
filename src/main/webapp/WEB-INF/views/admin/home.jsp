<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Document</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link type="text/css" rel="stylesheet" href="cartcss.css">
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/d49588c4a5.js" crossorigin="anonymous"></script>
    <style>
        * {
            padding: 0px!important;
            margin: 0 auto!important;
        }

        a {
            text-decoration: none;
        }

        html, body {
            height: 100%;
            width: 100%;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }

        .header label {
            font-family: 'cursive';
            font-size: 25px;
            font-weight: bold;
            color: #4CAF50;
            transition: color 0.3s ease;
        }

        .header label:hover {
            color: #FFD700;
        }

        .circle-container {
            text-align: center;
        }

        .circle-image {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            overflow: hidden;
            border: 5px solid white;
            margin: 0 auto;
        }

        #firstcol {
            background-color: rgb(108, 117, 125)!important;
        }

        .dropdown-toggle {
            float: right;
        }

        .dropdown-menu {
            width: 100%!important;
        }

        .btn-group {
            height: 50px;
            width: 218px;
        }

        @keyframes marquee {
            0% { transform: translateX(100%); }
            100% { transform: translateX(-100%); }
        }

        .marquee-container {
            overflow: hidden;
            white-space: nowrap;
            display: flex;
            align-items: center;
            height: 45px;
        }

        .marquee-text {
            display: inline-block;
            animation: marquee 10s linear infinite;
        }
        
        
            .vh-25 {
        height: 25vh;
    }

    .vh-50 {
        height: 50vh;
    }
        .vh-60 {
        height: 60vh;
    }
        .vh-40 {
        height: 40vh;
    }
        .vh-20 {
        height: 20vh;
    }
    

    .vh-75 {
        height: 75vh;
    }

    .vh-15 {
        height: 15vh;
    }
        .vh-10 {
        height: 10vh;
    }
    

    .dropdown-toggle {
        position: relative;
    }

    .dropdown-toggle::after {
        font-family: 'FontAwesome'; /* Sử dụng font awesome hoặc font icon khác */
        position: absolute;
        right: 0;
        top: 50%;
        transform: translateY(-50%);
    }

    </style>
</head>
<body>
    <div class="container-fluid p-0">
        <div class="header" style="height: 45px;">
            <div class="Main">
                <div class="row">
                    <div class="col-2">
                       <a href="/asm/index"> <label class=" float-start">SaiGon Waterbus</label></a>
                    </div>
                    <div class="col-9 marquee-container">
                        <p class="marquee-text" id="marqueeText">Chào mừng ADMIN đến với trang quản trị!</p>
                    </div>
                    <div class="col-1 d-flex " style="align-items: center;">
                        <i class="fa-solid fa-envelope"></i>
                        <i class="fa-solid fa-user"></i>
                        Anhvinh
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2 " id="firstcol">
                <div class="inforAd p-0 vh-20">
                    <div class="container mt-3">
                        <div class="circle-container">
                            <div class="circle-image">
                                <img src="/asm/img/admin/387803680_3546688608943806_6360662395901972785_n.jpg" alt="Profile Image" class="img-fluid">
                            </div>
                            <div class="mt-3">
                                <strong><p>Welcome back AVINH !</p></strong>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="method vh-60">
 
			
                    <div class="btn-group w-100">
      
             				       
                        <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                           Ticket Action  
                        </button> 
             	
                        <ul class="dropdown-menu dropdown-menu-end text-center">
<!--                             <li><a href="/asm/tool/add"><button class="dropdown-item" type="button">Add ticket</button></a></li>
                            <li><a href="/asm/tool/update"><button class="dropdown-item" type="button">Update</button></a></li>
                            <li> <a href="/asm/tool/delete"> <button class="dropdown-item" type="button">Delete</button></a></li> -->
                            <li> <a href="/asm/tool/booked"> <button class="dropdown-item" type="button">Tickets booked</button></a></li>
                            <li><a href="/asm/tool/tools"><button class="dropdown-item" type="button">Tools</button></a></li>
                        </ul>
                    </div>

                   <div class="btn-group    w-100">
                        <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                            Account action
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end text-center">
                            <li><button class="dropdown-item  " type="button">Add</button></li>
                            <li><button class="dropdown-item" type="button">Update</button></li>
                            <li><button class="dropdown-item" type="button">Delete</button></li>
                            <li><button class="dropdown-item" type="button">Tool</button></li>
                            
                        </ul>
                    </div>
                    
                    
                         <div class="btn-group    w-100">
                        <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                            Boat trip Action
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end text-center">
                            <li><button class="dropdown-item  " type="button">Add</button></li>
                            <li><button class="dropdown-item" type="button">Update</button></li>
                            <li><button class="dropdown-item" type="button">Delete</button></li>
                              <li><button class="dropdown-item" type="button">Tool</button></li>
                            
                        </ul>
                    </div>
                
                    <div class="btn-group    w-100">
                        <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                            Ship routes Action
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end text-center">
                                                  <li>  <a href="/asm/tool/addroute"><button class="dropdown-item  " type="button">Add</button></a></li>
                      
                            <li><button class="dropdown-item" type="button">Update</button></li>
                        </ul>
                    </div>
                
                                
                     <div class="btn-group    w-100">
                        <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                            Driver Action
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end text-center">
                            <li><button class="dropdown-item  " type="button">Add</button></li>
                            <li><button class="dropdown-item" type="button">Update</button></li>
                            <li><button class="dropdown-item" type="button">Delete</button></li>
                            <li><button class="dropdown-item" type="button">Tool</button></li>
                            
                        </ul>
                    </div>
                    
                        <div class="btn-group    w-100">
                        <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                            Ship action
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end text-center">
                            <li><button class="dropdown-item  " type="button">Add</button></li>
                            <li><button class="dropdown-item" type="button">Update</button></li>
                            <li><button class="dropdown-item" type="button">Delete</button></li>
                            <li><button class="dropdown-item" type="button">Tool</button></li>
                            
                        </ul>
                    </div>
                    
                    
                         <div class="btn-group  w-100">
                        <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                            Bill Action
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end text-center">
                            <li><button class="dropdown-item  " type="button">Add</button></li>
                            <li><button class="dropdown-item" type="button">Update</button></li>
                            <li><button class="dropdown-item" type="button">Delete</button></li>
                              <li><button class="dropdown-item" type="button">Tool</button></li>
                            
                        </ul>
                    </div>
                    
                    
                    <div class="btn-group    w-100">
                        <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                            Ship action
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end text-center">
                            <li><button class="dropdown-item  " type="button">Add</button></li>
                            <li><button class="dropdown-item" type="button">Update</button></li>
                            <li><button class="dropdown-item" type="button">Delete</button></li>
                            <li><button class="dropdown-item" type="button">Tool</button></li>
                            
                        </ul>
                    </div>
                    
                    
                         <div class="btn-group  w-100">
                        <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                            Boat trip Action(Chuyến tàu)
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end text-center">
                            <li><button class="dropdown-item  " type="button">Add</button></li>
                            <li><button class="dropdown-item" type="button">Update</button></li>
                            <li><button class="dropdown-item" type="button">Delete</button></li>
                              <li><button class="dropdown-item" type="button">Tool</button></li>
                            
                        </ul>
                    </div>
                    
                    
                </div>
                
                
                
                	<hr style="font-size:large;font-weight: bold;">
                <div class="vh-20">
                    <img src="/asm/img/admin/logo.png" alt="" class="img-fluid">
                                        <footer>Version 1.0</footer>
                    
                </div>

            </div>
			<div class="col-md-10 d-flex justify-content-center">
			    <div class="w-75 mx-auto" style="margin-left: 120px!important;">
			        <jsp:include page="${viewad}"></jsp:include>
			    </div>
			</div>

        </div>
    </div>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Số lần chạy marquee
        var runCount = 0;

        // Hàm chạy marquee
        function runMarquee() {
            var marqueeTextElement = document.getElementById('marqueeText');
            if (marqueeTextElement) {
                marqueeTextElement.style.animation = 'marquee 10s linear'; // Chạy animation
            }

            // Tăng số lần chạy
            runCount++;

            if (runCount >= 3) {
                // Dừng interval
                if (marqueeTextElement) {
                    marqueeTextElement.style.animation = 'none'; // Tắt animation
                }
                setTimeout(function () {
                    if (marqueeTextElement) {
                        marqueeTextElement.textContent = ''; // Đặt lại nội dung
                    }
                }, 1000); // Chờ 1 giây trước khi đặt lại nội dung
            }
        }

        runMarquee();
    });
</script>

</body>
</html>
