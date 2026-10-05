<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	
	<style>
	@import url('https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap');
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
}


/* =========================================================
   BODY
   ========================================================= */

body {
    margin: 0;

    min-height: 100vh;

    font-family: 'DM Sans', sans-serif;

    display: flex;

    align-items: center;

    justify-content: center;

    position: relative;

    overflow: hidden;

    /* Background image */
    background-image:
        linear-gradient(
            rgba(59, 36, 26, 0.68),
            rgba(59, 36, 26, 0.68)
        ),
        url("https://images.unsplash.com/photo-1568667256549-094345857637?auto=format&fit=crop&w=2000&q=85");

    background-size: cover;

    background-position: center;

    background-repeat: no-repeat;

    background-attachment: fixed;
}

/* =========================================================
   BACKGROUND DECORATIVE CIRCLES
   ========================================================= */

body::before {

    content: "";

    position: fixed;

    width: 380px;
    height: 380px;

    border-radius: 50%;

    background:
        radial-gradient(
            circle,
            rgba(90, 56, 40, 0.10),
            transparent 68%
        );

    top: -170px;

    left: -120px;

    animation:
        floatingShape 8s ease-in-out infinite;

    pointer-events: none;
}


body::after {

    content: "";

    position: fixed;

    width: 450px;
    height: 450px;

    border-radius: 50%;

    background:
        radial-gradient(
            circle,
            rgba(200, 155, 91, 0.15),
            transparent 68%
        );

    right: -190px;

    bottom: -200px;

    animation:
        floatingShape2 10s ease-in-out infinite;

    pointer-events: none;
}


/* =========================================================
   LOGIN CONTAINER
   ========================================================= */

.container {

    width: 430px;

    max-width: calc(100% - 40px);

    margin: 0 !important;

    padding: 45px 42px !important;

    background: rgba(255, 249, 240, 0.96) !important;

    border-radius: 24px;

    border: 1px solid rgba(255, 255, 255, 0.45);

    box-shadow:
        0 30px 80px rgba(0, 0, 0, 0.40),
        0 10px 30px rgba(59, 36, 26, 0.25);

    position: relative;

    z-index: 5;

    backdrop-filter: blur(8px);

    animation: loginAppear 0.8s ease;
}

.login-logo {
    position: absolute;
    top: -35px;
    left: 50%;
    transform: translateX(-50%);

    width: 68px;
    height: 68px;

    display: flex;
    align-items: center;
    justify-content: center;

    background: var(--cream);
    border: 4px solid var(--gold);
    border-radius: 50%;

    box-shadow:
        0 8px 25px rgba(59, 36, 26, 0.25);

    animation: iconFloat 4s ease-in-out infinite;

    overflow: hidden;
}

.login-logo img {
    width: 52px;
    height: 52px;
    object-fit: contain;
}

/* =========================================================
   TOP GOLD DECORATION
   ========================================================= */

.container::before {

    content: "";

    position: absolute;

    top: 0;

    left: 50%;

    transform: translateX(-50%);

    width: 110px;

    height: 5px;

    background:
        linear-gradient(
            90deg,
            var(--brown),
            var(--gold),
            var(--brown)
        );

    border-radius:
        0 0 10px 10px;
}


/* =========================================================
   ACADEMIC ICON
   ========================================================= */

.container::after {

    content: "🎓";

    width: 68px;

    height: 68px;

    position: absolute;

    top: -35px;

    left: 50%;

    transform: translateX(-50%);

    display: flex;

    align-items: center;

    justify-content: center;

    background:
        linear-gradient(
            135deg,
            var(--brown-dark),
            var(--brown)
        );

    border: 5px solid var(--cream);

    border-radius: 50%;

    font-size: 28px;

    box-shadow:
        0 8px 25px rgba(59, 36, 26, 0.25);

    animation:
        iconFloat 4s ease-in-out infinite;
}


/* =========================================================
   FORM
   ========================================================= */

form {

    margin-top: 28px;
}


/* =========================================================
   INPUT GROUP
   ========================================================= */

.form-group {

    margin-bottom: 20px;

    position: relative;
}


/* =========================================================
   INPUT FIELDS
   ========================================================= */

.form-control {

    height: 50px !important;

    padding: 12px 16px !important;

    border-radius: 12px !important;

    border:
        1px solid rgba(90, 56, 40, 0.20) !important;

    background:
        rgba(255, 255, 255, 0.80) !important;

    color:
        var(--text-dark) !important;

    font-family:
        'DM Sans', sans-serif;

    font-size: 14px;

    transition:
        all 0.3s ease;

    box-shadow:
        0 3px 10px rgba(59, 36, 26, 0.04);
}


/* Input placeholder */

.form-control::placeholder {

    color:
        #9B897B;

    transition:
        all 0.25s ease;
}


/* Focus */

.form-control:focus {

    border-color:
        var(--gold) !important;

    background:
        #FFFFFF !important;

    box-shadow:
        0 0 0 3px rgba(200, 155, 91, 0.18),
        0 8px 20px rgba(59, 36, 26, 0.08) !important;

    transform:
        translateY(-1px);

    outline: none;
}


.form-control:focus::placeholder {

    opacity: 0.5;
}


/* =========================================================
   USERNAME INPUT
   ========================================================= */

input[name="username"] {

    background-image:
        linear-gradient(
            135deg,
            transparent 0,
            transparent 0
        );

    padding-left: 18px !important;
}


/* =========================================================
   PASSWORD INPUT
   ========================================================= */

input[name="password"] {

    padding-left: 18px !important;
}


/* =========================================================
   LOGIN BUTTON
   ========================================================= */

input[type="submit"] {

    height: 52px !important;

    margin-top: 5px;

    border: none !important;

    border-radius: 13px !important;

    background:
        linear-gradient(
            135deg,
            var(--brown-dark),
            var(--brown),
            var(--brown-light)
        ) !important;

    color:
        var(--white) !important;

    font-size: 15px;

    font-weight: 700;

    letter-spacing: 0.5px;

    cursor: pointer;

    box-shadow:
        0 8px 20px rgba(90, 56, 40, 0.25);

    transition:
        all 0.3s ease;

    position: relative;

    overflow: hidden;
}


/* Button shine */

input[type="submit"]::after {

    content: "";

    position: absolute;

    top: 0;

    left: -100%;

    width: 70%;

    height: 100%;

    background:
        linear-gradient(
            90deg,
            transparent,
            rgba(255,255,255,0.20),
            transparent
        );

    transform:
        skewX(-20deg);

    transition:
        left 0.6s ease;
}


input[type="submit"]:hover {

    transform:
        translateY(-3px);

    background:
        linear-gradient(
            135deg,
            var(--brown),
            var(--brown-light)
        ) !important;

    box-shadow:
        0 13px 28px rgba(90, 56, 40, 0.32);
}


input[type="submit"]:hover::after {

    left: 130%;
}


input[type="submit"]:active {

    transform:
        translateY(-1px);

    box-shadow:
        0 5px 12px rgba(90, 56, 40, 0.20);
}


/* =========================================================
   ERROR / MESSAGE
   ========================================================= */

.form-group:last-child {

    min-height: 25px;

    margin-top: 5px;

    margin-bottom: 0;

    text-align: center;

    color:
        #A33A2B;

    font-size: 13px;

    font-weight: 600;
}


/* =========================================================
   OPTIONAL LOGIN TITLE
   ========================================================= */

.container form::before {

    content:
        "Student Management System";

    display: block;

    text-align: center;

    font-family:
        'Playfair Display',
        serif;

    font-size: 25px;

    font-weight: 700;

    color:
        var(--brown-dark);

    margin-bottom: 7px;
}


.container form::after {

    content:
        "Admin Login";

    display: block;

    text-align: center;

    font-size: 13px;

    font-weight: 600;

    letter-spacing: 1.5px;

    text-transform: uppercase;

    color:
        var(--gold);

    margin-bottom: 28px;
}


/* =========================================================
   ANIMATIONS
   ========================================================= */

@keyframes loginAppear {

    from {

        opacity: 0;

        transform:
            translateY(35px)
            scale(0.96);
    }

    to {

        opacity: 1;

        transform:
            translateY(0)
            scale(1);
    }
}


@keyframes iconFloat {

    0%,
    100% {

        transform:
            translateX(-50%)
            translateY(0);
    }

    50% {

        transform:
            translateX(-50%)
            translateY(-7px);
    }
}


@keyframes floatingShape {

    0%,
    100% {

        transform:
            translate(0, 0);
    }

    50% {

        transform:
            translate(25px, 25px);
    }
}


@keyframes floatingShape2 {

    0%,
    100% {

        transform:
            translate(0, 0);
    }

    50% {

        transform:
            translate(-30px, -25px);
    }
}


/* =========================================================
   RESPONSIVE
   ========================================================= */

@media (max-width: 576px) {

    .container {

        max-width:
            calc(100% - 30px);

        padding:
            40px 25px !important;

        border-radius:
            20px;
    }


    .container form::before {

        font-size:
            21px;
    }


    .form-control {

        height:
            48px !important;
    }
}

	
	</style>
</head>
<body>

       
       <div class="container m-5 p-5 bg-dark text-white">

    <div class="login-logo">
        <img src="${pageContext.request.contextPath}/images/education.png"
             alt="Student Management System Logo">
    </div>
    
		<form name='frm' action='validate' method="POST">
			<div class='form-group'>
				<input type='text' name='username' value='' class='form-control' />
			</div>

			<div class='form-group'>
				<input type='text' name='password' value='' class='form-control' />
			</div>

			<div class='form-group'>
				<input type='submit' name='s' value='Login' class='form-control' />
			</div>

			<div class='form-group'>${msg}</div>

		</form>
	</div>






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