<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
  <meta name="author" content="">
<title>강동소식</title>
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
      <a class="navbar-brand -scroll-trigger" href="#page-top">강동구청</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav text-uppercase ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#services">Services</a>
          </li>          
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#team">Team</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- Header -->
  <header class="masthead">
    <div class="container">
      <div class="intro-text">
        <div class="intro-lead-in">강동 소식!</div>       
      </div>
    </div>
  </header>
<form action="gdboard.do" method="get" id="s">
<input type="hidden" name="pg" value="1" />
<select name="f" >
	<option ${param.f=="gdtitle"?"selected":"" } value="gdtitle">제목</option>
	<option ${param.f=="gdwriter"?"selected":"" } value="gdcontent">작성자</option>
</select>
<input type="text" name="q" value="${query }" />
<input type="submit" value="검색" />
</form>

<table class="table">
	<%-- <colgroup>
		<col width="10%"/>
		<col width="35%"/>
		<col width="20%"/>
		<col width="22%"/>
		<col width="13%"/>
	</colgroup> --%>
	<caption>강동소식</caption>
	<tbody>
	<tr>
		<th class="left">번호</th>
		<th class="left">제목</th>
		<th class="left">작성부서</th>
		<th class="left">작성일</th>
		<th class="left">조회수</th>
	</tr>
	<c:forEach items="${list }" var="g">
	
	<tr>
		<td>${g.gdnum }</td>
		<td> <a href="gdboardDetail.do?d=${g.gdnum }">${g.gdtitle }</a> </td>
		<td>${g.gdwriter }</td>
		<td>${g.gddate }</td>
		<td>${g.gdcnt }</td>
	</tr>
	</c:forEach>
	</tbody>
</table>
<a href="gdboardReg.do">작성</a>
<br />
<c:if test="${start==1 }">
	<span>prev</span>
</c:if>
<c:if test="${start!=1 }">
	<a href="gdboard.do?pg=${start-5 }&f=${param.f==null?'gdtitle':param.f}&q=${query}">prev</a>
</c:if>
<c:forEach var="i" begin="${start }" end="${start+4 }">
	<c:if test="${i<=end }">
		<c:if test="${i==page }">
			<strong>
				<a href="gdboard.do?pg=${i }&f=${param.f==null?'gdtitle':param.f}&q=${query}">${i }</a>
			</strong>
		</c:if>
		<c:if test="${i!=page }">
			<a href="gdboard.do?pg=${i }&f=${param.f==null?'gdtitle':param.f }&q=${query}">${i }</a>
		</c:if>
	</c:if>
</c:forEach>
<c:if test="${start+4>=end }">
	<span>next</span>
</c:if>
<c:if test="${start+4<end }">
	<a href="gdboard.do?pg=${start+5 }&f=${param.f==null?'gdtitle':param.f}&q=${query}">next</a>
</c:if>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span>${page }/${end }</span>page

<script src="<c:url value="/vendor/jquery/jquery.min.js" />"></script>
  <script src="<c:url value="/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>
  <script src="<c:url value="/v endor/jquery-easing/jquery.easing.min.js" />"></script>
   <!-- Contact form JavaScript -->
  <script src="<c:url value="/js/jqBootstrapValidation.js" />"></script>
  
  <script src="<c:url value="/contact_me.js"/>"></script>
  <!-- Custom scripts for this template -->
  <script src="<c:url value="/js/agency.min.js"/>"></script>  

</body>
</html>