<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style type="text/css">
    <%@include file="../../resources/css/landing-page.css"%>
</style>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Table</title>

    <!-- Bootstrap core CSS -->
    <%--<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">--%>
    <%--<script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>--%>
    <%--<script src="<c:url value="/resources/js/main.js" />"></script>--%>

    <link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="<c:url value="/resources/vendor/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">
    <link href="<c:url value="/resources/vendor/simple-line-icons/css/simple-line-icons.css"/>" rel="stylesheet" type="text/css">
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"/>" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/landing-page.min.css"/>" rel="stylesheet">


    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>
    <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script></head>
<body>



<br>
<div class="container">
<table style="border: 1px solid #ccc; padding: 10px;" class="table table-hover" >
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LONGITUDE</td>
        <td>LATITUDE</td>
    </tr>
    <c:forEach items="${list}" var="list">
        <tr>
            <td>${list.id}</td>
            <td>${list.name}</td>
            <td>${list.longitude}</td>
            <td>${list.latitude}</td>
        </tr>
    </c:forEach>
</table>
</div>

<br>
<br>
<br>

<!-- Icons Grid -->
<section class="features-icons bg-light text-center">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                    <div class="features-icons-icon d-flex">
                        <%--<i class="icon-screen-desktop m-auto text-primary"></i>--%>
                        <i class="icon-layers m-auto text-primary"></i>

                    </div>
                      <form name="createMarker" action="createMarker" method="POST" style="border: 1px solid #ccc; padding: 10px; width: 250px;">
                        NAME      : <input type="text" name="name"> <br>
                        LONGITUDE : <input type="number" step="any" name="longitude"> <br>
                        LATITUDE  : <input type="number" step="any" name="latitude"> <br>
                        <input type="submit" value="CREATE">
                    </form>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                    <div class="features-icons-icon d-flex">
                        <%--<i class="icon-layers m-auto text-primary"></i>--%>
                        <i class="icon-check m-auto text-primary"></i>
                    </div>


                    <form name="deleteMarker" action="deleteMarker" method="POST" style="border: 1px solid #ccc; padding: 10px; width: 250px;">
                        ID : <input type="number" name="delete"> <br>
                        <input type="submit" value="DELETE">
                    </form>



                </div>
            </div>
            <div class="col-lg-4">
                <div class="features-icons-item mx-auto mb-0 mb-lg-3">
                    <div class="features-icons-icon d-flex">
                        <%--<i class="icon-check m-auto text-primary"></i>--%>
                        <i class="icon-screen-desktop m-auto text-primary"></i>

                    </div>
                      <form name="updateMarker" action="updateMarker" method="POST" style="border: 1px solid #ccc; padding: 10px; width: 250px;">
                          ID : <input type="number" name="id"> <br>
                          NAME      : <input type="text" name="name"> <br>
                          LONGITUDE : <input type="number" step="any" name="longitude"> <br>
                          LATITUDE  : <input type="number" step="any" name="latitude"> <br>
                          <input type="submit" value="UPDATE">
                      </form>

                </div>
            </div>
        </div>
    </div>
</section>


<br>
<br>
<br>



<br>
<br>
<br>




<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
