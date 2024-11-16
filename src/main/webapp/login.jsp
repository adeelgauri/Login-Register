<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login JSP</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body
	class="flex items-center justify-center min-h-screen bg-no-repeat bg-fixed bg-cover bg-[url('https://img.freepik.com/free-vector/gradient-futuristic-background-with-spheres_23-2149110136.jpg?t=st=1731515247~exp=1731518847~hmac=2a30ada9d7fe4243fea9f59eb96dc453da25e46dea7812d86c11e9161fedb9d3&w=1380')]">

	<div
		class="w-full max-w-md p-8 space-y-8 bg-white shadow-lg rounded-lg">
		<h2 class="text-2xl font-bold text-center text-gray-900">Login to
			Your Account</h2>

		<form action="LoginServlet" method="POST" class="space-y-6">
			<!-- Username Field -->
			<div>
				<label for="username"
					class="block text-sm font-medium text-gray-700">Username</label> <input
					type="text" id="username" name="username" required
					class="w-full p-3 mt-1 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
			</div>

			<!-- Password Field -->
			<div>
				<label for="password"
					class="block text-sm font-medium text-gray-700">Password</label> <input
					type="password" id="password" name="password" required
					class="w-full p-3 mt-1 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
			</div>

			<!-- Login Button -->
			<div>
				<button type="submit"
					class="w-full py-3 font-semibold text-white bg-blue-500 rounded-lg hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2">
					Login</button>
			</div>
		</form>

		<!-- Footer Links -->
		<div class="flex justify-center text-sm text-gray-600">

			<a href="register.jsp" class="mr-2 hover:underline">Create Account</a>
			<a href="Index.html" class="mr-2 hover:underline">Back to Home</a>
		</div>
		
		<%  String error = request.getParameter("error");
			if(error != null && error.equals("1")){ %>
			
				<p class = "flex justify-center text-red-500"> Invalid username or password </p>
		<% 
			}
		%>
				
		<%  String success = request.getParameter("registration");
			if(success != null && success.equals("success")){ %>
			
				<p class = "flex justify-center text-green-500"> User add successfully plz login</p>
		<% 
			}
		%>
		
	</div>

</body>
</html>