<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management System</title>

<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">

<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">


<style>

/* =========================================================
   STUDENT MANAGEMENT SYSTEM
   PREMIUM BROWN + SAND ADMIN DASHBOARD
========================================================= */

/* GOOGLE FONT */
@import url('https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap');


/* =========================================================
   ROOT COLORS
========================================================= */

:root {
    --brown-dark: #3B241A;
    --brown: #5A3828;
    --brown-light: #76513C;

    --sand: #F4E1C1;
    --sand-light: #FAF0DE;

    --cream: #FFF9F0;

    --gold: #C89B5B;
    --gold-light: #E2BE83;

    --text-dark: #2F211B;
    --text-light: #806F62;

    --white: #FFFFFF;

    --shadow:
        0 10px 30px rgba(59, 36, 26, 0.12);

    --shadow-hover:
        0 18px 40px rgba(59, 36, 26, 0.22);
}


/* =========================================================
   BODY
========================================================= */

/*body {
    margin: 0;
    padding: 0;

    font-family: 'DM Sans', sans-serif;

    background:
        radial-gradient(
            circle at 10% 20%,
            rgba(244, 225, 193, 0.75),
            transparent 35%
        ),
        radial-gradient(
            circle at 90% 80%,
            rgba(200, 155, 91, 0.12),
            transparent 30%
        ),
        var(--cream);

    color: var(--text-dark);

    min-height: 100vh;

    overflow-x: hidden;
}*/

body {
    margin: 0;
    padding: 0;

    font-family: 'DM Sans', sans-serif;

    /* HD warm academic background */
    background:
        linear-gradient(
            rgba(59, 36, 26, 0.62),
            rgba(59, 36, 26, 0.62)
        ),
        url("https://images.stockcake.com/public/a/8/4/a847d14a-b35d-4ea4-b1c0-d1a7332017bc/sunlit-bookshelf-corner-stockcake.jpg");

    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    background-repeat: no-repeat;

    color: var(--text-dark);
    min-height: 100vh;
    overflow-x: hidden;
}


/* =========================================================
   NAVBAR
========================================================= */

.custom-navbar {
    min-height: 72px;

    padding: 10px 30px;

    background:
        linear-gradient(
            135deg,
            #3B241A,
            #5A3828 55%,
            #76513C
        ) !important;

    border-bottom: 3px solid var(--gold);

    box-shadow:
        0 8px 25px rgba(59, 36, 26, 0.25);

    position: relative;

    z-index: 1000;

    animation: navbarSlide 0.8s ease;
}


/* Animated gold line */

.custom-navbar::after {
    content: "";

    position: absolute;

    left: 0;
    right: 0;

    bottom: -3px;

    height: 3px;

    background:
        linear-gradient(
            90deg,
            transparent,
            var(--gold),
            #F4E1C1,
            var(--gold),
            transparent
        );

    animation: goldLine 4s linear infinite;
}


/* =========================================================
   BRAND
========================================================= */

.custom-navbar .navbar-brand {
    display: flex;

    align-items: center;

    gap: 12px;

    font-family: 'Playfair Display', serif;

    font-size: 23px !important;

    letter-spacing: 0.3px;

    color: #FFF9F0 !important;

    transition: all 0.35s ease;

    text-decoration: none !important;
}


.custom-navbar .navbar-brand i {
    width: 43px;
    height: 43px;

    display: flex;

    align-items: center;
    justify-content: center;

    border-radius: 13px;

    background:
        linear-gradient(
            135deg,
            #F4E1C1,
            #E2BE83
        );

    color: var(--brown-dark);

    font-size: 22px;

    box-shadow:
        0 6px 18px rgba(0, 0, 0, 0.20);

    transition: all 0.4s ease;
}


.custom-navbar .navbar-brand:hover {
    transform: translateY(-2px);

    color: #F4E1C1 !important;
}


.custom-navbar .navbar-brand:hover i {
    transform:
        rotate(-8deg)
        scale(1.1);

    box-shadow:
        0 10px 25px rgba(0, 0, 0, 0.30);
}


/* =========================================================
   NAVIGATION
========================================================= */

.custom-navbar .navbar-nav {
    margin-left: 35px;
}


.custom-navbar .nav-item {
    margin: 0 4px;
}


.custom-navbar .nav-link {
    color: #FFF8EE !important;

    font-size: 14px;

    font-weight: 600;

    padding: 12px 15px !important;

    border-radius: 10px;

    transition:
        background 0.3s ease,
        color 0.3s ease,
        transform 0.3s ease;

    position: relative;
}


.custom-navbar .nav-link:hover {
    color: var(--brown-dark) !important;

    background: var(--sand);

    transform: translateY(-2px);

    box-shadow:
        0 5px 15px rgba(0, 0, 0, 0.12);
}


/* Bottom hover line */

.custom-navbar .nav-link::after {
    content: "";

    position: absolute;

    left: 50%;

    bottom: 5px;

    width: 0;

    height: 2px;

    background: var(--gold);

    transition: all 0.3s ease;

    transform: translateX(-50%);
}


.custom-navbar .nav-link:hover::after {
    width: 45%;
}


/* =========================================================
   DROPDOWN
========================================================= */

.custom-navbar .dropdown-menu {
    margin-top: 12px !important;

    padding: 8px;

    border: none !important;

    border-radius: 14px !important;

    background: rgba(255, 249, 240, 0.98);

    box-shadow:
        0 18px 45px rgba(59, 36, 26, 0.22);

    animation: dropdownOpen 0.25s ease;

    overflow: hidden;
}


.custom-navbar .dropdown-item {
    padding: 12px 15px;

    border-radius: 9px;

    color: var(--brown-dark) !important;

    font-size: 14px;

    font-weight: 600;

    transition: all 0.25s ease;
}


.custom-navbar .dropdown-item i {
    margin-right: 8px;

    color: var(--brown);

    transition: transform 0.25s ease;
}


.custom-navbar .dropdown-item:hover {
    background:
        linear-gradient(
            135deg,
            var(--sand),
            #F8E8CE
        ) !important;

    color: var(--brown-dark) !important;

    transform: translateX(5px);
}


.custom-navbar .dropdown-item:hover i {
    transform: scale(1.2);

    color: var(--gold);
}


.custom-navbar .dropdown-divider {
    border-color:
        rgba(90, 56, 40, 0.12);
}


/* =========================================================
   NAVBAR SEARCH
========================================================= */

.custom-navbar .form-inline {
    margin-left: auto;
}


.custom-navbar .form-inline .form-control {
    height: 42px !important;

    min-width: 190px;

    border: 1px solid rgba(244, 225, 193, 0.5) !important;

    border-radius: 12px !important;

    background:
        rgba(255, 249, 240, 0.12) !important;

    color: white !important;

    backdrop-filter: blur(10px);

    transition: all 0.3s ease;
}


.custom-navbar .form-inline .form-control::placeholder {
    color:
        rgba(255, 249, 240, 0.75);
}


.custom-navbar .form-inline .form-control:focus {
    background:
        rgba(255, 249, 240, 0.20) !important;

    border-color:
        var(--gold) !important;

    box-shadow:
        0 0 0 3px
        rgba(200, 155, 91, 0.18) !important;

    outline: none;
}


/* Search button */

.custom-navbar .btn-outline-success {
    height: 42px;

    border: 1px solid var(--sand) !important;

    border-radius: 11px !important;

    color: var(--sand) !important;

    font-weight: 600;

    transition: all 0.3s ease;
}


.custom-navbar .btn-outline-success:hover {
    background:
        var(--sand) !important;

    color:
        var(--brown-dark) !important;

    border-color:
        var(--sand) !important;

    transform:
        translateY(-2px);

    box-shadow:
        0 6px 18px rgba(0, 0, 0, 0.18);
}


/* =========================================================
   MOBILE BUTTON
========================================================= */

.custom-navbar .navbar-toggler {
    border:
        1px solid rgba(244, 225, 193, 0.6) !important;

    border-radius: 10px;

    padding: 8px 11px;

    transition: all 0.3s ease;
}


.custom-navbar .navbar-toggler:hover {
    background:
        rgba(244, 225, 193, 0.15);

    transform:
        scale(1.05);
}


.custom-navbar .navbar-toggler-icon {
    filter:
        brightness(0)
        invert(1);
}


/* =========================================================
   PAGE CONTENT
========================================================= */

.container {
    animation:
        pageFade 0.9s ease;

    position: relative;
}


/* =========================================================
   BACKGROUND DECORATION
========================================================= */

body::before {
    content: "";

    position: fixed;

    width: 250px;
    height: 250px;

    border-radius: 50%;

    background:
        radial-gradient(
            circle,
            rgba(244, 225, 193, 0.75),
            transparent 70%
        );

    top: 120px;
    left: -100px;

    z-index: 0;

    pointer-events: none;

    animation:
        floatingCircle 8s ease-in-out infinite;
}


body::after {
    content: "";

    position: fixed;

    width: 300px;
    height: 300px;

    border-radius: 50%;

    background:
        radial-gradient(
            circle,
            rgba(200, 155, 91, 0.12),
            transparent 70%
        );

    right: -130px;
    bottom: 50px;

    z-index: 0;

    pointer-events: none;

    animation:
        floatingCircle2 10s ease-in-out infinite;
}


/* =========================================================
   TABLE
========================================================= */

.table {
    background:
        rgba(255, 255, 255, 0.85);

    border-radius: 15px;

    overflow: hidden;

    box-shadow:
        var(--shadow);

    border: none !important;
}


.table thead th {
    background:
        linear-gradient(
            135deg,
            var(--brown-dark),
            var(--brown)
        );

    color: white;

    border: none;

    padding: 15px;

    font-size: 14px;
}


.table tbody td {
    padding: 13px 15px;

    border-color:
        rgba(90, 56, 40, 0.08);

    vertical-align: middle;
}


.table tbody tr {
    transition: all 0.25s ease;
}


.table tbody tr:hover {
    background:
        var(--sand-light);

    transform:
        scale(1.005);
}


/* =========================================================
   BUTTONS
========================================================= */

.btn-primary {
    background:
        linear-gradient(
            135deg,
            var(--brown),
            var(--brown-light)
        ) !important;

    border: none !important;

    border-radius: 10px !important;

    box-shadow:
        0 5px 15px
        rgba(90, 56, 40, 0.20);

    transition:
        all 0.3s ease;
}


.btn-primary:hover {
    transform:
        translateY(-2px);

    box-shadow:
        0 9px 22px
        rgba(90, 56, 40, 0.30);
}


/* =========================================================
   LINKS
========================================================= */

a {
    transition:
        all 0.25s ease;
}


/* =========================================================
   SCROLLBAR
========================================================= */

::-webkit-scrollbar {
    width: 9px;
}


::-webkit-scrollbar-track {
    background:
        var(--sand-light);
}


::-webkit-scrollbar-thumb {
    background:
        linear-gradient(
            var(--brown),
            var(--gold)
        );

    border-radius: 20px;
}


::-webkit-scrollbar-thumb:hover {
    background:
        var(--brown-dark);
}


/* =========================================================
   ANIMATIONS
========================================================= */

@keyframes navbarSlide {

    from {
        opacity: 0;
        transform: translateY(-25px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}


@keyframes pageFade {

    from {
        opacity: 0;
        transform: translateY(15px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}


@keyframes dropdownOpen {

    from {
        opacity: 0;

        transform:
            translateY(-8px)
            scale(0.98);
    }

    to {
        opacity: 1;

        transform:
            translateY(0)
            scale(1);
    }
}


@keyframes goldLine {

    0% {
        opacity: 0.4;
        transform: translateX(-20%);
    }

    50% {
        opacity: 1;
        transform: translateX(0);
    }

    100% {
        opacity: 0.4;
        transform: translateX(20%);
    }
}


@keyframes floatingCircle {

    0%,
    100% {
        transform: translateY(0);
    }

    50% {
        transform: translateY(35px);
    }
}


@keyframes floatingCircle2 {

    0%,
    100% {
        transform: translateY(0);
    }

    50% {
        transform: translateY(-40px);
    }
}


/* =========================================================
   RESPONSIVE
========================================================= */

@media (max-width: 991px) {

    .custom-navbar {
        padding: 10px 18px;
    }

    .custom-navbar .navbar-nav {
        margin-left: 0;
        margin-top: 12px;
    }

    .custom-navbar .nav-link {
        margin-bottom: 4px;
    }

    .custom-navbar .form-inline {
        margin-top: 12px;
        padding-bottom: 8px;
    }

    .custom-navbar .form-inline .form-control {
        width: 100%;
        min-width: 0;
    }
}


@media (max-width: 576px) {

    .custom-navbar .navbar-brand {
        font-size: 18px !important;
    }

    .custom-navbar .navbar-brand i {
        width: 37px;
        height: 37px;

        font-size: 18px;
    }

    .custom-navbar {
        min-height: 65px;
    }
}



</style>


</head>
<body>
      <nav class="navbar navbar-expand-lg navbar-dark custom-navbar">
		<a class="navbar-brand font-weight-bold text-white" href="#">
     <i class="bi bi-book-half"></i>
     Student Management System
</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="bi bi-book"></i>  Course Master
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
       <a class="dropdown-item" href="${pageContext.request.contextPath}/addnewcourse"><i class="bi bi-plus-circle"></i>
Add New Course</a>
         <a class="dropdown-item" href="${pageContext.request.contextPath}/course/viewcourse"><i class="bi bi-eye-fill"></i> View Course</a>
        </div>
      </li>
				<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="bi bi-book"></i>  Study Material
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
       <a class="dropdown-item" href="${pageContext.request.contextPath}/upload/material"><i class="bi bi-upload"></i> Upload Matrial</a>
         <a class="dropdown-item" href="${pageContext.request.contextPath}/upload/viewstudymaterial"><i class="bi bi-eye-fill"></i> View Material</a>
        </div>
      </li>
				
				<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="bi bi-people-fill"></i> Student Master </a>
					
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="${pageContext.request.contextPath}/stud/newstudent"><i class="bi bi-person-plus-fill"></i> Add New Student</a> 
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="${pageContext.request.contextPath}/stud/viewstud"><i class="bi bi-eye-fill"></i> View Student</a>
					</div>
					</li>
					
			</ul>
			
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>






	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>