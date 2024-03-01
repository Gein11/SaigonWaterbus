<%@ page import="java.util.List" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thống kê doanh thu</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.15.6/xlsx.full.min.js"></script>

</head>
<body>
<c:set var="dateParam" value="${param.date}" />
  <div class="container mt-5">

        <div id="result" class="mt-3"></div>
<h2 class="text-center">Bảng thống kê doanh thu theo ngày trong tuần hiện tại:</h2>
<canvas id="myChart" width="900" height="300"></canvas>
        <form action="/asm/tool/thongke" method="get" id="searchForm">
            <div class=" mb-3">
            
                <div class="w-50 d-flex mt-5">
                	<label>Chọn ngày trong tuần mà bạn muốn xem</label>
                    <input type="date" id="dateInput" value="${dateParam}" name="date"  class="form-control mb-3 w-25">
                     <button  type="submit" class="btn btn-primary mb-3 ">Search</button>
                </div>
                <div class="">
                   
                </div>
            </div>
        </form>
<button type="button" class="btn btn-primary mb-3" onclick="exportToExcel()">Xuất file excel thống kê doanh thu tuần</button>

<h3>Thu nhập tạm tính ngày hôm nay: <strong><fmt:formatNumber value="${totalDate}" type="currency" currencySymbol="VND" maxFractionDigits="0"/></strong></h3>

        
    </div>


<%
    List<Object[]> listThongKe = (List<Object[]>) request.getAttribute("listThongKe");
    String[] labels = new String[listThongKe.size()];
    double[] values = new double[listThongKe.size()];

    SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd");
    SimpleDateFormat outputFormat = new SimpleDateFormat("dd-MM-yyyy");

    for (int i = 0; i < listThongKe.size(); i++) {
        Object[] item = listThongKe.get(i);
        String ngay = outputFormat.format(inputFormat.parse(item[0].toString()));
        labels[i] = ngay;
        values[i] = Double.parseDouble(item[1].toString());
    }
%>

<script>
    var labels123 = <%= new Gson().toJson(labels) %>; 
    var values123 = <%= new Gson().toJson(values) %>; 

    var ctx = document.getElementById('myChart').getContext('2d');

    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: labels123,
            datasets: [{
                label: 'Doanh thu ngày trong tuần hiện tại',
                data: values123,
                fill: true,
                backgroundColor: 'rgba(255, 99, 132, 0.2)',
                borderColor: 'rgba(255, 99, 132, 1)',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });

    function exportToExcel() {
        // Lấy ngày đầu và cuối trong tuần từ mảng labels123
        var firstDate = labels123[0];
        var lastDate = labels123[labels123.length - 1];

        // Format lại ngày để đặt tên cho file Excel
        var formattedFirstDate = firstDate.replace(/-/g, '/');
        var formattedLastDate = lastDate.replace(/-/g, '/');

        // Giới hạn độ dài tên trang tính để không vượt quá 31 ký tự
        var maxSheetNameLength = 31;

        // Tạo tên trang tính dựa trên ngày đầu và cuối trong tuần
        var sheetName = "Doanh thu tuần từ " + formattedFirstDate + " đến " + formattedLastDate;
        
        // Loại bỏ các ký tự đặc biệt không hợp lệ
        sheetName = sheetName.replace(/[:\\\/\?\*\[\]]/g, '');

        // Nếu tên trang tính vượt quá 31 ký tự, thì cắt đi phần dư ra
        if (sheetName.length > maxSheetNameLength) {
            sheetName = sheetName.substring(0, maxSheetNameLength);
        }

        // Tạo chỉ hai cột từ mảng dữ liệu
        var data = [labels123, values123];
        var twoColumnsData = [];

        // Thêm tên cho ô đầu tiên của hai cột
        twoColumnsData.push(['Ngày', 'Doanh thu']);

        // Thêm dữ liệu từ mảng labels123 và values123 vào mảng twoColumnsData
        for (var i = 0; i < labels123.length; i++) {
            twoColumnsData.push([labels123[i], values123[i]]);
        }

        // Tạo Workbook và thêm trang tính mới
        var wb = XLSX.utils.book_new();
        var ws = XLSX.utils.aoa_to_sheet(twoColumnsData);
        XLSX.utils.book_append_sheet(wb, ws, sheetName);

        // Tạo file Excel từ Workbook
        var wbout = XLSX.write(wb, { type: "array", bookType: "xlsx" });
        var blob = new Blob([wbout], { type: "application/octet-stream" });

        // Tạo đường dẫn URL và tải xuống file Excel
        var url = URL.createObjectURL(blob);
        var a = document.createElement('a');
        a.href = url;
        a.download = 'Doanh-thu-' + formattedFirstDate + '-' + formattedLastDate + '.xlsx';
        document.body.appendChild(a);
        a.click();

        // Giải phóng đường dẫn URL khi không cần nữa
        setTimeout(function () {
            URL.revokeObjectURL(url);
        }, 0);
    }


</script>
</body>
</html>
