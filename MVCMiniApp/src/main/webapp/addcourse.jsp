<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="ISO-8859-1">

<title>Add New Course</title>

<style>

@import url('https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap');

* {
    box-sizing: border-box;
}

body {
    margin: 0;
    min-height: 100vh;

    font-family: 'DM Sans', sans-serif;

    color: #3b241a;

    background:
        radial-gradient(
            circle at 10% 20%,
            rgba(200,155,91,.20),
            transparent 28%
        ),
        radial-gradient(
            circle at 90% 80%,
            rgba(118,81,60,.16),
            transparent 30%
        ),
        linear-gradient(
            135deg,
            #fff9f0 0%,
            #f4e1c1 50%,
            #ead0a6 100%
        );
}


/* =========================================
   COURSE FORM CARD
========================================= */

.course-form-card {
    width: 540px;
    max-width: 92%;

    margin: 75px auto 40px;

    padding: 48px 42px 40px;

    position: relative;

    background: rgba(255,249,240,.97);

    border: 1px solid rgba(200,155,91,.38);

    border-radius: 25px;

    box-shadow:
        0 25px 60px rgba(59,36,26,.16),
        0 8px 22px rgba(59,36,26,.08);

    animation: cardAppear .7s ease;
}


/* Gold top line */

.course-form-card::before {
    content: "";

    position: absolute;

    top: 0;
    left: 8%;

    width: 84%;
    height: 4px;

    border-radius: 0 0 10px 10px;

    background: linear-gradient(
        90deg,
        #76513c,
        #c89b5b,
        #f0c980,
        #c89b5b,
        #76513c
    );
}


/* Book icon */

.course-form-card::after {
    content: "📚";

    position: absolute;

    top: -28px;
    left: 50%;

    transform: translateX(-50%);

    width: 60px;
    height: 60px;

    display: flex;

    align-items: center;
    justify-content: center;

    background: #fff9f0;

    border: 2px solid #c89b5b;

    border-radius: 50%;

    font-size: 27px;

    box-shadow:
        0 8px 20px rgba(59,36,26,.15);

    animation: floatingBook 3s ease-in-out infinite;
}


/* Form title */

.course-form-card form::before {
    content: "Add New Course";

    display: block;

    margin-bottom: 7px;

    text-align: center;

    font-family: 'Playfair Display', serif;

    font-size: 29px;

    font-weight: 700;

    color: #5a3828;
}


/* Subtitle */

.course-form-card form::after {
    content: "Create a new course for the student management system";

    display: block;

    margin-bottom: 30px;

    text-align: center;

    color: #8b6a54;

    font-size: 14px;
}


/* Form groups */

.course-form-card .form-group {
    margin-bottom: 18px;
}


/* Course input */

.course-form-card input[type="text"] {
    width: 100%;

    height: 52px;

    padding: 12px 17px;

    border: 1px solid #dbc5a5;

    border-radius: 12px;

    background: #fffdf9;

    color: #3b241a;

    font-family: 'DM Sans', sans-serif;

    font-size: 15px;

    transition: all .3s ease;

    box-shadow:
        0 5px 15px rgba(59,36,26,.05);
}


.course-form-card input[type="text"]::placeholder {
    color: #a0836c;
}


.course-form-card input[type="text"]:focus {
    outline: none;

    border-color: #c89b5b;

    background: #ffffff;

    box-shadow:
        0 0 0 3px rgba(200,155,91,.15),
        0 8px 20px rgba(59,36,26,.08);

    transform: translateY(-2px);
}


/* Submit button */

.course-form-card input[type="submit"] {
    width: 100%;

    height: 52px;

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

    letter-spacing: .3px;

    cursor: pointer;

    box-shadow:
        0 10px 22px rgba(59,36,26,.20);

    transition: all .3s ease;
}


.course-form-card input[type="submit"]:hover {
    background: linear-gradient(
        135deg,
        #76513c,
        #3b241a
    );

    transform: translateY(-3px);

    box-shadow:
        0 15px 28px rgba(59,36,26,.25);
}


.course-form-card input[type="submit"]:active {
    transform: translateY(-1px);
}


/* Message */

.course-form-card label {
    display: block;

    margin-top: 8px;

    padding: 12px 15px;

    text-align: center;

    color: #5a3828;

    background: rgba(244,225,193,.65);

    border: 1px solid #dbc5a5;

    border-radius: 10px;

    font-size: 14px;

    font-weight: 600;

    animation: messageAppear .5s ease;
}


/* Animations */

@keyframes cardAppear {

    from {
        opacity: 0;
        transform: translateY(30px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}


@keyframes messageAppear {

    from {
        opacity: 0;
        transform: translateY(10px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}


@keyframes floatingBook {

    0%, 100% {
        transform: translateX(-50%) translateY(0);
    }

    50% {
        transform: translateX(-50%) translateY(-6px);
    }
}


/* Responsive */

@media (max-width: 600px) {

    .course-form-card {
        width: 94%;

        padding: 42px 23px 30px;

        margin-top: 60px;
    }

    .course-form-card form::before {
        font-size: 25px;
    }

    .course-form-card form::after {
        font-size: 13px;
    }
}

</style>

</head>

<body>

    <jsp:include page="admindashboard.jsp"></jsp:include>


    <div class="course-form-card">

        <form name="frm"
              action="${pageContext.request.contextPath}/course/save"
              method="POST">

            <div class="form-group">

                <input type="text"
                       name="course"
                       value=""
                       class="form-control"
                       placeholder="Enter course name"
                       required />

            </div>


            <div class="form-group">

                <input type="submit"
                       name="s"
                       value="Add New Course" />

            </div>


            <div class="form-group">

                <label>${msg}</label>

            </div>

        </form>

    </div>

</body>

</html>