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

</head>

<body>
<div class="container col-sm-8" style="margin-top:30px">
    <h1>Welcome,
        <c:out value="${user.name}" />
    </h1>
    <button class="btn btn-block"><a href="/logout">Logout</a></button>
    <div class="row">
        <div class="col-sm-6">
            <h2>Ideas</h2>
        </div>
        <div class="container">
            <table>
                <thead>
                <tr>
                    <th>Idea</th>
                    <th>Created by</th>
                    <th>Likes</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${ideas}" var="idea">
                    <tr>
                        <td><a href="/show/${idea.id}">${idea.ideaName }</a></td>
                        <td>${idea.creator.name }</td>
                        <td>${idea.likers.size() }</td>

                        <c:if test="${idea.creator.id != user.id }">
                            <c:if test="${idea.likers.contains(user) == false }">
                                <td>
                                    <a href="/like/${idea.id }">Like</a>
                                </td>
                            </c:if>
                            <c:if test="${idea.likers.contains(user) == true }">
                                <td>
                                    <a href="/unlike/${idea.id }">Unlike</a>
                                </td>
                            </c:if>
                        </c:if>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <button class="btn btn-block"><a href="/ideas/new">New Idea</a></button>

        </div>
    </div>
</div>

</body>
</html>