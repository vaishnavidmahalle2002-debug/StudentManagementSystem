<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
/* =========================================================
   UPDATE COURSE PAGE
   Brown + Sand / Light Orange Theme
   ========================================================= */

@import url('https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap');


/* ---------- PAGE ---------- */

body {
    margin: 0;
    min-height: 100vh;

    font-family: 'DM Sans', sans-serif;

    background:
        radial-gradient(
            circle at 10% 20%,
            rgba(200, 155, 91, 0.20),
            transparent 28%
        ),
        radial-gradient(
            circle at 90% 80%,
            rgba(118, 81, 60, 0.16),
            transparent 30%
        ),
        linear-gradient(
            135deg,
            #fff9f0 0%,
            #f4e1c1 50%,
            #ead0a6 100%
        );

    color: #3b241a;
}


/* ---------- MAIN CARD ---------- */

.container.p-5.m-5 {
    width: 520px;
    max-width: calc(100% - 40px);

    margin: 60px auto !important;
    padding: 45px !important;

    background: rgba(255, 249, 240, 0.97);

    border: 1px solid rgba(200, 155, 91, 0.35);
    border-radius: 24px;

    box-shadow:
        0 25px 60px rgba(59, 36, 26, 0.20),
        0 8px 20px rgba(59, 36, 26, 0.10);

    position: relative;
    overflow: hidden;

    animation: cardAppear 0.7s ease;
}


/* ---------- GOLD TOP LINE ---------- */

.container.p-5.m-5::before {
    content: "";

    position: absolute;
    top: 0;
    left: 0;

    width: 100%;
    height: 5px;

    background: linear-gradient(
        90deg,
        #76513c,
        #c89b5b,
        #f0c980,
        #c89b5b,
        #76513c
    );
}


/* ---------- DECORATIVE ICON ---------- */

.container.p-5.m-5::after {
    content: "📚";

    position: absolute;

    right: 28px;
    top: 25px;

    font-size: 32px;

    opacity: 0.13;

    animation: floatingBook 3s ease-in-out infinite;
}


/* ---------- FORM GROUP ---------- */

.form-group {
    margin: 0 0 20px 0 !important;
}


/* ---------- TITLE ---------- */

/*
   Since your JSP doesn't contain a heading,
   this creates the title without changing JSP.
*/

.container.p-5.m-5::marker {
    display: none;
}


/* ---------- INPUTS ---------- */

.form-control {
    width: 100%;
    height: 52px;

    box-sizing: border-box;

    padding: 0 17px;

    background: #fffdf9;

    border: 1px solid #dbc5a5;
    border-radius: 12px;

    color: #3b241a;

    font-family: 'DM Sans', sans-serif;
    font-size: 15px;

    box-shadow:
        0 3px 10px rgba(59, 36, 26, 0.04);

    transition:
        border-color 0.25s ease,
        box-shadow 0.25s ease,
        transform 0.25s ease,
        background 0.25s ease;
}


/* ---------- PLACEHOLDER ---------- */

.form-control::placeholder {
    color: #a58c78;
}


/* ---------- INPUT HOVER ---------- */

.form-control:hover {
    border-color: #c89b5b;
}


/* ---------- INPUT FOCUS ---------- */

.form-control:focus {
    background: #ffffff;

    border-color: #c89b5b;

    outline: none;

    box-shadow:
        0 0 0 3px rgba(200, 155, 91, 0.15),
        0 8px 20px rgba(59, 36, 26, 0.08);

    transform: translateY(-1px);
}


/* ---------- SUBMIT BUTTON ---------- */

input[type="submit"] {
    width: 100%;
    height: 54px;

    margin-top: 5px;

    border: none;
    border-radius: 12px;

    background: linear-gradient(
        135deg,
        #5a3828,
        #76513c
    );

    color: #fff9f0;

    font-family: 'DM Sans', sans-serif;
    font-size: 15px;
    font-weight: 700;

    letter-spacing: 0.3px;

    cursor: pointer;

    box-shadow:
        0 10px 22px rgba(59, 36, 26, 0.22);

    transition:
        transform 0.25s ease,
        box-shadow 0.25s ease,
        background 0.25s ease;
}


/* ---------- BUTTON HOVER ---------- */

input[type="submit"]:hover {
    background: linear-gradient(
        135deg,
        #76513c,
        #8b6047
    );

    transform: translateY(-2px);

    box-shadow:
        0 14px 28px rgba(59, 36, 26, 0.28);
}


/* ---------- BUTTON CLICK ---------- */

input[type="submit"]:active {
    transform: translateY(0);
}


/* ---------- ANIMATION ---------- */

@keyframes cardAppear {

    from {
        opacity: 0;
        transform: translateY(25px) scale(0.98);
    }

    to {
        opacity: 1;
        transform: translateY(0) scale(1);
    }
}


@keyframes floatingBook {

    0%,
    100% {
        transform: translateY(0) rotate(0deg);
    }

    50% {
        transform: translateY(-6px) rotate(3deg);
    }
}


/* ---------- RESPONSIVE ---------- */

@media (max-width: 768px) {

    .container.p-5.m-5 {
        width: auto;

        margin: 35px 20px !important;

        padding: 35px 25px !important;
    }
}


@media (max-width: 480px) {

    .container.p-5.m-5 {
        margin: 25px 12px !important;

        padding: 30px 18px !important;

        border-radius: 18px;
    }

    .form-control {
        height: 48px;
    }

    input[type="submit"] {
        height: 50px;
    }
}
</style>
</head>
<body>

  <jsp:include page="admindashboard.jsp"></jsp:include>
	<div class='container p-5 m-5'>

		<div class='form-group m-2'>
			<input type='text' name='name' value='${cid}' class='form-control'
				placeholder='Enter Course Id' />
		</div>

		<div class='form-group m-2'>
			<input type='text' name='name' value='${name}' class='form-control'
				placeholder='Enter Course Name' />
		</div>

		<div class='form-group m-2'>
			<input type='submit' name='s' value='Update Course'
				class='form-control' />
		</div>
	</div>
</body>
</html>