<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style type="text/css">
  <%@include file="../../resources/css/landing-page.css"%>
</style>
<!DOCTYPE html>
<html lang="en">

  <head>
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

  </head>
  <body>

  <!-- Masthead -->
  <header class="masthead text-white text-center">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-xl-9 mx-auto">
          <h1 class="mb-5">Choose the page</h1>
        </div>
        <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
          <form>
            <div class="form-row">
              <div class="col-12 col-md-9 mb-2 mb-md-0">

              </div>
              <div class="col-12 col-md-3">

              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </header>

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
            <h3>  <a href="<c:url value="/table" />">Table</a></h3>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
            <div class="features-icons-icon d-flex">
              <%--<i class="icon-layers m-auto text-primary"></i>--%>
              <i class="icon-check m-auto text-primary"></i>
            </div>
            <h3>  <a href="<c:url value="/excess" />">Excess</a></h3>

          </div>
        </div>
        <div class="col-lg-4">
          <div class="features-icons-item mx-auto mb-0 mb-lg-3">
            <div class="features-icons-icon d-flex">
              <%--<i class="icon-check m-auto text-primary"></i>--%>
                <i class="icon-screen-desktop m-auto text-primary"></i>

            </div>
            <h3>  <a href="<c:url value="/map" />">Map</a></h3>
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
