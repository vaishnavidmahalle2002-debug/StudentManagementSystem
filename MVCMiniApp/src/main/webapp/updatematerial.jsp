<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
/* =========================================================
   UPDATE STUDY MATERIAL PAGE
   Student Management System
   Brown + Sand / Light Orange Theme
   ========================================================= */

@import url('https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap');


/* =========================================================
   PAGE BACKGROUND
   ========================================================= */

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


/* =========================================================
   MAIN CARD
   ========================================================= */

.container.p-5.m-5.bg-light {

    width: 570px;
    max-width: calc(100% - 40px);

    margin: 55px auto !important;
    padding: 42px 45px !important;

    /* Override Bootstrap bg-light */
    background: rgba(255, 249, 240, 0.97) !important;

    border: 1px solid rgba(200, 155, 91, 0.35);
    border-radius: 24px;

    box-shadow:
        0 25px 60px rgba(59, 36, 26, 0.20),
        0 8px 20px rgba(59, 36, 26, 0.10);

    position: relative;
    overflow: hidden;

    animation: cardAppear 0.7s ease;
}


/* =========================================================
   GOLD TOP ACCENT
   ========================================================= */

.container.p-5.m-5.bg-light::before {

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


/* =========================================================
   DECORATIVE ICON
   ========================================================= */

.container.p-5.m-5.bg-light::after {

    content: "📚";

    position: absolute;

    right: 30px;
    top: 25px;

    font-size: 34px;

    opacity: 0.13;

    animation: floatingBook 3s ease-in-out infinite;
}


/* =========================================================
   PAGE TITLE
   ========================================================= */

.container.p-5.m-5.bg-light h3 {

    margin: 0 0 30px 0;

    color: #3b241a;

    font-family: 'Playfair Display', serif;

    font-size: 30px;
    font-weight: 700;

    letter-spacing: 0.2px;

    position: relative;
}


/* Small gold line under title */

.container.p-5.m-5.bg-light h3::after {

    content: "";

    display: block;

    width: 55px;
    height: 4px;

    margin-top: 10px;

    border-radius: 5px;

    background: linear-gradient(
        90deg,
        #c89b5b,
        #e5bf7d
    );
}


/* =========================================================
   FORM GROUP
   ========================================================= */

.container.p-5.m-5.bg-light .form-group {

    margin: 0 0 20px 0 !important;
}


/* =========================================================
   LABEL
   ========================================================= */

.container.p-5.m-5.bg-light label {

    display: block;

    margin-bottom: 8px;

    color: #5a3828;

    font-size: 14px;
    font-weight: 600;

    letter-spacing: 0.2px;
}


/* =========================================================
   INPUTS
   ========================================================= */

.container.p-5.m-5.bg-light .form-control {

    width: 100%;
    height: 52px;

    box-sizing: border-box;

    padding: 0 16px;

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


/* =========================================================
   TEXT INPUT
   ========================================================= */

.container.p-5.m-5.bg-light input[type="text"] {

    font-weight: 500;
}


/* =========================================================
   FILE INPUT
   ========================================================= */

.container.p-5.m-5.bg-light input[type="file"] {

    padding: 8px 12px;

    cursor: pointer;

    background: #fffdf9;
}


/* File selector button */

.container.p-5.m-5.bg-light input[type="file"]::file-selector-button {

    margin-right: 12px;

    padding: 8px 14px;

    border: none;

    border-radius: 8px;

    background: #f4e1c1;

    color: #5a3828;

    font-family: 'DM Sans', sans-serif;

    font-weight: 600;

    cursor: pointer;

    transition: all 0.25s ease;
}


/* File button hover */

.container.p-5.m-5.bg-light input[type="file"]::file-selector-button:hover {

    background: #e6c994;

    color: #3b241a;
}


/* =========================================================
   INPUT HOVER
   ========================================================= */

.container.p-5.m-5.bg-light .form-control:hover {

    border-color: #c89b5b;
}


/* =========================================================
   INPUT FOCUS
   ========================================================= */

.container.p-5.m-5.bg-light .form-control:focus {

    background: #ffffff;

    border-color: #c89b5b;

    outline: none;

    box-shadow:
        0 0 0 3px rgba(200, 155, 91, 0.15),
        0 8px 20px rgba(59, 36, 26, 0.08);

    transform: translateY(-1px);
}


/* =========================================================
   UPDATE BUTTON
   ========================================================= */

.container.p-5.m-5.bg-light input[type="submit"] {

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


/* =========================================================
   BUTTON HOVER
   ========================================================= */

.container.p-5.m-5.bg-light input[type="submit"]:hover {

    background: linear-gradient(
        135deg,
        #76513c,
        #8b6047
    );

    transform: translateY(-2px);

    box-shadow:
        0 14px 28px rgba(59, 36, 26, 0.28);
}


/* =========================================================
   BUTTON CLICK
   ========================================================= */

.container.p-5.m-5.bg-light input[type="submit"]:active {

    transform: translateY(0);
}


/* =========================================================
   MESSAGE
   ========================================================= */

.container.p-5.m-5.bg-light .form-group:last-child label {

    margin-top: 5px;
    margin-bottom: 0;

    padding: 12px 15px;

    background: #f4e1c1;

    border-left: 4px solid #c89b5b;

    border-radius: 8px;

    color: #5a3828;

    font-size: 14px;
    font-weight: 600;

    animation: messageAppear 0.4s ease;
}


/* =========================================================
   CARD ANIMATION
   ========================================================= */

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


/* =========================================================
   FLOATING BOOK
   ========================================================= */

@keyframes floatingBook {

    0%,
    100% {
        transform: translateY(0) rotate(0deg);
    }

    50% {
        transform: translateY(-6px) rotate(3deg);
    }
}


/* =========================================================
   MESSAGE ANIMATION
   ========================================================= */

@keyframes messageAppear {

    from {
        opacity: 0;
        transform: translateY(-5px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}


/* =========================================================
   RESPONSIVE
   ========================================================= */

@media (max-width: 768px) {

    .container.p-5.m-5.bg-light {

        width: auto;

        margin: 35px 20px !important;

        padding: 35px 25px !important;
    }

    .container.p-5.m-5.bg-light h3 {

        font-size: 26px;
    }
}


@media (max-width: 480px) {

    .container.p-5.m-5.bg-light {

        margin: 25px 12px !important;

        padding: 30px 18px !important;

        border-radius: 18px;
    }

    .container.p-5.m-5.bg-light h3 {

        font-size: 24px;
    }

    .container.p-5.m-5.bg-light .form-control {

        height: 48px;
    }

    .container.p-5.m-5.bg-light input[type="submit"] {

        height: 50px;
    }
}
</style>
</head>
<body>

   <jsp:include page="admindashboard.jsp"></jsp:include>

<div class="container p-5 m-5 bg-light">

    <h3>Update Study Material</h3>

    <form action="${pageContext.request.contextPath}/upload/updatematerial" method="post" enctype="multipart/form-data">

        <!-- Hidden Study Material ID -->
        <input type="hidden" name="id" value="${smid}"/>

        <div class="form-group m-2">
            <label>Topic Name</label>
            <input type="text" name="name" value="${name}" class="form-control"/>
        </div>

        <div class="form-group m-2">
            <label>Select New Study Material (Optional)</label>
            <input type="file" name="material" class="form-control"/>
        </div>

        <div class="form-group m-2">
            <input type="submit" value="Update Study Material" class="btn btn-primary"/>
        </div>

        <div class="form-group m-2">
            <label>${msg}</label>
        </div>

    </form>

</div>
</body>
</html>