<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}
      * {
        box-sizing: border-box;
      }

      input[type="text"],
      select,
      textarea {
        width: 100%;
        padding: 12px;
        border: 1px solid #ccc;
        border-radius: 4px;
        resize: vertical;
      }
input[type="password"],
      select,
      textarea {
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

      input[type="submit"] {
        background-color: #04aa6d;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        float: right;
      }
 input[type="reset"] {
        background-color: #04aa6d;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        float: right;
      }
      input[type="submit"]:hover {
        background-color: #45a049;
      }

      .container {
        border-radius: 5px;
        background-color: #f2f2f2;
        padding: 20px;
      }

      .col-25 {
        float: left;
        width: 25%;
        margin-top: 6px;
      }

      .col-75 {
        float: left;
        width: 75%;
        margin-top: 6px;
      }

      /* Clear floats after the columns */
      .row:after {
        content: "";
        display: table;
        clear: both;
      }

      /* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
      @media screen and (max-width: 600px) {
        .col-25,
        .col-75,
        input[type="submit"] {
          width: 100%;
          margin-top: 0;
        }
      }
      .button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
 .button:hover {
 box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
 }
    </style>
<title>CỬA HÀNG SÁCH</title>
</head>
<body>
<div id="container">
</div>
<center>
<div id="wrapper">
	<div id="header">
	<h2>LIST SÁCH</h2>
</div>
</div>

<input type="submit" value="Thêm Sách" class="add-button" onclick="window.location.href='insertSach'; return false;"/>
	<table border="0">
		<tr>
		<th>Mã sách</th><th>Tên sách</th><th>Giá</th><th>Nhà xuất bản</th><th>Tác giả</th>
		</tr>
		<tr>
			<c:forEach var="tempSach" items="${Sach}">
				<!-- Construct an update link -->
				<c:url var="updateLink" value="updateSach">
					<c:param name="maSach" value="${tempSach.masach}"/>
				</c:url>
				<!-- Construct an delete link -->
				<c:url var="deleteLink" value="deleteSach">
					<c:param name="maSach" value="${tempSach.masach}"/>
				</c:url>
				<tr>
					<td>${tempSach.masach}</td>
					<td>${tempSach.tensach}</td>
					<td>${tempSach.gia}</td>
					<td>${tempSach.nxb}</td>
					<td>${tempSach.tacgia}</td>
					<!-- Display update link -->
					<td>
						<a href="${updateLink}" class="button">Cập nhật</a>
						<a href="${deleteLink}" onclick="if(!(confirm('Bạn chắc chắn muốn xóa không ?'))) return false" class="button">Xóa</a>
					</td>
				</tr>
			</c:forEach>
		</tr>
	</table>
</center>
</body>
</html>