<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <title>Ideas</title>
  <link href="${pageContext.request.contextPath}/resources/style.css" rel="stylesheet">
</head>
<body>
<div class="container col-sm-8" style="margin-top:30px">
  <button class="btn btn-block"><a href="/ideas">Go Back</a></button>
  <h2>${idea.ideaName }</h2>
  <p>Created by: ${idea.creator.name }</p>

  <button type="submit" class="btn"><a href="/ideas/edit/${idea.id }">Edit</a></button>

  <c:forEach items="${ideas}" var = "idea">
  <p>	${idea.likers} </p>
  </c:forEach>





</body>
</html>