<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
  <meta name="author" content="">
<title>게시판</title>
<!-- <link rel="stylesheet" href="../css/nstyle.css" /> -->
<link type="text/css" href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
<link type="text/css" href="${pageContext.request.contextPath}/css/agency.min.css" rel="stylesheet">
</head>
<body id="page-top">
<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand -scroll-trigger" href="gdboard.do">강동구청</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav text-uppercase ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="">Login</a>
          </li>          
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="">Logout</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="">Join</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
<body>
<header class="masthead">
    <div class="container">
      <div class="intro-text">
        <div class="intro-lead-in">Detail</div>       
      </div>
    </div>
  </header>
<div class="container">
<table class="table table-striped">	
	<tbody>
		<tr>
			<th class="left">글번호</th>
			<td>${g.gdnum }</td>
			<th class="left">조회수</th>
			<td>${g.gdcnt }</td>
		</tr>
		<tr>
			<th class="left">작성자</th>
			<td>${g.gdwriter }</td>
			<th class="left">작성시간</th>
			<td>${g.gddate }</td>
		</tr>
		<tr>
			<th class="left">제목</th>
			<td colspan="3">${g.gdtitle }</td>			
		</tr>
		<tr>
			<th class="left">내용</th>
			<td colspan="3">${g.gdcontent }</td>			
		</tr>
		<tr>
			<th class="left">파일첨부</th>
			<td colspan="3" id="addfile">
			<a class="text-info" href="download.do?p=gangdong/upload/&f=${g.filesrc }">${g.filesrc }</a>
			</td>
		</tr>
	</tbody>
</table>
<div class="text-center">
<ul></ul>
<a class="text-info" href="gdboardEdit.do?d=${g.gdnum }">수정</a>
<a class="text-info" href="gdboardDelProc.do?d=${g.gdnum }">삭제</a>
<a class="text-info" href="gdboard.do">목록</a>
</div>
</div>

</body>
</html>