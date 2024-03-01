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
        var hoTen = button.attr('data-hoTen'); // Sử dụng attr thay vì data
        var idTaiXe = button.attr('data-idTaiXe'); // Sử dụng attr thay vì data
        var soDT = button.attr('data-soDT'); // Sử dụng attr thay vì data
        var diaChi = button.attr('data-diaChi'); // Sử dụng attr thay vì data
        var status = button.attr('data-status'); // Sử dụng attr thay vì data
        console.log(idTaiXe);
        
        // Điền giá trị vào form
        var form = $(this).find('form');
        form.find('#editidTaiXe').val(idTaiXe);
        form.find('#edithoTen').val(hoTen);
        form.find('#editsoDT').val(soDT);
        form.find('#editdiaChi').val(diaChi);
        form.find('#editstatus').val(status);

     /*    form.find('[name="editStatus"]').prop('checked', false); // Uncheck tất cả các radio button trước
        form.find('[name="editStatus"][value="' + status + '"]').prop('checked', true); // Check radio button theo giá trị từ data-status */
    });
});

$(document).ready(function(){
    // Khi modal hiển thị
    $('#deleteEmployeeModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget); // Nút "Edit" được nhấn
        var hoTen = button.attr('data-hoTen'); // Sử dụng attr thay vì data
        var idTaiXe = button.attr('data-idTaiXe'); // Sử dụng attr thay vì data
        var soDT = button.attr('data-soDT'); // Sử dụng attr thay vì data
        var diaChi = button.attr('data-diaChi'); // Sử dụng attr thay vì data
        var status = button.attr('data-status'); // Sử dụng attr thay vì data
        console.log(idTaiXe);
        
        // Điền giá trị vào form
        var form = $(this).find('form');
        form.find('#editidTaiXe').val(idTaiXe);
        form.find('#edithoTen').val(hoTen);
        form.find('#editsoDT').val(soDT);
        form.find('#editdiaChi').val(diaChi);
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
			            <h2>QUẢN LÝ <b>TÀI XẾ</b></h2>
			        </div>
			        <div class="col-sm-4">
			        <form action="/asm/tool/driver" method="get">
			        	<div class="input-group">
			                <input name="keyword" type="text" class="form-control" placeholder="Tìm kiếm theo TÊN hoặc SỐ ĐIỆN THOẠI">
			                <div class="input-group-append">
			                    <button class="btn btn-warning" type="submit"><i class="material-icons align-items-center ps-3">&#xE8B6;</i></button>
			                </div>
			            </div>
			        </form>
			            
			        </div>
			        <div class="col-sm-4 text-right">
			            <a href="#addEmployeeModal" class="btn btn-success p-2" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Thêm Tài Xế</span></a>
			        </div>
			    </div>
			</div>
	<div class="table-responsive">
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>STT</th>
						<th>HỌ TÊN</th>
						<th>SỐ ĐIỆN THOẠI</th>
						<th>ĐỊA CHỈ</th>
						<th>TRẠNG THÁI</th>
						<th>CHỈNH SỬA</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="taiXe" items="${listTaiXe}" varStatus="loop">
						<tr>
							<td>${loop.index + 1}</td>
							<td>${taiXe.hoTen}</td>
							<td>${taiXe.soDT}</td>
							<td>${taiXe.diaChi}</td>
							<td>${taiXe.status == true ? 'Đi làm' : 'Nghỉ làm'}</td>
							<td>
							<a href="#editEmployeeModal" class="edit" data-toggle="modal"
									data-idTaiXe="${taiXe.id}" data-hoTen="${taiXe.hoTen}"
									data-soDT="${taiXe.soDT}" data-diaChi="${taiXe.diaChi}" data-status="${taiXe.status}">
										<i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i> </a>
								<a href="#deleteEmployeeModal" data-idTaiXe="${taiXe.id}" data-hoTen="${taiXe.hoTen}"
									data-soDT="${taiXe.soDT}" data-diaChi="${taiXe.diaChi}" data-status="${taiXe.status}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
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
			<form:form modelAttribute="taiXe" action="/asm/add-driver" method="post" style="width: 85%">
				<div class="modal-header">						
					<h4 class="modal-title">THÊM MỚI TÀI XẾ</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="form-group">
						<label>HỌ TÊN</label>
						<form:input path="hoTen" type="text" class="form-control" required="required"/>
					</div>
					<div class="form-group">
						<label>SỐ ĐIỆN THOẠI</label>
						<form:input path="soDT" type="text" class="form-control" required="required"/>
					</div>
					<div class="form-group">
						<label>ĐỊA CHỈ</label>
						<form:textarea path="diaChi" class="form-control" required="required"/>
					</div>
					<div class="form-group">
						<label class="me-2">STATUS</label>
				        <form:radiobutton path="status" id="status1" value="1" label="Đi làm"/>
				        <form:radiobutton path="status" id="status0" value="0" label="Nghỉ làm"/>
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
			<form:form modelAttribute="taiXe" action="/asm/update-driver" method="post" style="width: 85%">
				<div class="modal-header">						
					<h4 class="modal-title">CẬP NHẬT TÀI XẾ</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<form:hidden path="id" id="editidTaiXe" name="editidTaiXe" class="form-control" />
					</div>					
					<div class="form-group">
						<label>HỌ TÊN</label>
						<form:input path="hoTen" id="edithoTen" name="edithoTen" type="text" class="form-control" required="required"/>
					</div>
					<div class="form-group">
						<label>SỐ ĐIỆN THOẠI</label>
						<form:input path="soDT"  id="editsoDT" name="editsoDT" value="${taiXe.soDT}" type="text" class="form-control" required="required"/>
					</div>
					<div class="form-group">
						<label>ĐỊA CHỈ</label>
						<form:textarea path="diaChi" id="editdiaChi" name="editdiaChi" value="${taiXe.diaChi}" class="form-control" required="required"/>
					</div>
					<div class="form-group">
						<label class="me-2">STATUS</label>
				        <form:radiobutton path="status" checked="true" id="status1" value="true" label="Đi làm"/>
				        <form:radiobutton path="status"  id="status0" value="false" label="Nghỉ làm"/>
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
			<form:form modelAttribute="taiXe" action="/asm/delete-driver" method="post" style="width: 85%">
				<div class="modal-header">						
					<h4 class="modal-title">TÌNH TRẠNG TÀI XẾ</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<p>BẠN MUỐN CHỈNH SỬA TRẠNG THÁI CỦA TÀI XẾ TỪ <b>"ĐI LÀM"</b> THÀNH <b>"NGHỈ LÀM"</b>?</p>
					<p class="text-warning"><small>Cập nhật rồi không thể hoàn tác</small></p>
					<div class="form-group">
						<label>ID</label>
					    <form:input path="id" id="editidTaiXe" name="editidTaiXe" class="form-control" disabled="true"/>
					    <form:hidden path="id" id="editidTaiXe" name="editidTaiXe" />
					</div>
					<div class="form-group">
						<label>HỌ TÊN</label>
						<form:input path="hoTen" id="edithoTen" name="edithoTen" type="text" class="form-control" disabled="true" required="required"/>
						<form:hidden path="hoTen" id="edithoTen" name="edithoTen" />
					</div>
					<div class="form-group">
						<label>SỐ ĐIỆN THOẠI</label>
						<form:input path="soDT"  id="editsoDT" name="editsoDT" value="${taiXe.soDT}" type="text" disabled="true" class="form-control" required="required"/>
						<form:hidden path="soDT"  id="editsoDT" name="editsoDT" />
					</div>
					<div class="form-group">
						<label>ĐỊA CHỈ</label>
						<form:textarea path="diaChi" id="editdiaChi" name="editdiaChi" value="${taiXe.diaChi}" disabled="true" class="form-control" required="required"/>
						<form:hidden path="diaChi" id="editdiaChi" name="editdiaChi" />
					</div>
				</div>
				<div class="modal-footer" style="background-color: white;">
					<input type="button" class="btn btn-light" data-dismiss="modal" value="Đóng" >
					<input type="submit" class="btn btn-danger" value="CẬP NHẬT">
				</div>
			</form:form>
		</div>
	</div>
</div>


</body>
</html>