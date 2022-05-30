
<%@page import="spectrum.board.vo.NoticeBoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	List<NoticeBoardVO> boardList =
					(List<NoticeBoardVO>) request.getAttribute("boardList");	

	String msg = request.getParameter("msg") == null
			? "" :request.getParameter("msg");
	
%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>공지사항 목록</title>
<style>
.table-div{
    padding: 20%;
    padding-top: 10px;
    }
  .table > tbody {
    vertical-align: middle;
}
h1 {
	margin-top: 30px;
	margin-bottom: 30px;
}
</style>
</head>
<body>
<div id="header">
    <%@include file="/navbar.jsp" %>
</div>

<div id="detailPadding" style="padding-top: 100px"></div>
<div class="table-div">
<h1>공지사항 게시판</h1>
<table class="table table-hover">
	<tr class="table-active">
		<th>글 번호</th>
		<th>말머리</th>
		<th>작성자</th>
		<th>글 제목</th>
		<th>작성날짜</th>
		
		
	</tr>
	<%
		int boardSize = boardList.size();
		if(boardSize > 0) {
			for(int i=0; i < boardSize; i++){
			String date = boardList.get(i).getNoticeboardDate();
		
	%>
	<tr class="table-active">
		<td><%=boardList.get(i).getNoticeboardNum() %></td>
		<td><%=boardList.get(i).getNoticeboardType() %></td>
		<td><%=boardList.get(i).getAdminId() %></td>
		<td><a href="detail.do?NoticeboardNum=<%=boardList.get(i).getNoticeboardNum()%>"><%=boardList.get(i).getNoticeboardTitle() %></a></td>
		<td><%=date.substring(0, 16) %></td>
	
	</tr>
	<%
		}
	}else{
	%>
	<tr>
		<td colspan="4">회원 정보가 없습니다.</td>
	</tr>
	<% 
	}
	%>
</table>
<%
	if(msg.equals("성공")){
%>
	<script>
		alert("정상적으로 처리되었습니다.");
	</script>
<%		
	}
%>

<%
if(session.getAttribute("adminId")!=null){
	
%>
<div>
<a href="noticeinsert.do">글쓰기</a>
</div>
<% 
}

%>

</div>

</body>
</html>