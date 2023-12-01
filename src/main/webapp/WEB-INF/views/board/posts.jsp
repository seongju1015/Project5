<%--
  Created by IntelliJ IDEA.
  User: seongju1015
  Date: 12/1/23
  Time: 4:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
            crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="my.css">
</head>

<body>
<c:set var="posts" items="${posts}" />
<div class="top">
    <nav class="navbar navbar-expand navbar-dark bg-dark" aria-label="Second navbar example">
        <a class="navbar-brand" href="../list">고양이 도감</a>
        <div id = "my_a1">
            <a class="nav-link" aria-current="page" href="index.jsp">Home</a>
        </div>
    </nav>
</div>

<div class="container-fluid">
    <a href="../editform/${posts.getCatID()}">
        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
    </a>
    <br/>
</div>
<br/>
<div class="needs-validation" >
    <div class="row g-3">

        <div class="col-sm-6">
            <label class="form-label">이름</label>
            <input type="text" class="form-control" name="StudentNumber" value="${posts.getCatName()}" disabled>
        </div>

        <div class="col-sm-6">
            <label class="form-label">성별</label>
            <input type="text" class="form-control" name="StudentGrade" value="${posts.getCatGender()}" disabled>
        </div>

        <div class="col-sm-6">
            <label class="form-label">품종</label>
            <input type="text" class="form-control" name="StudentName" placeholder="" value="${posts.getCatType()}" disabled>
        </div>

        <div class="col-sm-6">
            <label  class="form-label">색깔</label>
            <input type="text" class="form-control" name="IsEngCertification" placeholder="" value="${posts.getCatColor()}" disabled>
        </div>

        <div class="col-sm-6">
            <label  class="form-label"> 나이 </label>
            <input type="text" class="form-control" name="StudentDepartment" value="${posts.getCatOld()}" disabled>
        </div>

        <div class="col-sm-6">
            <label class="form-label">생일</label>
            <input type="text" class="form-control" name="StudentGender" value="${posts.getCatBirthday()}" disabled>
        </div>

        <div class="col-sm-6">
            <label class="form-label">성격</label>
            <input type="text" class="form-control" name="StudentSemester" placeholder="" value="${posts.getCatPersonality()}" disabled>
        </div>

        <div class="col-12">
            <label class="form-label"> 건강상태 </label>
            <input type="text" class="form-control" name="StudentResident" value="${posts.getCatHealth()}" disabled>
        </div>

        <a id="delete_button"> <input type="button" name="deletebutton" class="btn btn-danger" value="Delete" onclick="deleteRecord()"></a>

        <hr class="my-4">
    </div>

</div>

<div class="container">
    <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
        <div class="col-md-4 d-flex align-items-center">
            <a href="/" class="mb-3 me-2 mb-md-0 text-body-secondary text-decoration-none lh-1">
                <svg class="bi" width="30" height="24"><use xlink:href="#bootstrap"></use></svg>
            </a>
            <span class="mb-3 mb-md-0 text-body-secondary">© 2023 Company, Inc</span>
        </div>

    </footer>
</div>

<script>
    function deleteRecord() {
        // 삭제를 수행하는 코드
        window.location.href = "../desktop/${posts.getCatID()}";
    }

</script>

</body>
</html>
