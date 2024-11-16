<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body
	class="min-h-screen flex items-center justify-center bg-no-repeat bg-fixed bg-cover bg-[url('https://img.freepik.com/free-vector/gradient-futuristic-background-with-spheres_23-2149110136.jpg?t=st=1731515247~exp=1731518847~hmac=2a30ada9d7fe4243fea9f59eb96dc453da25e46dea7812d86c11e9161fedb9d3&w=1380')]">

	<div
		class="w-full max-w-md p-8 space-y-4 bg-white rounded-lg shadow-md">
		<h2 class="text-2xl font-bold text-center text-gray-800">Create
			an Account</h2>

		<form action="RegisterServlet" method="POST" class="space-y-4">
			<!-- Username -->
			<div>
				<label for="name" class="block text-sm font-medium text-gray-700">Username</label> <input type="text" id="name" name="name" required
					class="w-full mt-1 px-4 py-2 border border-gray-300 rounded-lg focus:ring-indigo-500 focus:border-indigo-500">
			</div>

			<!-- Email -->
			<div>
				<label for="email" class="block text-sm font-medium text-gray-700">Email</label>
				<input type="email" id="email" name="email" required
					class="w-full mt-1 px-4 py-2 border border-gray-300 rounded-lg focus:ring-indigo-500 focus:border-indigo-500">
			</div>

			<!-- Password -->
			<div>
				<label for="password"
					class="block text-sm font-medium text-gray-700">Password</label> <input
					type="password" id="password" name="password" required
					class="w-full mt-1 px-4 py-2 border border-gray-300 rounded-lg focus:ring-indigo-500 focus:border-indigo-500">
			</div>

			<!-- Submit Button -->
			<div>
				<button type="submit"
					class="w-full py-3 font-semibold text-white bg-blue-500 rounded-lg hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2">
					Register</button>
			</div>
		</form>

		<div class="flex justify-center text-sm text-gray-600">

			<a href="Index.html" class="hover:underline">Back to Home</a>
		</div>
		
	</div>

</body>
</html>