
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nadezhdavlasenko
  Date: 13.12.2017
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
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

    <title>Excess</title>

    <link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="<c:url value="/resources/vendor/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">
    <link href="<c:url value="/resources/vendor/simple-line-icons/css/simple-line-icons.css"/>" rel="stylesheet" type="text/css">
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"/>" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/landing-page.min.css"/>" rel="stylesheet">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

<br>
<div class="container">
    <table style="border: 1px solid #ccc; padding: 10px;" class="table table-hover" >
    <tr>
        <td>Компанія</td>
        <td>Забруднювач</td>
        <td>Об'єм викидів(г/год(</td>
        <td>Величина масової витрати (г/год)</td>
        <td>Гранично допустимі викиди (мг/м3)</td>
        <td>Клас речовини</td>
        <td>Відсоток перебільшення</td>
    </tr>
    <c:forEach items="${list}" var="list">
        <tr>
            <td>${list.nameOfPlace}</td>
            <td>${list.nameOfPollutant}</td>
            <td>${list.volume}</td>
            <td>${list.massFlow}</td>
            <td>${list.boundaryTolerance}</td>
            <td>${list.classOfPollutant}</td>
            <td>${list.percent}%</td>
        </tr>
    </c:forEach>
</table>

</div>



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
                        NAME      : <br><input type="text" name="name"> <br>
                        LONGITUDE : <br><input type="number" step="any" name="longitude"> <br>
                        LATITUDE  : <br><input type="number" step="any" name="latitude"> <br><br>
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
                        ID : <br><input type="number" name="delete"> <br><br>
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
                        ID : <br><input type="number" name="id"> <br>
                        NAME      : <br><input type="text" name="name"> <br>
                        LONGITUDE : <br><input type="number" step="any" name="longitude"> <br>
                        LATITUDE  : <br><input type="number" step="any" name="latitude"> <br><br>
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
<script src="../../resources/vendor/jquery/jquery.min.js"></script>
<script src="../../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>




</body>
</html>
