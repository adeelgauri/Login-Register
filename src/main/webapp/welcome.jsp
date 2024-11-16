<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome page</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body
	class="min-h-screen flex items-center justify-center bg-no-repeat bg-fixed bg-cover bg-[url('https://img.freepik.com/free-vector/gradient-futuristic-background-with-spheres_23-2149110136.jpg?t=st=1731515247~exp=1731518847~hmac=2a30ada9d7fe4243fea9f59eb96dc453da25e46dea7812d86c11e9161fedb9d3&w=1380')]">

	<%
	HttpSession httpSession = request.getSession(false);
	if (httpSession != null && httpSession.getAttribute("username") != null) {
		String username = (String) httpSession.getAttribute("username");
	%>
	<div class="bg-white p-8 rounded-lg shadow-lg text-center max-w-md">
		<h1 class="text-2xl font-bold text-gray-800 mb-4">
			Welcome,
			<%=username.toUpperCase()%></h1>
		<p class="text-gray-600 mb-6">You have successfully logged in to
			your account.</p>

		<p class="text-gray-600 mb-6" s>Welcome to my page. I you give
			batter experince</p>
		<p class="text-gray-600 mb-6">Thank you for choose website</p>

<!--  		<a href="LogoutServlet" method="POST"
			class="inline-block bg-red-500 text-white py-2 px-4 rounded hover:bg-red-600 transition">
			Logout </a>  -->

		<form action="LogoutServlet" method="POST" class="inline-block bg-red-500 text-white py-2 px-4 rounded hover:bg-red-600 transition">
			<button type="submit">Logout</button>
			
		</form>

		<div class="flex justify-center text-sm text-gray-600">

			<a href="Index.html" class="mt-4 hover:underline">Back to Home</a>
		</div>

	</div>

	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>


</body>

</html>