<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  margin-left: 245px;
}
button {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: center;
}
button a {
  text-decoration: none;
  color: white;
}
input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  padding: 20px;
  width: 1450px;
  margin-left: 350px;
}
h2{
margin-left: 490px;
}
.col-25 {
  float: left;
  width: 8%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 35%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
</style>
<title>CẬP NHẬT</title>
</head>
<body>
<div>
	<div class="header">
	<h2>CẬP NHẬT THÔNG TIN</h2>
</div>
<div class="container">
<form action="updateSach" method="post">
  <div class="row">
    <div class="col-25">
      <label for="masach">Mã sách: </label>
    </div>
    <div class="col-75">
      <input type="text" id="masach" name="masach" value="${Sach.masach}" readonly>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="tensach">Tên sách: </label>
    </div>
    <div class="col-75">
      <input type="text" id="tensach" name="tensach" value="${Sach.tensach}">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="gia">Giá: </label>
    </div>
    <div class="col-75">
      	<input type="text" id="gia" name="gia" value="${Sach.gia}">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="nxb">Nhà xuất bản: </label>
    </div>
    <div class="col-75">
	<input type="text" id="nxb" name="nxb" value="${Sach.nxb}">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      	<label for="tacgia">Tác giả: </label>
    </div>
    <div class="col-75">
      	<input type="text" id="tacgia" name="tacgia" value="${Sach.tacgia}">
    </div>
  </div>
  <br>
  <div class="row">
    <input type="submit" value="Cập nhật">
    <button type="submit"><a href="/sach/list">Quay lại</a></button>
  </div>
  </form>
</div>
</div>
</body>
</html>