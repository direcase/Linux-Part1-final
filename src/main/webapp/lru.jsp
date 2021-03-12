<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 12.03.2021
  Time: 1:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.js" crossorigin="anonymous"></script>
</head>
<body>
<section class="text-gray-600 body-font">
    <div class="container px-5 py-24 mx-auto flex flex-wrap items-center">
        <div class="lg:w-3/5 md:w-1/2 md:pr-16 lg:pr-0 pr-0">
            <h1 class="title-font font-medium text-3xl text-gray-900">Result:</h1>
            <p class="leading-relaxed mt-4">Frames: ${frames} </p>
            <p class="leading-relaxed mt-4">String: ${s}</p>
            <p class="leading-relaxed mt-4">Result string: ${s1}</p>
        </div>
        <div class="lg:w-2/6 md:w-1/2 bg-gray-100 rounded-lg p-8 flex flex-col md:ml-auto w-full mt-10 md:mt-0">
            <h2 class="text-gray-900 text-lg font-medium title-font mb-5">LRU</h2>
            <form method="post" action="<%=request.getContextPath()%>/lru">
                <div class="relative mb-4">
                    <label for="full-name" class="leading-7 text-sm text-gray-600">Number of frames</label>
                    <input type="text" id="full-name" name="full-name" class="w-full bg-white rounded border border-gray-300 focus:border-yellow-500 focus:ring-2 focus:ring-yellow-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                </div>
                <div class="relative mb-4">
                    <label for="email" class="leading-7 text-sm text-gray-600">String</label>
                    <input type="text" id="email" name="email" class="w-full bg-white rounded border border-gray-300 focus:border-yellow-500 focus:ring-2 focus:ring-yellow-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                </div>
                <input type="submit" class="text-white bg-yellow-500 border-0 py-2 px-8 focus:outline-none hover:bg-yellow-600 rounded text-lg">
            </form>
        </div>
    </div>
</section>
</body>
</html>
