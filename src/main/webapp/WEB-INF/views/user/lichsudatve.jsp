<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lịch sử đặt vé</title>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
  <div class="container">
    <h1>Danh sách vé đã đặt</h1>
    <table class="table">
        <thead>
            <tr>
                <th>STT</th>
                <th>Email</th>
                <th>Số Lượng Ghế</th>
                <th>Tên Ghế</th>
                <th>Thành Tiền</th>
                <th>Ngày Tạo</th>
            </tr>
        </thead>
        <tbody>
<c:set var="dateFormat" value="dd-MM-yyyy" />
<c:forEach items="${listVeDaDat}" var="vedat" varStatus="status">
    <tr>
        <td>${status.index + 1}</td>
        <td>${vedat.user.username}</td>
        <td>${vedat.soLuongGhe}</td>
        <td>${vedat.tenGhe}</td>
<td><fmt:formatNumber value="${vedat.thanhTien}" pattern="#,##0 VND"/></td>
        <td>${String.format("%02d", vedat.ngayTao.getDayOfMonth())}-${String.format("%02d", vedat.ngayTao.getMonthValue())}-${vedat.ngayTao.getYear()}</td>
    </tr>
        <c:set var="totalAmount" value="${totalAmount + vedat.thanhTien}" />
    
</c:forEach>
<tr>
    <td colspan="4"><strong>Tổng Tiền:</strong></td>
    <td><strong><fmt:formatNumber value="${totalAmount}" pattern="#,##0 VND"/></strong></td>
    <td></td> <!-- Thêm cột trống để giữ cấu trúc bảng -->
</tr>
        </tbody>
    </table>
</div>

</body>
</html>