<!DOCTYPE html>
<html>
<head>
    <title>WEBAPP</title>
</head>
<body>
<h1>WEBAPP</h1>
<hr>
<h4>Detailed info about product</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Product name: </b>${product.title}<br>
<b>Description: </b>${product.description}<br>
<b>Price: </b>${product.price}<br>
<b>City: </b>${product.city}<br>
<b>Author: </b>${product.author}<br>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Delete"/>
</form>
<form action="/welcome">
    <input type="submit" value="Go back"/>
</form>
</body>
</html>