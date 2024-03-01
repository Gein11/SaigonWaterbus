<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title></title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
body {
	color: #566787;
	background: #f5f5f5;
	font-family: 'Varela Round', sans-serif;
	font-size: 13px;
}
.table-responsive {
    margin: 30px 0;
    height: 800px;
    overflow-x:hidden; 
    overflow-y:auto;
}
thead th {
  position: sticky;
  top: 0;
}
.table-wrapper {
	background: #fff;
	padding: 20px 25px;
	border-radius: 3px;
	min-width: 1000px;
	box-shadow: 0 1px 1px rgba(0,0,0,.05);
}
.table-title {        
	padding-bottom: 15px;
	background: #435d7d;
	color: #fff;
	padding: 16px 30px;
	min-width: 100%;
	margin: -20px -25px 10px;
	border-radius: 3px 3px 0 0;
}
.table-title h2 {
	margin: 5px 0 0;
	font-size: 24px;
}
.table-title .btn-group {
	float: right;
}
.table-title .btn {
	color: #fff;
	float: right;
	font-size: 13px;
	border: none;
	min-width: 50px;
	border-radius: 2px;
	border: none;
	outline: none !important;
	margin-left: 10px;
}
.table-title .btn i {
	float: left;
	font-size: 21px;
	margin-right: 5px;
}
.table-title .btn span {
	float: left;
	margin-top: 2px;
}
table.table tr th, table.table tr td {
	border-color: #e9e9e9;
	padding: 12px 15px;
	vertical-align: middle;
}
table.table tr th:first-child {
	width: 60px;
}
table.table tr th:last-child {
	width: 100px;
}
table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #fcfcfc;
}
table.table-striped.table-hover tbody tr:hover {
	background: #f5f5f5;
}
table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}	
table.table td:last-child i {
	opacity: 0.9;
	font-size: 22px;
	margin: 0 5px;
}
table.table td a {
	font-weight: bold;
	color: #566787;
	display: inline-block;
	text-decoration: none;
	outline: none !important;
}
table.table td a:hover {
	color: #2196F3;
}
table.table td a.edit {
	color: #FFC107;
}
table.table td a.delete {
	color: #F44336;
}
table.table td i {
	font-size: 19px;
}
table.table .avatar {
	border-radius: 50%;
	vertical-align: middle;
	margin-right: 10px;
}
.pagination {
	float: right;
	margin: 0 0 5px;
}
.pagination li a {
	border: none;
	font-size: 13px;
	min-width: 30px;
	min-height: 30px;
	color: #999;
	margin: 0 2px;
	line-height: 30px;
	border-radius: 2px !important;
	text-align: center;
	padding: 0 6px;
}
.pagination li a:hover {
	color: #666;
}	
.pagination li.active a, .pagination li.active a.page-link {
	background: #03A9F4;
}
.pagination li.active a:hover {        
	background: #0397d6;
}
.pagination li.disabled i {
	color: #ccc;
}
.pagination li i {
	font-size: 16px;
	padding-top: 6px
}
.hint-text {
	float: left;
	margin-top: 10px;
	font-size: 13px;
}    
/* Custom checkbox */
.custom-checkbox {
	position: relative;
}
.custom-checkbox input[type="checkbox"] {    
	opacity: 0;
	position: absolute;
	margin: 5px 0 0 3px;
	z-index: 9;
}
.custom-checkbox label:before{
	width: 18px;
	height: 18px;
}
.custom-checkbox label:before {
	content: '';
	margin-right: 10px;
	display: inline-block;
	vertical-align: text-top;
	background: white;
	border: 1px solid #bbb;
	border-radius: 2px;
	box-sizing: border-box;
	z-index: 2;
}
.custom-checkbox input[type="checkbox"]:checked + label:after {
	content: '';
	position: absolute;
	left: 6px;
	top: 3px;
	width: 6px;
	height: 11px;
	border: solid #000;
	border-width: 0 3px 3px 0;
	transform: inherit;
	z-index: 3;
	transform: rotateZ(45deg);
}
.custom-checkbox input[type="checkbox"]:checked + label:before {
	border-color: #03A9F4;
	background: #03A9F4;
}
.custom-checkbox input[type="checkbox"]:checked + label:after {
	border-color: #fff;
}
.custom-checkbox input[type="checkbox"]:disabled + label:before {
	color: #b8b8b8;
	cursor: auto;
	box-shadow: none;
	background: #ddd;
}
/* Modal styles */
.modal .modal-dialog {
	max-width: 400px;
}
.modal .modal-header, .modal .modal-body, .modal .modal-footer {
	padding: 20px 30px;
}
.modal .modal-content {
	border-radius: 3px;
	font-size: 14px;
}
.modal .modal-footer {
	background: #ecf0f1;
	border-radius: 0 0 3px 3px;
}
.modal .modal-title {
	display: inline-block;
}
.modal .form-control {
	border-radius: 2px;
	box-shadow: none;
	border-color: #dddddd;
}
.modal textarea.form-control {
	resize: vertical;
}
.modal .btn {
	border-radius: 2px;
	min-width: 100px;
}	
.modal form label {
	font-weight: normal;
}	
</style>
<script type="text/javascript">
$(document).ready(function(){
    // Khi modal hiển thị
    $('#editEmployeeModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget); // Nút "Edit" được nhấn
        var idChuyen = button.attr('data-idChuyen'); // Sử dụng attr thay vì data
        var idTuyen = button.attr('data-idTuyen'); // Sử dụng attr thay vì data
        var idTaiXe = button.attr('data-idTaiXe'); // Sử dụng attr thay vì data
        var gioDi = button.attr('data-gioDi'); // Sử dụng attr thay vì data
        var gioDen = button.attr('data-gioDen'); // Sử dụng attr thay vì data
        var ngayKhoiHanh = button.attr('data-ngayKhoiHanh'); // Sử dụng attr thay vì data
        var gheTrong = button.attr('data-gheTrong'); // Sử dụng attr thay vì data
        var coDinh = button.attr('data-coDinh'); // Sử dụng attr thay vì data
        var status = button.attr('data-status'); // Sử dụng attr thay vì data
        console.log(idChuyen);
        
        // Điền giá trị vào form
        var form = $(this).find('form');
        form.find('#editidChuyen').val(idChuyen);
        form.find('#editidTuyen').val(idTuyen);
        form.find('#editidTaiXe').val(idTaiXe);
        form.find('#editgioDi').val(gioDi);
        form.find('#editgioDen').val(gioDen);
        form.find('#editngayKhoiHanh').val(ngayKhoiHanh);
        form.find('#editgheTrong').val(gheTrong);
        if (coDinh === 'false') {
            form.find('#editcoDinhPhatSinh').prop('checked', true);
            form.find('#editcoDinhCoDinh').prop('checked', false);
        } else {
            form.find('#editcoDinhPhatSinh').prop('checked', false);
            form.find('#editcoDinhCoDinh').prop('checked', true);
        }
        form.find('#editstatus').val(status);
        
    });
});

$(document).ready(function(){
    // Khi modal hiển thị
    $('#deleteEmployeeModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget); // Nút "Edit" được nhấn
        var idChuyen = button.attr('data-idChuyen'); // Sử dụng attr thay vì data
        var idTuyen = button.attr('data-idTuyen'); // Sử dụng attr thay vì data
        var idTaiXe = button.attr('data-idTaiXe'); // Sử dụng attr thay vì data
        var gioDi = button.attr('data-gioDi'); // Sử dụng attr thay vì data
        var gioDen = button.attr('data-gioDen'); // Sử dụng attr thay vì data
        var ngayKhoiHanh = button.attr('data-ngayKhoiHanh'); // Sử dụng attr thay vì data
        var gheTrong = button.attr('data-gheTrong'); // Sử dụng attr thay vì data
        var coDinh = button.attr('data-coDinh'); // Sử dụng attr thay vì data
        var status = button.attr('data-status'); // Sử dụng attr thay vì data
        console.log(idChuyen);
        
        // Điền giá trị vào form
        var form = $(this).find('form');
        form.find('#editidChuyen').val(idChuyen);
        form.find('#editidTuyen').val(idTuyen);
        form.find('#editidTaiXe').val(idTaiXe);
        form.find('#editgioDi').val(gioDi);
        form.find('#editgioDen').val(gioDen);
        form.find('#editngayKhoiHanh').val(ngayKhoiHanh);
        form.find('#editgheTrong').val(gheTrong);
        form.find('#editcoDinh').val(coDinh);
        form.find('#editstatus').val(status);

    });
});

$(document).ready(function(){
    // Khi modal hiển thị
    $('#veoffline').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget); // Nút "Edit" được nhấn
        var idChuyen = button.attr('data-idChuyen'); // Sử dụng attr thay vì data
        var idTuyen = button.attr('data-idTuyen'); // Sử dụng attr thay vì data
        var idTaiXe = button.attr('data-idTaiXe'); // Sử dụng attr thay vì data
        var gioDi = button.attr('data-gioDi'); // Sử dụng attr thay vì data
        var gioDen = button.attr('data-gioDen'); // Sử dụng attr thay vì data
        var ngayKhoiHanh = button.attr('data-ngayKhoiHanh'); // Sử dụng attr thay vì data
        var gheTrong = button.attr('data-gheTrong'); // Sử dụng attr thay vì data
        var coDinh = button.attr('data-coDinh'); // Sử dụng attr thay vì data
        var status = button.attr('data-status'); // Sử dụng attr thay vì data
        console.log(idChuyen);
        
        // Điền giá trị vào form
        var form = $(this).find('form');
        form.find('#editidChuyen').val(idChuyen);
        form.find('#editidTuyen').val(idTuyen);
        form.find('#editidTaiXe').val(idTaiXe);
        form.find('#editgioDi').val(gioDi);
        form.find('#editgioDen').val(gioDen);
        form.find('#editngayKhoiHanh').val(ngayKhoiHanh);
        form.find('#editgheTrong').val(gheTrong);
        form.find('#editcoDinh').val(coDinh);
        form.find('#editstatus').val(status);

    });
});
</script>
</head>
<body>


		<div class="table-wrapper">
			<div class="table-title">
			    <div class="row align-items-center" style="height: 50px">
			        <div class="col-sm-4">
			            <h2>QUẢN LÝ <b>CHUYẾN TÀU</b></h2>
			        </div>
			        <div class="col-sm-4">
			        <form action="/asm/tool/trip" method="get">
			        	<div class="input-group">
			                <input name="keyword" type="date" class="form-control">
			                <div class="input-group-append">
			                    <button class="btn btn-warning" type="submit"><i class="material-icons align-items-center ps-3">&#xE8B6;</i></button>
			                </div>
			            </div>
			        </form>
			            
			        </div>
			        <div class="col-sm-4 text-right">
			            <a href="#addEmployeeModal" class="btn btn-success p-2" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Thêm Chuyến</span></a>
			        </div>
			    </div>
			</div>
	<div class="table-responsive">
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>STT</th>
						<th>TÊN TUYẾN</th>
						<th>ID TÀI XẾ</th>
						<th>BIỂN SỐ TÀU</th>
						<th>GIỜ ĐI</th>
						<th>GIỜ ĐẾN</th>
						<th>NGÀY KHỞI HÀNH</th>
						<th>GHẾ TRỐNG</th>
						<th>CỐ ĐỊNH</th>
						<th>TRẠNG THÁI</th>
						<th>CHỈNH SỬA</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="chuyen" items="${listChuyen}"  varStatus="loop">
					<input hidden="hidden" value="chuyen.id" name="idChuyen">
						<tr>
							<td>${loop.index + 1}</td>
							<td>${chuyen.tuyen.tenTuyen}</td>
							<td>${chuyen.taiXe.hoTen}</td>
							<td>${chuyen.tuyen.tau.bienSoTau}</td>
							<td>${chuyen.gioDi}</td>
							<td>${chuyen.gioDen}</td>
							<td>${chuyen.ngayKhoiHanh}</td>
							<td>${chuyen.gheTrong}</td>
							<td>${chuyen.coDinh == true ? 'Chuyến cố định' : 'Chuyến phát sinh'}</td>
							<td>${chuyen.status == true ? 'Đã khởi hành' : 'Chưa khởi hành'}</td>
							<td>
							<a href="#editEmployeeModal" class="edit" data-toggle="modal"
									data-idChuyen="${chuyen.id}"
									data-idTuyen="${chuyen.tuyen.id}"
									data-idTaiXe="${chuyen.taiXe.id}"
									data-gioDi="${chuyen.gioDi}"
									data-gioDen="${chuyen.gioDen}"
									data-ngayKhoiHanh="${chuyen.ngayKhoiHanh}"
									data-gheTrong="${chuyen.gheTrong}"
									data-coDinh="${chuyen.coDinh}"
									data-status="${chuyen.status}">
										<i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i> </a>
								<c:choose>
					                <c:when test="${not empty chuyen.listVe}">
					                    <!-- Không hiển thị nút -->
					                </c:when>
					                <c:otherwise>
					                    <!-- Hiển thị nút "create ticket" -->
					                    <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"
					                        data-idChuyen="${chuyen.id}"
					                        data-idTuyen="${chuyen.tuyen.id}"
					                        data-idTaiXe="${chuyen.taiXe.id}"
					                        data-gioDi="${chuyen.gioDi}"
					                        data-gioDen="${chuyen.gioDen}"
					                        data-ngayKhoiHanh="${chuyen.ngayKhoiHanh}"
					                        data-gheTrong="${chuyen.gheTrong}"
					                        data-coDinh="${chuyen.coDinh}"
					                        data-status="${chuyen.status}">
					                        <i class="material-icons" data-toggle="tooltip" title="Create Ticket"><i class="fa fa-ticket"></i></i>
					                    </a>
					                </c:otherwise>
					            </c:choose>
							</td>
							<td>
								<a href="#veoffline" class="edit" data-toggle="modal"
									data-idChuyen="${chuyen.id}"
									data-idTuyen="${chuyen.tuyen.id}"
									data-idTaiXe="${chuyen.taiXe.id}"
									data-gioDi="${chuyen.gioDi}"
									data-gioDen="${chuyen.gioDen}"
									data-ngayKhoiHanh="${chuyen.ngayKhoiHanh}"
									data-gheTrong="${chuyen.gheTrong}"
									data-coDinh="${chuyen.coDinh}"
									data-status="${chuyen.status}"> Vé offline </a>
							</td>
						</tr>
					</c:forEach>					 
				</tbody>
			</table>
			
		</div>
	</div>        

<!-- Edit Modal HTML -->
<div id="addEmployeeModal" class="modal fade">
	<div class="modal-dialog ">
		<div class="modal-content p-3">
			<form:form modelAttribute="chuyen" action="/asm/add-trip" method="post" style="width: 85%">
				<div class="modal-header">						
					<h4 class="modal-title">THÊM MỚI TUYẾN TÀU</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="form-group">
						<label>TÊN TUYẾN</label>
					<!-- 	<form:input path="tuyen.id" type="text" class="form-control" required="required"/>-->
						 
						<form:select path="tuyen.id" class="form-control">
							<form:option value="Chọn tên tuyến"></form:option>
							<form:options items="${listTuyen}" itemLabel="tenTuyen" itemValue="id" class="form-control"/>
						</form:select> 
					</div>
					<div class="form-group">
						<label>TÀI XẾ</label>
						<form:select path="taiXe.id" class="form-control">
							<form:option value="Chọn tài xế"></form:option>
							<form:options items="${listTaiXe}" itemLabel="hoTen" itemValue="id" class="form-control"/>
						</form:select>
					</div>
					<div class="form-group">
						<label>NGÀY KHỞI HÀNH</label>
						<form:input path="ngayKhoiHanh" type="date" class="form-control" required="required"/>
					</div>
					<div class="form-group">
						<label>GIỜ ĐI</label>
						<form:input path="gioDi" type="time" class="form-control" required="required"/>
					</div>	
					<div class="form-group">
						<label>GIỜ ĐẾN</label>
						<form:input path="gioDen" type="time" class="form-control" required="required"/>
					</div>	
					<div class="form-group">
						<label>GHẾ TRỐNG</label>
						<form:input path="gheTrong" type="text" class="form-control" required="required"/>
					</div>	
					<div class="form-group">
						<label class="me-2">CHUYẾN</label>
				        <form:radiobutton path="coDinh" checked="checked" value="false" label="Phát sinh"/>
				        <form:radiobutton path="coDinh" value="true" label="Cố định"/>
					</div>	
					<div class="form-group">
						<label class="me-2">TRẠNG THÁI</label>
				        <form:radiobutton path="status" checked="true" value="false" label="Chưa khởi hành"/>
					</div>					
				</div>
				<div class="modal-footer" style="background-color: white;">
					<input type="button" class="btn btn-light" data-dismiss="modal" value="Đóng" >
					<input type="submit" class="btn btn-success" value="Thêm">
				</div>
			</form:form>
		</div>
	</div>
</div>
<!-- Edit Modal HTML -->
<div id="editEmployeeModal" class="modal fade">
	<div class="modal-dialog ">
		<div class="modal-content p-3">
			<form:form modelAttribute="chuyen" action="/asm/update-trip" method="post" style="width: 85%">
				<div class="modal-header">						
					<h4 class="modal-title">CẬP NHẬT TUYẾN TÀU</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<form:hidden path="id" id="editidChuyen" name="editidChuyen" class="form-control" />
					</div>					
					<div class="form-group">
						<label>TÊN TUYẾN</label>
						<form:select path="tuyen.id" id="editidTuyen" name="editidTuyen" class="form-control">
							<form:option value="Chọn tên tuyến"></form:option>
							<form:options items="${listTuyen}" itemLabel="tenTuyen" itemValue="id" class="form-control"/>
						</form:select> 
					</div>
					<div class="form-group">
						<label>TÀI XẾ</label>
						<form:select path="taiXe.id" class="form-control" name="editidTaiXe" id="editidTaiXe">
							<form:option value="Chọn tài xế"></form:option>
							<form:options items="${listTaiXe}" itemLabel="hoTen" itemValue="id" class="form-control"/>
						</form:select>
					</div>
					<div class="form-group">
						<label>NGÀY KHỞI HÀNH</label>
						<form:input path="ngayKhoiHanh" id="editngayKhoiHanh" name="editngayKhoiHanh" type="date" class="form-control" required="required"/>
					</div>
					<div class="form-group">
						<label>GIỜ ĐI</label>
						<form:input path="gioDi" id="editgioDi" name="editgioDi" type="time" class="form-control" required="required"/>
					</div>	
					<div class="form-group">
						<label>GIỜ ĐẾN</label>
						<form:input path="gioDen" id="editgioDen" name="editgioDen" type="time" class="form-control" required="required"/>
					</div>	
					<div class="form-group">
						<label>GHẾ TRỐNG</label>
						<form:input path="gheTrong" id="editgheTrong" name="editgheTrong" type="text" class="form-control" required="required"/>
					</div>	
					<div class="form-group">
						<label class="me-2">CHUYẾN</label>
				        <form:radiobutton path="coDinh" id="editcoDinhPhatSinh" name="editcoDinhPhatSinh" value="false" label="Phát sinh"/>
				        <form:radiobutton path="coDinh" id="editcoDinhCoDinh" name="editcoDinhCoDinh" value="true" label="Cố định"/>
					</div>	
					<div class="form-group">
						<label class="me-2">TRẠNG THÁI</label>
				        <form:radiobutton path="status" checked="true" value="false" label="Chưa khởi hành"/>
					</div>					
				</div>
				<div class="modal-footer" style="background-color: white;">
					<input type="button" class="btn btn-light" data-dismiss="modal" value="Đóng" >
					<input type="submit" class="btn btn-success" value="CẬP NHẬT">
				</div>
			</form:form>
		</div>
	</div>
</div>
<!-- Delete Modal HTML -->
<div id="deleteEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content p-3">
			<form:form modelAttribute="chuyen" action="/asm/create-ticket" method="post" style="width: 85%">
				<div class="modal-header">						
					<h4 class="modal-title">TẠO VÉ TỰ ĐỘNG</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<p>BẠN MUỐN TẠO <b>TẤT CẢ CÁC VÉ</b> CHO CHUYẾN TÀU NÀY?</p>
					<div class="form-group">
						<label>ID CHUYẾN</label>
					    <form:input path="id" id="editidChuyen" name="editidChuyen" class="form-control" disabled="true"/>
					    <form:hidden path="id" id="editidChuyen" name="editidChuyen" />
					</div>
					<div class="form-group">
					    <label>GIÁ VÉ</label>
					    <div class="input-group mb-3">
					        <input name="giaVe" id="giaVeInput" type="text" class="form-control" required="required" aria-describedby="basic-addon2">
					        <div class="input-group-append">
					            <span class="input-group-text" id="basic-addon2">VND</span>
					        </div>
					    </div>
					</div>
				</div>
				<div class="modal-footer" style="background-color: white;">
					<input type="button" class="btn btn-light" data-dismiss="modal" value="ĐÓNG" >
					<input type="submit" class="btn btn-danger" value="TẠO VÉ">
				</div>
			</form:form>
		</div>
	</div>
</div>
<!-- Edit Modal HTML -->
<div id="veoffline" class="modal fade">
	<div class="modal-dialog ">
		<div class="modal-content p-3">
			<form:form modelAttribute="chuyen" action="/asm/create-offline-ticket" method="post" style="width: 85%">
				<div class="modal-header">						
					<h4 class="modal-title">HÓA ĐƠN VÉ OFFLINE</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">	
					<div class="form-group">
						<form:hidden path="id" id="editidChuyen" name="editidChuyen" class="form-control" />
						<input hidden="true" id="editidChuyen" name="editidChuyen">
					</div>				
					<div class="form-group">
						<label>TÊN TUYẾN</label>
						<form:select path="tuyen.id" id="editidTuyen" name="editidTuyen" class="form-control" disabled="true">
							<form:option value="Chọn tên tuyến"></form:option>
							<form:options items="${listTuyen}" itemLabel="tenTuyen" itemValue="id" class="form-control"/>
						</form:select> 
					</div>
					<div class="form-group">
						<label>TÀI XẾ</label>
						<form:select path="taiXe.id" class="form-control" name="editidTaiXe" id="editidTaiXe" disabled="true">
							<form:option value="Chọn tài xế"></form:option>
							<form:options items="${listTaiXe}" itemLabel="hoTen" itemValue="id" class="form-control"/>
						</form:select>
					</div>
					<div class="form-group">
						<label>NGÀY KHỞI HÀNH</label>
						<form:input path="ngayKhoiHanh" id="editngayKhoiHanh" name="editngayKhoiHanh" type="date" class="form-control" required="required" disabled="true"/>
					</div>
					<div class="form-group">
						<label>GIỜ ĐI</label>
						<form:input path="gioDi" id="editgioDi" name="editgioDi" type="time" class="form-control" required="required" disabled="true"/>
					</div>	
					<div class="form-group">
						<label>GIỜ ĐẾN</label>
						<form:input path="gioDen" id="editgioDen" name="editgioDen" type="time" class="form-control" required="required" disabled="true"/>
					</div>
					<div class="form-group">
						<label>SỐ VÉ BÁN ĐƯỢC</label>
						<input type="text" name="soLuong" class="form-control" required="required" />
					</div>
					<div class="form-group">
						<label>ĐƠN GIÁ</label>
						<input type="text" name="donGia" class="form-control" required="required"/>
					</div>
					<div class="form-group">
						<label>THÀNH TIỀN</label>
						<input type="text" name="thanhTien" class="form-control" required="required" disabled="true"/>
					</div>	
									
				</div>
				<div class="modal-footer" style="background-color: white;">
					<input type="button" class="btn btn-light" data-dismiss="modal" value="Đóng" >
					<input type="submit" class="btn btn-success" value="Tạo hóa đơn">
				</div>
			</form:form>
		</div>
	</div>
</div>

</body>
</html>