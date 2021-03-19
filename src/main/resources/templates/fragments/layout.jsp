<!doctype html>
<html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/templates/tags" %>

<html xmlns:th="http://www.thymeleaf.org" th:replace="~{fragments/layout :: layout (~{::body},'index')}">

<body>

<!-- Page Content -->
<div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Техническое задание
                <small>excel</small>
            </h1>
        </div>
    </div>
    <!-- /.row -->

    <c:url value="/uploadFile" var="fileUploadControllerURL" />
    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-12">
            <p>Загрузите excel-файл(только xls)</p>
            <iframe name="index" style="display: none;"></iframe>
            <form action="${fileUploadControllerURL}" method="post"
                  enctype="multipart/form-data" target="index">

                <table>
                    <tr>
                        <td><b>File:</b></td>
                        <td><input type="file" name="file"></td>
                        <td><input type="submit" value="загрузить файл"></td>
                    </tr>
                </table>
            </form>

            <br />

            <c:url value="/excel" var="excelController"/>
            <c:url value="/pdf" var="pdfController"/>
            <a href="<c:url value="/excel"/>">Excel</a>
            <br />
            <a href="${pageContext.request.contextPath}/pdf">PDF</a>

        </div>

    </div>
    <!-- /.row -->

    <hr>

</div>
<!-- /.container -->
</body>
</html>