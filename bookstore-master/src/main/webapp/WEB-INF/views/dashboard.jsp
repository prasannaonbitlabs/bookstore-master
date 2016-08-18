<%@ include file="header.jsp" %>
<c:if test="${vehicleListId ne null && vehicleListId eq 1}">
	<%@ include file="../views/vehicle/vehicleList.jsp" %>
</c:if>

<c:if test="${vehicleRegister ne null && vehicleRegister eq 1}">
	<%@ include file="../views/vehicle/registerVehicle.jsp" %>
</c:if>

<c:if test="${driversList ne null && driversList eq 1}">
	<%@ include file="../views/driver/driverList.jsp" %>
</c:if>


<c:if test="${driverRegister ne null && driverRegister eq 1}">
	<%@ include file="../views/driver/driverRegister.jsp" %>
</c:if>

<c:if test="${personListId ne null && personListId eq 1}">
	<%@ include file="../views/person/listPersons.jsp" %>
</c:if>

<c:if test="${adminBooking ne null && adminBooking eq 1}">
	<%@ include file="../views/booking/bookingAdmin.jsp" %>
</c:if>

<c:if test="${bookingListId ne null && bookingListId eq 1}">
	<%@ include file="../views/booking/bookingList.jsp" %>
</c:if>

<c:if test="${vehicleAllocationId ne null && vehicleAllocationId eq 1}">
	<%@ include file="../views/vehicleAllocation/vehicleAllocationForm.jsp" %>
</c:if>







<%-- <%@ include file="footer.jsp" %> --%>