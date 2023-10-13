<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>SmartBodyGym</title>
        <link href="css/content.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap.min.css" rel="stylesheet">

        <link rel="stylesheet" href="cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css"/>
        <link rel="stylesheet" href="css/_utilities.scss"/>
        <link href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css"  rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.27/dist/sweetalert2.min.css" integrity="sha256-VJuwjrIWHWsPSEvQV4DiPfnZi7axOaiWwKfXaJnR5tA=" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">


    </head>
    <body style="margin: 0; padding: 0;  box-sizing: border-box;">
        <nav class="navbar navbar-expand-sm bg-primary" data-bs-theme="dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="${pageContext.servletContext.contextPath}/index.jsp">Home.</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarColor01">
                    <ul class="navbar-nav me-1">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.servletContext.contextPath}/activities.jsp">Activities</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.servletContext.contextPath}/shop.jsp">Gym Shop</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.servletContext.contextPath}/contact.jsp">Contact</a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="true">Join Us</a>
                            <div class="dropdown-menu" data-bs-popper="static">
                                <a class="dropdown-item" href="${pageContext.servletContext.contextPath}/register.jsp">Register</a>
                                <a class="dropdown-item" href="${pageContext.servletContext.contextPath}/registeredusers.jsp">Registered Users</a>
                            </div>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.servletContext.contextPath}/register.jsp">Register</a>
                        </li>         
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.servletContext.contextPath}/login.jsp" >Login</a>
                        </li>     

                        </li>     
                    </ul>  

                </div>
                <div class="d-flex me-4">
                    <input class="form-control me-lg-2" type="search" placeholder="Search">
                    <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>              
                </div>
                <div>
                    <label class="switch" style="margin-right:  4px">                           
                        <span class="slider round text-white">Ligth Mode</span>
                        <input type="checkbox" id="darkModeToggle">
                    </label>          
                </div>
            </div>
        </nav>


