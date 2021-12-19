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
    <title>Login and Registration</title>
    <link href="${pageContext.request.contextPath}/resources/style.css" rel="stylesheet">
    <style>
        .errors{
            color: red;
            font-size: 16px;
        }
    </style>

</head>

<body>
<div class="container col-sm-9">
    <div class="container" style="margin-top:30px">
        <div class="row">
            <div class="col-sm-6">
                <h2 class="container title">Register</h2>
                <section id="inner-wrapper" class="login">
                    <article>
                        <p class="errors">
                            <form:errors path="user.*" />
                        </p>
                        <%--@elvariable id="user" type=""--%>
                        <form:form method="post" action="/registration" modelAttribute="user">
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-envelope"> </i></span>
                                    <form:input type="text" path="name" class="form-control"
                                                placeholder="Name" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-envelope"> </i></span>
                                    <form:input type="email" path="email" class="form-control"
                                                placeholder="Email Address" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-key"> </i></span>
                                    <form:password path="password" class="form-control" placeholder="Password" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-key"> </i></span>
                                    <form:password path="passwordConfirmation" class="form-control"
                                                   placeholder="Confirm Password" />
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block">Register</button>
                        </form:form>
                    </article>
                </section>
            </div>

            <div class="col-sm-6">
                <h2 class="container title">Login</h2>
                <section id="inner-wrapper" class="login">
                    <article>
                        <p class="errors">
                            <c:out value="${error}" />
                        </p>
                        <form method="post" action="/login">
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-envelope"> </i></span>
                                    <input type="email" id="email" name="email_log" class="form-control"
                                           placeholder="Email Address" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-key"> </i></span>
                                    <input type="password" id="password" name="password_log" class="form-control"
                                           placeholder="Password" />
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block">Login</button>
                        </form>
                    </article>
                </section>
            </div>
        </div>
    </div>
</div>
</body>

</html>