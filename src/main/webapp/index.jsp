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
        
        <h2>Number Guessing Game</h2>
        <form name="form1" id="form1" method="POST" action="ColorController">
            Guess the secret color: <input type="text" value="" name="color"><br><br>
            
            <input type="submit" name="submit" value="Submit">
            
             <h3>Hint:</h3>
             
             
        <p>${winMsg}</p>
        <p>${tryMsg}</p>

                   
            
            
    </body>
</html>
