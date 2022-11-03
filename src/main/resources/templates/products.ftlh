<!DOCTYPE html>
<html>
<head>
    <title>WEBAPP</title>
</head>
<body>
<h1>WEBAPP | <a href="/login">Log in</a> </h1><hr>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Log out"/>
</form>
<h4>Products:</h4>
<form action="/" method="get">
    Find by name: <input type="text" name="title"><br>
    <input type="submit" value="Find"/>
</form>
<form action="/welcome">
    <input type="submit" value="Refresh"/>
</form>
<#list products as product>
    <div>
        <p><b></b>${product.title}</b> ${product.price} USD. | <a href="/product/${product.id}">Details...</a></p>
    </div>
    <#else>
    <h3>No products available</h3>
</#list>
<hr>
<h3>Add new product</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Title: <input type="text" name="title"/><br><br>
    Description: <input type="text" name="description"/><br><br>
    Price: <input type="number" name="price"/><br><br>
    City: <input type="text" name="city"/><br><br>
    Author: <input type="text" name="author"/><br><br>
    First photo: <input type="file" name="file1"/><br><br>
    Second photo: <input type="file" name="file2"/><br><br>
    Third photo: <input type="file" name="file3"/><br><br>
    <input type="submit" value="Add"/>
</form>
</body>
</html>