<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
		
<t:mainLayout title="Page Title">
    <jsp:attribute name="head">
    	<script>
    	
    		function navigate(path) {
    			window.location.href = path;	
    		}

    		function openModal() {
    			// Select the div by its ID
    			const modalDiv = document.getElementById("create-modal");

    			// Define the HTML content you want to inject
    			const content = `
    				<div class="relative z-10" aria-labelledby="modal-title" role="dialog" aria-modal="true">
    				  <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true"></div>

    				  <div class="fixed inset-0 z-10 w-screen overflow-y-auto">
						<div class="flex min-h-full items-end justify-center p-4 text-center sm:items-center sm:p-0">
    				      <div class="relative transform overflow-hidden rounded-lg bg-white text-left shadow-xl transition-all sm:my-8 sm:w-full sm:max-w-lg">
    				        <div class="bg-white px-4 pb-4 pt-5 sm:p-6 sm:pb-4">
    				          <div class="">
    				            <div class="mt-3">
    				              <h3 class="text-base font-semibold leading-6 text-gray-900" id="modal-title">Create new item</h3>
    				              <div class="mt-2">
									<form id="item-create" action="/music_store/product" method="post">
										<div class="w-full mb-2">
											<label for="street-address" class="block text-sm font-medium leading-6 text-gray-900">Calegory</label>
											<div class="mt-2">
												<select type="number" name="category" class="w-full rounded-md border-0 py-1.5 text-gray-900 ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6 px-1">
													<option value="Guitar">Guitar</option>
													<option value="Drum">Drum</option>
												</select>
											</div>
										</div>
    				                
	    				              <div class="w-full">
		    				              <label for="street-address" class="block text-sm font-medium leading-6 text-gray-900">Item Name</label>
		    				              <div class="mt-2">
		    				                <input type="text" name="name" class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6 px-1">
		    				              </div>
	    				             </div>
	    				             
	    				              <div class="w-full">
		    				              <label for="street-address" class="block text-sm font-medium leading-6 text-gray-900">Item Description</label>
		    				              <div class="mt-2">
		    				                <input type="text" name="description" class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6 px-1">
		    				              </div>
    				             	 </div>
    				             	 
	    				              <div class="w-full">
		    				              <label for="street-address" class="block text-sm font-medium leading-6 text-gray-900">Quantity</label>
		    				              <div class="mt-2">
		    				                <input type="number" name="qty" class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6 px-1">
		    				              </div>
				             	 	  </div>
				             	 	  
	    				              <div class="w-full">
		    				              <label for="street-address" class="block text-sm font-medium leading-6 text-gray-900">Item Price</label>
		    				              <div class="mt-2">
		    				                <input type="number" name="price" class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6 px-1">
		    				              </div>
			             	 	 	 </div>
				             	 	  
	    				              <div class="w-full">
		    				              <label for="street-address" class="block text-sm font-medium leading-6 text-gray-900">Colour</label>
		    				              <div class="mt-2">
		    				                <input type="text" name="color" class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6 px-1">
		    				              </div>
			             	 	  	 </div>
			             	 	  	 
	    				              <div class="w-full">
		    				              <label for="street-address" class="block text-sm font-medium leading-6 text-gray-900">Image Urls</label>
		    				              <div class="mt-2">
		    				                <input type="text" name="image" class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6 px-1">
		    				              </div>
		             	 	  	 	  </div>
    				              </form>
    				              </div>
    				            </div> 
    				          </div>
    				        </div>
    				        <div class="bg-gray-50 px-4 py-3 sm:flex sm:flex-row-reverse sm:px-6">
    				          <button onclick="return createItem();" type="button" class="inline-flex w-full justify-center rounded-md bg-blue-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-blue-500 sm:ml-3 sm:w-auto">Create</button>
    				          <button onclick="return closeModal();" type="button" class="mt-3 inline-flex w-full justify-center rounded-md bg-white px-3 py-2 text-sm font-semibold text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 hover:bg-gray-50 sm:mt-0 sm:w-auto">Cancel</button>
    				        </div>
    				      </div>
    				    </div>
    				  </div>
    				</div>

    			`;

    			// Inject the HTML content into the div
    			modalDiv.innerHTML = content;
    		}
    		
    		function closeModal() {
    			// Select the div by its ID
    			const modalDiv = document.getElementById("create-modal");

    			// Define the HTML content you want to inject
    			const content = ``;

    			// Inject the HTML content into the div
    			modalDiv.innerHTML = content;
    		}

			function updateOrder() {
				
				var form = document.getElementById('update-status');
				form.submit();
				
			}	
			
			  function displayError(element, message) {
				    const error = document.createElement('div');
				    error.className = 'error-message';
				    error.style.color = 'red';
				    error.style.fontSize = '12px';
				    error.textContent = message;
				    element.closest('div').appendChild(error);
				  }
    	</script>
    </jsp:attribute>
    
    <jsp:attribute name="content">
        <div class="flex align-middle justify-between">
            <h1 class="text-3xl font-bold">${order.customer} <span class="text-gray-500"># (${order.id})</span> <span class="bg-gray-100 text-gray-800 text-xs font-medium me-2 px-2.5 py-0.5 rounded">${order.status}</span></h1>
            <button onclick="return updateOrder();" type="button" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800">
            	${order.status == "pending" ? "Mark As Shipped" : order.status == "shipped" ? "Mark As Completed" : "Mark As Pending"}
            </button>
        </div>
		<form class="hidden" id="update-status" method="POST" action="/music_store/order/update">
			<input value="${order.id}" name="id">
			<input value='${order.status == "pending" ? "shipped" : order.status == "shipped" ? "completed" : "pending"}' name="status">
		</form>
        <div class="relative overflow-x-auto mt-8">
        	<c:if test="${param.status}">
	        	<div class="p-4 mb-4 text-sm text-green-800 rounded-lg bg-green-50" role="alert">
				  <span class="font-medium">Updated successfully.</span>
				</div>
        	</c:if>
        	
        	<div class="w-1/3 rounded-lg p-2 shadow-sm mb-6">
			  <div class="grid grid-cols-2">
			    <h2>Order ID</h2>
			    <p class="text-gray-500"># (${order.id})</p>
			  </div>
			  <div class="grid grid-cols-2">
			    <h2>Customer</h2>
			    <p class="text-gray-500">${order.customer}</p>
			  </div>
			    <div class="grid grid-cols-2">
			    <h2>Total Price</h2>
			    <p class="text-gray-500">Rs.${order.price}</p>
			  </div>
			</div>
			
			<h1 class="text-lg">Order Items</h1>
            <table class="w-full text-sm text-left text-gray-500">
                <thead class="text-xs text-gray-700 uppercase bg-gray-50">
                    <tr>
                        <th scope="col" class="px-6 py-3">Name</th>
                        <th scope="col" class="px-6 py-3">Quantity</th>
                        <th scope="col" class="px-6 py-3">Price</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${order.items}">
                        <tr class="bg-white border-b cursor-pointer">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">${item.name}</th>
                            <td class="px-6 py-4">${item.qty}</td>
                            <td class="px-6 py-4">${item.price}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div id="create-modal"></div>
    </jsp:attribute>

</t:mainLayout>