<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<form action="<%=request.getContextPath()%>/hello-servlet" method="post">
    <input type="text" name="blocksize" placeholder="block1">
    <input type="number" name="block2" placeholder="block2">
    <input type="number" name="block3" placeholder="block3">
    <input type="number" name="block4" placeholder="block4">
    <input type="number" name="block5" placeholder="block5">
    <br><br>
    <input type="number" name="mem1" placeholder="memory 1">
    <input type="number" name="mem2" placeholder="memory 2">
    <input type="number" name="mem3" placeholder="memory 3">
    <input type="number" name="mem4" placeholder="memory 4">
    <input type="submit" value="Submit">

</form>
</body>
</html>