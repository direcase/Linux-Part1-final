<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.js" crossorigin="anonymous"></script>
</head>
<body class=" bg-yellow-200 ">
<section class="text-gray-600 body-font relative rounded-lg" >
    <div class="container px-5 py-24 mx-auto ">
        <div class="flex flex-col text-center w-full mb-12">
            <h1 class="sm:text-3xl text-2xl font-medium title-font mb-4 text-gray-900">Best Fit</h1>
            <p class="lg:w-2/3 mx-auto leading-relaxed text-base">Enter here block and memory sizes.</p>
        </div>
        <div class="lg:w-1/2 md:w-2/3 mx-auto">
            <form method="post" action="<%=request.getContextPath()%>/hello-servlet" class="flex flex-wrap -m-2">
                    <div class="p-2 w-1/2">
                        <div class="relative">
                            <label for="name" class="leading-7 text-sm text-gray-600">Block 1</label>
                            <input type="text" name="blocksize" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                        </div>
                    </div>
                    <div class="p-2 w-1/2">
                        <div class="relative">
                            <label class="leading-7 text-sm text-gray-600">Memory 1</label>
                            <input type="number" id="email" name="mem1" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                        </div>
                    </div>
                    <div class="p-2 w-1/2">
                        <div class="relative">
                            <label for="name" class="leading-7 text-sm text-gray-600">Block 2</label>
                            <input type="number" name="block2" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                        </div>
                    </div>
                    <div class="p-2 w-1/2">
                        <div class="relative">
                            <label class="leading-7 text-sm text-gray-600">Memory 2</label>
                            <input type="number" name="mem2" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                        </div>
                    </div>
                    <div class="p-2 w-1/2">
                        <div class="relative">
                            <label for="name" class="leading-7 text-sm text-gray-600">Block 3</label>
                            <input type="number" name="block3" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                        </div>
                    </div>
                    <div class="p-2 w-1/2">
                        <div class="relative">
                            <label class="leading-7 text-sm text-gray-600">Memory 3</label>
                            <input type="number" name="mem3" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                        </div>
                    </div>
                    <div class="p-2 w-1/2">
                        <div class="relative">
                            <label for="name" class="leading-7 text-sm text-gray-600">Block 4</label>
                            <input type="number" name="block4" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                        </div>
                    </div>
                    <div class="p-2 w-1/2">
                        <div class="relative">
                            <label class="leading-7 text-sm text-gray-600">Memory 4</label>
                            <input type="number" name="mem4" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                        </div>
                    </div>
                    <div class="p-2 w-1/2">
                        <div class="relative">
                            <label for="name" class="leading-7 text-sm text-gray-600">Block 5</label>
                            <input type="number" id="name" name="block5" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                        </div>
                    </div>
                    <div class="p-2 w-full">
                        <input type="submit" class="flex mx-auto text-white bg-yellow-500 border-0 py-2 px-8 focus:outline-none hover:bg-yellow-600 rounded text-lg">
                    </div>
            </form>
        </div>
    </div>
</section>
<div class="container px-5 py-24 mx-auto flex flex-wrap items-center" style="margin-left: 25%">
    <div class="lg:w-3/6 md:w-1/2 md:pr-16 lg:pr-0 pr-0">
        <table>
            <thead>
            <tr>
                <th><h1 style="text-align: center" class="title-font font-medium text-3xl text-gray-900">process mem size</h1></th>
                <th><h1 style="text-align: center" class="title-font font-medium text-3xl text-gray-900">block mem size</h1></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${bestFits}" var="bestFits">
                <tr>
                    <td>
                        <p class="leading-relaxed mt-4" style="text-align: center">${bestFits.process}</p>
                    </td>
                    <td>
                        <p class="leading-relaxed mt-4" style="text-align: center">${bestFits.block}</p>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>