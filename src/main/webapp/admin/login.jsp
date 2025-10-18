<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<script>
  
  function submitForm() {
	  	var form = document.getElementById("admin-login-form")
	    // Clear previous error messages
	    document.querySelectorAll('.error-message').forEach(function(el) {
	      el.remove();
	    });

	    let isValid = true;

	    // Validate Email
	    const email = document.getElementById('email');
	    if (!email.value.trim()) {
	      displayError(email, 'Email is required');
	      isValid = false;
	    }

	    // Validate Password
	    const password = document.getElementById('password');
	    if (!password.value.trim()) {
	      displayError(password, 'Password is required');
	      isValid = false;
	    }

	    // Validate Remember Me checkbox
	    const remember = document.getElementById('remember');
	    if (!remember.checked) {
	      displayError(remember, 'You must agree to the terms');
	      isValid = false;
	    }

	    // If all fields are valid, submit the form
	    if (isValid) {
	    	form.submit();
	    }
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

  <div class="flex h-screen items-center justify-center">
  <div class="w-full max-w-sm rounded-lg border border-gray-200 bg-white p-4 shadow sm:p-6 md:p-8">
    <form id="admin-login-form" class="space-y-6" action="/music_store/admin/login" method="POST">
      <h5 class="text-xl font-medium text-gray-900">Sign in</h5>
      <%
      	if(request.getParameter("status") != null) {
      %>
		<h4 class="text-red-500 text-lg">${param.status}</h4>      
      <% 
      	}
      %>

      <div>
        <label for="email" class="mb-2 block text-sm font-medium text-gray-900">Your email</label>
        <input type="text" name="email" id="email" class="block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-blue-500 focus:ring-blue-500" placeholder="name@company.com" />
      </div>
      <div>
        <label for="password" class="mb-2 block text-sm font-medium text-gray-900">Your password</label>
        <input type="password" name="password" id="password" placeholder="••••••••" class="block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-blue-500 focus:ring-blue-500" />
      </div>
      <div class="flex items-start">
        <div class="flex items-start">
          <div class="flex h-5 items-center">
            <input id="remember" type="checkbox" value="" class="focus:ring-3 h-4 w-4 rounded border border-gray-300 bg-gray-50 focus:ring-blue-300" required />
          </div>
          <label for="remember" class="ms-2 text-sm font-medium text-gray-900">Remember me</label>
        </div>
        <a href="#" class="ms-auto text-sm text-blue-700 hover:underline">Lost Password?</a>
      </div>
      <button onclick="return submitForm();" class="w-full rounded-lg bg-blue-700 px-5 py-2.5 text-center text-sm font-medium text-white hover:bg-blue-800 focus:outline-none focus:ring-4 focus:ring-blue-300">Login to your account</button>
      <div class="text-sm font-medium text-gray-500">Stock keeper <a href="/music_store/ShopKeeperloginjsp.jsp" class="text-blue-700 hover:underline">Stock keeper login</a></div>
    </form>
  </div>
  </div>


</body>
</html>