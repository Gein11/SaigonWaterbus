<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


    <h2>Add TuyenTau</h2>

    <form id="addTuyenTauForm">

        <div class="mb-3">
            <label for="idTau" class="form-label">ID Tau:</label>
            <select class="form-select" id="idTau" name="idTau" required>
                <!-- Option 1 -->
                <option value="1">Tau 1</option>
                <!-- Option 2 -->
                <option value="2">Tau 2</option>
                <!-- Add more options as needed -->
            </select>
        </div>
        
        <div class="mb-3">
            <label for="tenTuyen" class="form-label">Ten Tuyen:</label>
            <input type="text" class="form-control" id="tenTuyen" name="tenTuyen" required>
        </div>
        <div class="mb-3">
            <label for="benDi" class="form-label">Ben Di:</label>
            <input type="text" class="form-control" id="benDi" name="benDi" required>
        </div>
        <div class="mb-3">
            <label for="benDen" class="form-label">Ben Den:</label>
            <input type="text" class="form-control" id="benDen" name="benDen" required>
        </div>
        <div class="mb-3">
            <label for="benDung" class="form-label">Ben Dung:</label>
            <input type="text" class="form-control" id="benDung" name="benDung" required>
        </div>
        <div class="mb-3">
            <label for="status" class="form-label">Status:</label>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="status" id="statusHoatDong" value="1" checked>
                <label class="form-check-label" for="statusHoatDong">
                    Hoạt động
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="status" id="statusTamNgung" value="0">
                <label class="form-check-label" for="statusTamNgung">
                    Tạm ngưng
                </label>
            </div>
        </div>
        
        <button type="submit" class="btn btn-primary">Add TuyenTau</button>
    </form>

    <hr>

    <!-- Table to display TuyenTau -->
    <h2>TuyenTau Table</h2>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID Tau</th>
            <th>Ten Tuyen</th>
            <th>Ben Di</th>
            <th>Ben Den</th>
            <th>Ben Dung</th>
            <th>Status</th>
        </tr>
        </thead>
        <tbody id="tuyenTauTableBody">
        <!-- TuyenTau data will be displayed here -->
        </tbody>
    </table>

