<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 등록</title>
<style>
.table-div{
    padding: 20%;
    padding-top: 0;
    }
  .table > tbody {
    vertical-align: middle;
}
</style>
</head>
<body>
	<form action="insert.do" method="post" enctype="multipart/form-data">
		
		<table>
			<tr>
				<td>글 번호:</td>
				<td><input type="text" name="noticeboardNum" value=""></td>
			</tr>
			<tr>
				<td>글 제목:</td>
				<td><input type="text" name="noticeboardTitle" value=""></td>
			</tr>
			<tr>
				<td>작성날짜:</td>
				<td><input type="text" name="noticeboardDate" value=""></td>
			</tr>
			<tr>
				<td>말머리:</td>
				<td><input type="text" name="noticeboardType" value=""></textarea></td>
			</tr>
			<tr>
				<td>글내용</td>
				<td><input type="text" name="noticeboardContent"></td>
			</tr>
			
		</table>
		<button type="button" class="btn btn-link" type="submit" value="회원등록"></button>
	</form>
</body>
</html>