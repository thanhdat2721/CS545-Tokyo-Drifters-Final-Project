<%--
  Created by IntelliJ IDEA.
  User: gantushig
  Date: 6/11/20
  Time: 7:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <title>Add Car</title>
    <link rel="stylesheet" href="<spring:url value="/resource/css/cars.css"/>" />
    <link rel="stylesheet" href="<spring:url value="/resource/css/main.css"/>" />
</head>
<body>
    <div class="form-container">
        <div class="car-card">
            <form:form cssStyle="width: 100%;" modelAttribute="newCar" action="add?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data">
                <div class="form-group">
                    <form:input path="factory" id="factory" placeholder="Factory" cssClass="form-control" required="true" />
                    <span class="form-span">
                        <form:errors path="factory" cssClass="error" />
                    </span>
                </div>
                <div class="form-group">
                    <form:input path="model" id="model" placeholder="Model" cssClass="form-control" required="true" />
                    <span class="form-span">
                        <form:errors path="model" cssClass="error" />
                    </span>
                </div>
                <div class="form-group">
                    <form:input path="number" id="number" placeholder="Number" cssClass="form-control" required="true" />
                    <span class="form-span">
                        <form:errors path="number" cssClass="error" />
                    </span>
                </div>
                <div class="form-group">
                    <form:select path="status" id="status" value="available" cssClass="form-control">
                        <form:options items="${status}" />
                    </form:select>
                </div>
                <div class="form-group">
                    <form:select path="type" id="type" value="miniCar" cssClass="form-control">
                        <form:options items="${types}" />
                    </form:select>
                </div>
                <div class="form-group">
                    <form:input path="pricePerDay" id="pricePerDay" placeholder="Price per Day" cssClass="form-control" required="true" />
                    <span class="form-span">
                        <form:errors path="pricePerDay" cssClass="error" />
                    </span>
                </div>
                <div class="form-group">
                    <form:input path="seats" id="seats" placeholder="Seats" cssClass="form-control" required="true" />
                    <span class="form-span">
                        <form:errors path="seats" cssClass="error" />
                    </span>
                </div>
                <div class="form-group">
                    <form:input path="overduePerDay" id="overduePerDay" placeholder="Overdue cost per Day" cssClass="form-control" required="true" type="number"/>
                    <span class="form-span">
                        <form:errors path="overduePerDay" cssClass="error" />
                    </span>
                </div>
                <div class="form-group">
                    <form:input id="image" path="image" type="file" class="form:input-large" />
                </div>

                <div class="form-group" style="text-align: right;">
                    <input type="submit" value="Submit">
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>
