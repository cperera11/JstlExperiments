<%-- 
    Document   : index
    Created on : Sep 12, 2017, 5:03:33 PM
    Author     : CPerera
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h2 style="color: blue">Color Guessing Game</h2>
        <form name="form1" id="form1" method="POST" action="ColorController">
            Try to guess the secret color of the day: <input type="text" value="" name="color"><br><br>
            <input type="submit" name="submit" value="Submit"><br><br>
            <input type="button" id="hintButton" name="hintButton" value="Give me hints" onclick="showHints()" /><br>

            <c:set var="color" value="${secretColor}"/>
            <div id="hints"  style="display:none;" > 
                The secret color has <b>${fn:length(color)}</b> letters <br>
                The first letter of the color is <b>${fn:substring(color, 0,1)}</b>
            </div>

            <c:choose>
                <c:when test="${secretColor}">
                    <p>${winMsg} <b>${color}!</b></p>
                </c:when>
                <c:otherwise>
                    <p> ${tryMsg}</p>
                 </c:otherwise>
            </c:choose>

            <script>
                function showHints() {
                    var x = document.getElementById('hints');
                    if (x.style.display === 'none') {
                        x.style.display = 'block';
                    } else {
                        x.style.display = 'none';
                    }
                    document.getElementById('try').style.display = 'none';
                }
            </script>     

    </body>
</html>
