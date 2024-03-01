<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông tin cá nhân</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
    </script><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"><link type="text/css" rel="stylesheet" href="cartcss.css">
    <script src="https://kit.fontawesome.com/d49588c4a5.js"
    crossorigin="anonymous"></script>
</head>

<body>
<%-- Script JavaScript để ẩn thông báo sau 5 giây --%>
<script type="text/javascript">
    setTimeout(function(){
        document.getElementById('messageDiv').style.display = 'none';
    }, 5000); // 5000 milliseconds = 5 giây
</script>
<div class="container mt-5">
<%-- Kiểm tra nếu có thông báo từ URL --%>
<c:choose>
    <c:when test="${param.mess eq 'oke'}">
        <div id="messageDiv" class="success-message">
            <h3>Cập nhật thành công</h3>
        </div>
    </c:when>
    <c:when test="${param.mess eq 'error'}">
        <div id="messageDiv" class="error-message">
            <h3>Cập nhật thất bại</h3>
        </div>
    </c:when>
</c:choose>

    <div class="card">
        <div class="card-header">
            User Profile
        </div>
        <div class="card-body">
            <!-- Button trigger modal -->

            <div class="mb-3">
                <label for="hoTen" class="form-label">Full Name:</label>
                <input type="text" class="form-control" id="hoTen" value="${user.hoTen}" disabled>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email: </label>
                <input type="email" class="form-control" id="email" value="${user.email}" disabled>
            </div>
            <div class="mb-3">
                <label for="sodt" class="form-label">Phone Number:</label>
                <input type="text" class="form-control" id="sodtProfile" value="${user.sodt}" disabled>
            </div>
            <div class="mb-3">
                <label for="diaChi" class="form-label">Address:</label>
                <input type="text" class="form-control" id="diaChi" value="${user.diaChi}" disabled>
            </div>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#updateModal">
                Cập nhật thông tin tài khoản
            </button>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="updateModal" tabindex="-1" aria-labelledby="updateModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="updateModalLabel">Update Profile</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div  class="modal-body">
<form:form action="/asm/updateprofile" modelAttribute="user" id="updateForm" method="post">
    <div class="mb-3">
        <label for="hoTen" class="form-label">Full Name:</label>
<form:input path="hoTen" id="hoTenUpdate" class="form-control" value="${user.hoTen}" />
    </div>
    <div class="mb-3">
        <label for="email" class="form-label">Email:</label>
<form:input path="email" id="emailUpdate" class="form-control" value="${user.email}" readonly="readonly"/>
    </div>
    <div class="mb-3">
        <label for="sdt" class="form-label">Phone Number:</label>
        <form:input path="sodt" id="sdtUpdate" class="form-control"  oninput="enableButton()" />
        <input type="text" class="form-control mt-3" id="codeSdt" placeholder="nhập mã xác thực" name ="codeSDT">
        <button  formaction="/asm/sendsms" class="form-control mt-3" id="confirmBtn">Lấy mã xác thực</button>
        <h5 id="timecount"></h5>
    </div>
    <div class="mb-3">
        <label for="diaChi" class="form-label">Address:</label>
        <form:input path="diaChi" id="diaChiUpdate" class="form-control" value="${user.diaChi}" />
    </div>
                                <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" form="updateForm" class="btn btn-primary">Save changes</button>
            </div>
</form:form>


         
            </div>
   </div>
       
    </div>
</div>


<script>
var userAuthSdt = ${user.authSdt};
var sodtInput = document.getElementById("sodtUpdate");
var pattern = /^(0\d{9})$/;
var confirmBtn = document.getElementById("confirmBtn");
var timecount = document.getElementById("timecount");
var countdownExpired = true;

			function enableButton() {
			    var sodtValue = sodtInput.value.trim();
			
			    if (userAuthSdt || !pattern.test(sodtValue)) {
			        confirmBtn.disabled = true;
			    } else {
			        confirmBtn.disabled = false;
			    }
			}
			
			document.getElementById("confirmBtn").addEventListener("click", function(event) {
			    event.preventDefault(); 
			    
			    var sodtValue = document.getElementById("sodtUpdate").value;
			    var xhr = new XMLHttpRequest();
			
			    xhr.onreadystatechange = function() {
			        if (xhr.readyState === 4) {
			            if (xhr.status === 200) {
			                var response = JSON.parse(xhr.responseText);
			                alert("Gửi mã xác thực thực"); // Hiển thị thông điệp từ máy chủ
			            } else {
			                alert("Gửi mã xác thực thất bại");
			            }
			        }
			    };
			    xhr.open("POST","/asm/sendsms", true);
			
			    xhr.send("sdt=" + sodtValue); 
			});



window.onload = function() {
    enableButton();
};

function startCountdown() {
    var count = 20; 

    var countdownInterval = setInterval(function() {
        if (count <= 0) {
            timecount.innerText = " "; 

            clearInterval(countdownInterval);
            countdownExpired = true;
            enableButton(); 
        } else {
timecount.innerText = "Lấy lại mã sau: " + count + " giây"; 
            count--;
        }
    }, 1000); 
}

</script>

</html>