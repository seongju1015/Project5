<%--
  Created by IntelliJ IDEA.
  User: seongju1015
  Date: 12/1/23
  Time: 4:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <link rel="stylesheet" type="text/css" href="my.css">
    <link rel="stylesheet" type="text/css" href="edit.css">
    <link rel="stylesheet" type="text/css" href="addpostform.css">
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
            crossorigin="anonymous">
</head>

<body>

<div class="top">
    <nav class="navbar navbar-expand navbar-dark bg-dark" aria-label="Second navbar example">
        <a class="navbar-brand" href="../list">고양이 도감</a>
    </nav>
</div>

<div class="container-fluid">
    <a class="navbar-brand" href="../list">고양이 리스트</a>
    <a class="navbar-brand" id="view_page" href="../list">Home</a>

</div>

<div class="header">
    <h2> 새로운 고양이 추가 페이지 </h2><br>
</div>

<form id="sForm" action="../editok" method="post">
    <div class="gender_page">
        <label>[ 성별 ]</label><br>
        <label>male </label>
        <input type="radio" name="CatGender" value="male" ${u.getCatGender().equals("male") ? "checked" : ""}>
        <label>female </label>
        <input type="radio" name="CatGender"
               value="female" ${u.getCatGender().equals("female") ? "checked" : ""}><br>
        <br>
    </div>

    <div class="student_number">
        <label>[ 종류 ]</label>
        <input type="text" name="CatType" value="${u.getCatType()}">
        <br>
    </div>
    <br>
    <div class="name_page">
        <p>[ 이름 ]</p>
        <label>이름 : </label>
        <input type="text" name="CatName" placeholder="이름" value="${u.getCatName()}">
        <br>
    </div>
    <br>

    <div class="semester">
        <label>[ 나이 ] </label>
        <input type="text" name="CatOld" value="${u.getCatOld()}">
        <br>
    </div>
    <br>

    <div class="student_number">
        <label>[ 색깔 ]</label>
        <input type="text" name="CatColor" value="${u.getCatColor()}">
        <br>
    </div>
    <br>

    <div class="grade">

        <label>[ 성격 ]</label>
        <input type="text" name="CatPersonality" value="${u.getCatPersonality()}">
        <br>
    </div>
    <br>

    <div className="birthday"><br>
        <label>[ 생년월일 ]</label>
        <input type='text' name='CatBirthday' value="${u.getCatBirthday()}">
    </div>
    <br>

    <div class="engineering_certification">
        <label>[ 건강 상태 ]</label><br>
        <label> Excellent </label>
        <input type="radio" name="CatHealth"
               value="Excellent" ${u.getCatHealth().equals("Excellent") ? "checked" : ""}>
        <label> Good </label>
        <input type="radio" name="CatHealth" value="Good" ${u.getCatHealth().equals("Good") ? "checked" : ""}><br>
        <label> Bad </label>
        <input type="radio" name="CatHealth" value="Bad" ${u.getCatHealth().equals("Bad") ? "checked" : ""}><br>
        <br>
    </div>

    <input type="hidden" name="CatID" value="${u.getCatID()}">

    <div className="final">
        <input type='submit' value='수정'>
        <input type='reset' style="color: red" value='reset'><br>
    </div>
    <br>

</form>

</body>
</html>