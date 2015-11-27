<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<sql:setDataSource var="ds" dataSource="jdbc/webshop" />

<sql:query dataSource="${ds}" sql="select * from users limit 5" var="results" />

<table border=1>
<tr><th>id</th><th>email</th></tr>
<c:forEach var="user" items="${results.rows}">
<tr><td>${user.id}</td><td>${user.email}</td></tr>
</c:forEach>
</table>

 
