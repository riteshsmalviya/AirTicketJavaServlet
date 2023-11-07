<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Ticket</title>
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
				<a href="air.jsp"
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
    <div class="container mx-auto my-10">
        <h1 class="text-3xl font-bold text-center mb-5">View Ticket</h1>
        <form method=get action="TicketViewServlet">
            <div class="flex flex-col md:flex-row md:items-center justify-center mb-5">
                <label class="text-xl font-bold mb-2 md:mr-5">Mobile Number:</label>
                <input class="border border-gray-400 py-2 px-3 rounded-lg w-full md:w-auto" type="tel" name="mobilenum" required>
            </div>
            <div class="flex flex-col md:flex-row md:items-center justify-center mb-5">
                <label class="text-xl font-bold mb-2 md:mr-5">Date of Journey:</label>
                <input class="border border-gray-400 py-2 px-3 rounded-lg w-full md:w-auto" type="date" name="dateoftravel" required>
            </div>
            <div class="flex justify-center">
                <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline" type="submit">View Ticket</button>
            </div>
        </form>
        
    </div>
</body>
</html>
