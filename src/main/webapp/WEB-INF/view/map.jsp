<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style type="text/css">
    <%@include file="../../resources/css/landing-page.css"%>
</style>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
        html, body{
            height:100%;
            margin: 0;
            padding: 20px;
        }
        #map_canvas {
            height: 700px;
            width: 1000px;
        }
    </style>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Ecology</title>

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
    <script src="https://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyCZtLeNqx2C3qT6PUT3soS42nmW-I4EKqw"></script>
    <script type="text/javascript">

        var markers = [];
        <c:forEach var="markers" items="${list}">
            markers.push({
                name: "${fn:escapeXml(markers.name)}",
                latitude: <c:out value="${markers.latitude}"/>,
                longitude: <c:out value="${markers.longitude}"/>
            });
        </c:forEach>

        function initialize(){
            var mapOptions={
                zoom: 7,
                center: new google.maps.LatLng(47,35), // centre de la carte
                mapTypeId: google.maps.MapTypeId.ROADMAP, // ROADMAP, SATELLITE, HYBRID, TERRAIN
            };

            var map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);

            for (i = 0; i < markers.length; i++) {
                var marker = new google.maps.Marker({
                    position: new google.maps.LatLng(markers[i].latitude, markers[i].longitude),
                    map: map
                });

                var infowindow = new google.maps.InfoWindow();
                infowindow.setContent(markers[i].name);
                infowindow.open(map, marker);

            }
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</head>
<body onload="initialize()">

<!-- Icons Grid -->
<section class="features-icons bg-light text-center">
    <div class="container">
        <div class="row">


            <div class="col-lg-4">
                <div class="features-icons-item mx-auto mb-0 mb-lg-3">
                    <div class="features-icons-icon d-flex">
                        <%--<i class="icon-check m-auto text-primary"></i>--%>
                        <i class="icon-screen-desktop m-auto text-primary"></i>

                    </div>
                    <h3>  <a href="<c:url value="/map" />"><div id="map_canvas"></div>
                    </a></h3>
                </div>
            </div>
        </div>
    </div>
</section>






<!-- Bootstrap core JavaScript -->
<script src="../../resources/vendor/jquery/jquery.min.js"></script>
<script src="../../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>