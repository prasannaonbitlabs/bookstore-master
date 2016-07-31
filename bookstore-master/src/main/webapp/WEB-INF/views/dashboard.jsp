<%@ include file="header.jsp" %>
<c:if test="${vehicleListId ne null && vehicleListId eq 1}">
	<%@ include file="../views/vehicle/vehicleList.jsp" %>
</c:if>

<c:if test="${vehicleRegister ne null && vehicleRegister eq 1}">
	<%@ include file="../views/vehicle/registerVehicle.jsp" %>
</c:if>

<%@ include file="footer.jsp" %>