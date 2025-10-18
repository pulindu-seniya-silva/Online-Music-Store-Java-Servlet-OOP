<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<t:mainLayout title="Page Title">
    <jsp:attribute name="head">
    </jsp:attribute>
    
    <jsp:attribute name="content">
    	 <h1 class="text-4xl font-bold mb-4">👋 Hi Admin, </h1>
	     <div class="flex gap-4">
			<div class="block w-[280px] max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100">
				<p class="font-normal text-gray-700 font-semibold">All Orders</p>
				<h5 class="mb-2 text-center text-3xl font-bold tracking-tight text-gray-900">${ordersList.size()}</h5>
			</div>
			
			<div class="block w-[280px] max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100">
				<p class="font-normal text-gray-700 font-semibold">Items</p>
				<h5 class="mb-2 text-center text-3xl font-bold tracking-tight text-gray-900">${itemList.size()}</h5>
			</div>
			
			<div class="block w-[280px] max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100">
				<p class="font-normal text-gray-700 font-semibold">Inquiries</p>
				<h5 class="mb-2 text-center text-3xl font-bold tracking-tight text-gray-900">24</h5>
			</div>
	    </div>
	    
	    <div class="mt-4">
			<div class="flex gap-2">
				<h1 class="font-bold text-2xl item-center">Orders <span class="bg-blue-100 text-blue-800 text-xs font-medium me-2 px-2.5 py-0.5 rounded mb-1">${itemList.size()} Open</span></h1>
			</div>
	    	<p class="text-gray-700">Manage all orders in one place.</p>
	    </div>
	    
	    <div class="mt-4 flex flex-col space-y-2">
	    <c:forEach var="order" items="${ordersList}">
	    	<div class="block w-full p-4 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 cursor-pointer">
				<div class="flex item-center justify-between">
					<div>
						<p class="font-normal text-gray-700 font-semibold">${order.customer} <span class='${order.status == "completed" ? "bg-green-100 text-green-800" : "bg-gray-100 text-gray-800" } text-xs font-medium me-2 px-2.5 py-0.5 rounded'>${order.status}</span></p>
						<p class="text-sm text-gray-600">${order.createdAt}</p>
					</div>
					<p>Rs. ${order.price}</p>
				</div>
			</div>
		</c:forEach>
	    </div>
    </jsp:attribute>
</t:mainLayout>