<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Ritesh Rohit Global Travels</title>
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Kanit&display=swap"
	rel="stylesheet">
</head>
<body style="font-family: 'Kanit', sans-serif;">
	<header class="text-gray-600 body-font">
		<div
			class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
			<a
				class="flex title-font font-medium items-center text-gray-900 mb-4 md:mb-0">
				<span class="ml-3 text-3xl font-bold">Ritesh Rohit Global
					Travels</span>
			</a>
			<nav
				class="md:mr-auto md:ml-4 md:py-1 md:pl-4 md:border-l md:border-gray-400	flex flex-wrap items-center text-base justify-center">
				<a href="#"
					class="mr-5 hover:text-gray-900 cursor-pointer text-lg hover:bg-purple-300 p-1 rounded-lg animate-bounce
animate-bounce
animate-bounce">Air
					Tickets</a> <a href="view.jsp"
					class="mr-5 hover:text-gray-900 cursor-pointer text-lg hover:bg-purple-300 p-1 rounded-lg animate-bounce
animate-bounce
animate-bounce">View Ticket</a> <a href="index.jsp"
					class="mr-5 hover:text-gray-900 cursor-pointer text-lg hover:bg-purple-300 p-1 rounded-lg animate-bounce
animate-bounce
animate-bounce">Home</a>
			</nav>
		</div>
	</header>
	
	<section class="text-gray-600 body-font overflow-hidden">
		<div class="container px-5 px-5 pt-4 pb-4 mx-auto">
			<div
				class="flex flex-col text-center w-full mb-20 p-2 rounded-lg text-gray-900">
				<h1 class="text-6xl font-bold title-font mb-4 ">Air Tickets</h1>
				<div
					class=" bg-gray-100 rounded-lg p-8 flex flex-col md:ml-auto w-full mt-10 md:mt-0">
					<form method="post" action="book">
						<div class="flex mb-4">
							<div class="w-1/3 pr-2">
								<label for="full-name" class="leading-7 text-sm text-gray-600">Full
									Name</label> <input type="text" id="fullname" name="fullname"
									class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
							</div>
							<div class="w-1/3 px-2">
								<label for="email" class="leading-7 text-sm text-gray-600">Email</label>
								<input type="email" id="email" name="email"
									class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
							</div>
							<div class="w-1/3 px-2">
								<label for="mobile" class="leading-7 text-sm text-gray-600">Mobile</label>
								<input type="tel" id="mobile" name="mobile"
									class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
							</div>
						</div>

						<div class="flex mb-4">
							<div class="w-1/3 pr-2">
								<label for="from" class="leading-7 text-sm text-gray-600">From
									City</label> <input type="text" id="from" name="from"
									class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
							</div>
							<div class="w-1/3 px-2">
								<label for="destination" class="leading-7 text-sm text-gray-600">Destination</label>
								<input type="text" id="destination" name="destination"
									class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
							</div>
							<div class="w-1/3 px-2">
								<label for="date" class="leading-7 text-sm text-gray-600">Date
									Of Travel</label> <input type="date" id="dot" name="dot"
									class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
							</div>
						</div>

						<button
							class="text-white bg-indigo-500 border-0 py-2 px-8 focus:outline-none hover:bg-indigo-600 rounded text-lg" type="submit">Button</button>
					</form>
				</div>
			</div>
	</section>

</body>
</html>