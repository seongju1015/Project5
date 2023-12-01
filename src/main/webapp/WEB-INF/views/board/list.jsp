<%--
  Created by IntelliJ IDEA.
  User: seongju1015
  Date: 12/1/23
  Time: 10:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.board.dao.BoardDAO" %>
<%@ page import="com.example.board.model.BoardVO" %>
<%@ page import="com.example.board.service.BoardServiceImpl" %>
<%@ page import="com.example.BoardController" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
            crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="my.css">
    <script src="index.js"></script>
</head>
<body>
<div class="top">
    <nav class="navbar navbar-expand navbar-dark bg-dark" aria-label="Second navbar example">
        <a class="navbar-brand">고앙이 도감</a>
        <a class="navbar-brand" href="add">Add</a>

    </nav>
</div>

<div class="container-fluid">
    <a class="navbar-brand">고양이 리스트</a>
</div>
<br/>

<div class="table-responsive">
    <%
    %>
    <table class="table table-striped table-sm">
        <thead>
        <tr>
            <th>번호</th>
            <th>이름</th>
            <th>나이</th>
            <th>성별</th>
            <th>품종</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${list}" var="u" varStatus="status">
            <tr>
                <td>${status.index + 1}</td>
                <td>${u.getCatName()}</td>
                <td>${u.getCatOld()}</td>
                <td>${u.getCatGender()}</td>
                <td>${u.getCatType()}</td>
                <td>
                    <a href="posts/${u.getCatID()}">
                        <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                    </a>
                </td>

            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>