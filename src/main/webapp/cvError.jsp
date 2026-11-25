<%-- 
    Document   : cvError
    Created on : Nov 21, 2026, 11:46:13 AM
    Author     : YOON
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>CV Builder - Error</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f2f4f8;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        .error-container {
            background: white;
            width: 400px;
            padding: 35px;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0 3px 12px rgba(0,0,0,0.1);
        }

        h1 {
            color: #d9534f;
        }

        .message {
            color: #555;
            background: #fff0f0;
            padding: 15px;
            border-radius: 5px;
            margin: 20px 0;
        }

        a {
            display: inline-block;
            background: #315b91;
            color: white;
            padding: 12px 20px;
            text-decoration: none;
            border-radius: 5px;
        }

        a:hover {
            background: #243b64;
        }
    </style>
</head>

<body>

    <div class="error-container">

        <h1>Oops! Something Went Wrong</h1>

        <p>Your CV could not be generated.</p>

        <div class="message">
            ${requestScope.errorMessage}
        </div>

        <p>Please return to the form and correct your information.</p>

        <a href="${pageContext.request.contextPath}/cvForm.jsp">
            Back to CV Form
        </a>

    </div>

</body>
</html>
