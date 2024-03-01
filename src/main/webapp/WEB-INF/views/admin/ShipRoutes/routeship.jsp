<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Bootstrap CRUD Data Table for Database with Modal Form</title>
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
	overflow-x: hidden;
	overflow-y: auto;
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
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
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

.custom-checkbox label:before {
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

.custom-checkbox input[type="checkbox"]:checked+label:after {
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

.custom-checkbox input[type="checkbox"]:checked+label:before {
	border-color: #03A9F4;
	background: #03A9F4;
}

.custom-checkbox input[type="checkbox"]:checked+label:after {
	border-color: #fff;
}

.custom-checkbox input[type="checkbox"]:disabled+label:before {
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
	height: 480px;
	width: 550px;
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
<script>
	$(document).ready(function() {
		// Activate tooltip
		$('[data-toggle="tooltip"]').tooltip();

		// Select/Deselect checkboxes
		var checkbox = $('table tbody input[type="checkbox"]');
		$("#selectAll").click(function() {
			if (this.checked) {
				checkbox.each(function() {
					this.checked = true;
				});
			} else {
				checkbox.each(function() {
					this.checked = false;
				});
			}
		});
		checkbox.click(function() {
			if (!this.checked) {
				$("#selectAll").prop("checked", false);
			}
		});
	});
</script>

<script>
	// Hàm để ẩn phần tử sau một khoảng thời gian
	function hideElement() {
		var element = document.getElementById('message');
		setTimeout(function() {
			element.style.display = 'none';
		}, 5000); // 5000 miliseconds = 5 seconds
	}

	// Gọi hàm khi trang được load
	window.onload = hideElement;
</script>
</head>
<body>


	<%
	String tt = request.getParameter("tt");

	if (tt != null) {
	%>
	<h3 id="message"><%=tt%></h3>
	<%
	}
	%>

	<div class="table-wrapper">
		<div class="table-title">
			<div class="row align-items-center" style="height: 50px">
				<div class="col-sm-4">
					<h2>
						QUẢN LÝ <b>TUYẾN TÀU</b>
					</h2>
				</div>
				<div class="col-sm-4">
					<form action="/asm/searchroute${keyword}" method="post">
						<div class="input-group">
							<input name="keyword" type="text" class="form-control"
								placeholder="Tìm kiếm theo tên Tuyến">
							<div class="input-group-append">
								<button class="btn btn-warning" type="submit">
									<i class="material-icons align-items-center ps-3">&#xE8B6;</i>
								</button>
							</div>
						</div>
					</form>

				</div>
				<div class="col-sm-4 text-right">
					<a href="#addEmployeeModal" class="btn btn-success p-2"
						data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Thêm
							Tuyến</span></a>
				</div>
			</div>
		</div>
		<div class="table-responsive">
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>STT</th>
						<th>Bến đi</th>
						<th>Bến dừng</th>
						<th>Bến đến</th>

						<th>Tên tuyến</th>
						<th>Trạng thái</th>
						<th>Biển số tàu</th>
						<th>Chỉnh sửa</th>
					</tr>
				</thead>
				<tbody>


					<c:forEach var="tuyen" items="${listTuyen}" varStatus="loop">
						<tr>
							<td>${loop.index + 1}</td>
							<td>${tuyen.benDi}</td>
							<td>${tuyen.benDung}</td>
							<td>${tuyen.benDen}</td>
							<td>${tuyen.tenTuyen}</td>
							<td>${tuyen.status ? 'Hoạt động' : 'Bảo trì'}</td>
							<td>${tuyen.tau.bienSoTau}</td>

							<td><a href="#editEmployeeModal" class="edit"
								data-toggle="modal" data-id="${tuyen.id}"
								data-benDi="${tuyen.benDi}" data-benDung="${tuyen.benDung}"
								data-benDen="${tuyen.benDen}" data-tenTuyen="${tuyen.tenTuyen}"
								data-status="${tuyen.status}" data-idTau="${tuyen.tau.id}">
									<i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
							</a> <a href="#deleteEmployeeModal" class="delete"
								data-toggle="modal" data-id="${tuyen.id}"> <i
									class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i>
							</a></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>

	</div>

	<!-- Edit Modal HTML -->
	<div id="addEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form:form action="/asm/addRoute" modelAttribute="tuyen"
					method="post">
					<div class="modal-header">
						<h4 class="modal-title">Thêm mới tuyến tàu</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>ID tuyến</label>
							<form:input path="id" type="text" class="form-control"
								required="required" placeholder="Tuyến đi: TD, Tuyến về: TV" />
						</div>

						<div class="form-group">
						<label>Bến đi</label>
						<%-- <form:input path="benDi" type="text" class="form-control" required="required"/> --%>
						<form:select path="benDi" class="form-control" required="required">
							<form:option value="Chọn bến đi"></form:option>
							<form:option value="Bạch Đằng">Bạch Đằng</form:option>
							<form:option value="Linh Đông">Linh Đông</form:option>
						</form:select>
					</div>					
					<div class="form-group">
						<label>Bến dừng</label>
						<%-- <form:input path="benDung" type="text" class="form-control" required="required"/> --%>
						<form:select path="benDung" class="form-control" required="required">
							<form:option value="Chọn bến dừng"></form:option>
							<form:option value="Bình An, Thanh Đa, Hiệp Bình Chánh, Linh Đông">Bình An, Thanh Đa, Hiệp Bình Chánh, Linh Đông</form:option>
							<form:option value="Hiệp Bình Chánh, Thanh Đa, Bình An, Bạch Đằng">Hiệp Bình Chánh, Thanh Đa, Bình An, Bạch Đằng</form:option>
						</form:select>
					</div>
					<div class="form-group">
						<label>Bến đến</label>
						<%-- <form:input path="benDen" type="text" class="form-control" required="required"/> --%>
						<form:select path="benDen" class="form-control" required="required">
							<form:option value="Chọn bến đến"></form:option>
							<form:option value="Bạch Đằng">Bạch Đằng</form:option>
							<form:option value="Linh Đông">Linh Đông</form:option>
						</form:select>
					</div>
						<div class="form-group">
							<label>Tên tuyến</label>
							<form:input path="tenTuyen" type="text" class="form-control"
								required="required" />
						</div>
						<div class="form-group">
							<label for="idTau">ID Tàu</label>
							<form:select path="tau" class="form-control" required="required">
								<form:option value="" label="-- Chọn tuyến --" />
								<form:option value="" label="Không tạo tuyến tàu với tàu có sẵn" />
								<form:options items="${listTau}" itemValue="id"
									itemLabel="bienSoTau" />
							</form:select>
						</div>


						<div class="form-group">
							<label>Trạng thái</label> <br>
							<form:radiobutton path="status" value="1" label="Hoạt động" />
							<form:radiobutton path="status" value="0" label="Bảo trì" />
						</div>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Đóng"> <input type="submit" value="Lưu" class="btn btn-info" >
					</div>
				</form:form>
			</div>
		</div>
	</div>


	<!-- Edit Modal HTML -->
	<div id="editEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form:form action="/asm/editroute/${tuyen.id}" mehthod="post"
					modelAttribute="tuyen">
					<div class="modal-header">
						<h4 class="modal-title">Chỉnh sửa tuyến</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="idTuyen">Id Tuyến</label>
							<form:input type="text" path="id" class="form-control"
								id="idTuyen" disabled="true" required="required" />
						</div>
						<div class="form-group">
							<label for="benDi">Bến đi</label>
							<form:input type="text" path="benDi" class="form-control"
								id="benDi" required="required" />
						</div>
						<div class="form-group">
							<label for="benDung">Bến dừng</label>
							<form:input type="text" path="benDung" class="form-control"
								id="benDung" required="required" />
						</div>
						<div class="form-group">
							<label for="benDen">Bến đến</label>
							<form:input type="text" path="benDen" class="form-control"
								id="benDen" required="required" />
						</div>
						<div class="form-group">
							<label for="tenTuyen">Tên tuyến</label>
							<form:input type="text" path="tenTuyen" class="form-control"
								id="tenTuyen" required="required" />
						</div>
						<div class="form-group">
							<label for="tau">Tàu</label>
							<form:input type="text" path="tau" class="form-control"
								id="idTau" required="required" />
						</div>

						<div class="form-group">
							<label for="status">Trạng thái</label> <br>
							<form:radiobutton path="status" id="editStatusActive"
								value="true" label="Hoạt động" checked="true" />
							<form:radiobutton path="status" id="editStatusMaintenance"
								value="false" label="Bảo trì" />
						</div>

					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Đóng"> <input type="submit" class="btn btn-info"
							value="Lưu">
					</div>
				</form:form>
			</div>
		</div>
	</div>

	<!-- Delete Modal HTML -->
	<div id="deleteEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="/asm/deleteroute/${tuyen.id}" method="post">
					<div class="modal-header">
						<h4 class="modal-title">Xoá tuyến này?</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<p>Bạn chắc chắn muốn xoá tàu này chứ?</p>
						<p class="text-warning">
							<small>Có thể chỉnh sửa lại trạng thái tàu.</small>
						</p>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Huỷ"> <input type="submit" class="btn btn-danger"
							value="Xoá">
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- <--fillIDformdelete->> -->
	<script>
		$(document).ready(function() {
			// Khi modal hiển thị
			$('#deleteEmployeeModal').on('show.bs.modal', function(event) {
				var button = $(event.relatedTarget);
				var id = button.data('id');

				// Thay đổi giá trị action của form
				var form = $(this).find('form');
				form.attr('action', '/asm/deleteroute/' + id);
			});
		});
	</script>
	--%>
	<!-- ffill data vào modal fade edit -->

	<script>
		$(document).ready(function() {
			// Khi modal hiển thị
			$('#editEmployeeModal').on('show.bs.modal', function(event) {
				var button = $(event.relatedTarget); // Nút "Edit" được nhấn
				var idTuyen = button.attr('data-id'); // Sử dụng attr thay vì data
				var benDung = button.attr('data-benDung'); // Sử dụng attr thay vì data
				var benDi = button.attr('data-benDi'); // Sử dụng attr thay vì data
				var benDen = button.attr('data-benDen'); // Sử dụng attr thay vì data
				var tenTuyen = button.attr('data-tenTuyen'); // Sử dụng attr thay vì data
				var tau = button.attr('data-idTau'); // Sử dụng attr thay vì data

				// Kiểm tra dữ liệu
				console.log(idTuyen, benDung, benDi, benDen, tenTuyen, tau);

				// Điền giá trị vào form
				var form = $(this).find('form');
				form.find('#idTuyen').val(idTuyen);
				form.find('#benDi').val(benDi);
				form.find('#benDung').val(benDung);
				form.find('#benDen').val(benDen);
				form.find('#idTau').val(tau);
				form.find('#tenTuyen').val(tenTuyen);
			});
		});
	</script>


	<!-- fill id vào edit  -->
	<script>
		$(document).ready(function() {
			// Khi modal hiển thị
			$('#editEmployeeModal').on('show.bs.modal', function(event) {
				var button = $(event.relatedTarget);
				var id = button.data('id');

				var form = $(this).find('form');
				form.attr('action', '/asm/editroute/' + id);
			});
		});
	</script>

	<script>
		// JavaScript code to encode the keyword
		document
				.querySelector('form')
				.addEventListener(
						'submit',
						function(event) {
							var keywordInput = document
									.querySelector('input[name="keyword"]');
							keywordInput.value = encodeURIComponent(keywordInput.value);
						});
	</script>
</body>
</html>