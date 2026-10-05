<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="ISO-8859-1">

<title>Add New Student</title>

<style>

@import url('https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap');


/* =========================================================
   PAGE
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
   MAIN STUDENT FORM CARD
========================================================= */

.student-form-container {

    width: 560px;

    max-width: calc(100% - 40px);

    margin: 55px auto;

    padding: 42px 45px;

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


/* =========================================================
   TOP GOLD LINE
========================================================= */

.student-form-container::before {

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
   DECORATIVE CAP
========================================================= */

.student-form-container::after {

    content: "🎓";

    position: absolute;

    right: 28px;
    top: 25px;

    font-size: 30px;

    opacity: 0.13;

    animation: floatingCap 3s ease-in-out infinite;
}


/* =========================================================
   FORM
========================================================= */

.student-form-container form {

    position: relative;

    z-index: 2;
}


/* =========================================================
   FORM TITLE
========================================================= */

.student-form-container form::before {

    content: "Add New Student";

    display: block;

    margin-bottom: 8px;

    color: #3b241a;

    font-family: 'Playfair Display', serif;

    font-size: 30px;

    font-weight: 700;

    letter-spacing: 0.2px;
}


/* =========================================================
   FORM SUBTITLE
========================================================= */

.student-form-container form::after {

    content: "Enter student details and assign a course";

    display: block;

    margin-bottom: 30px;

    color: #8b6a54;

    font-size: 14px;

    font-weight: 500;
}


/* =========================================================
   FORM GROUP
========================================================= */

.student-form-container .form-group {

    margin: 0 0 18px 0;
}


/* =========================================================
   INPUT + SELECT
========================================================= */

.student-form-container .form-control {

    width: 100%;

    height: 52px;

    padding: 0 17px;

    background: #fffdf9;

    border: 1px solid #dbc5a5;

    border-radius: 12px;

    color: #3b241a;

    font-family: 'DM Sans', sans-serif;

    font-size: 15px;

    box-sizing: border-box;

    box-shadow: 0 3px 10px rgba(59, 36, 26, 0.04);

    transition:
        border-color 0.25s ease,
        box-shadow 0.25s ease,
        transform 0.25s ease,
        background 0.25s ease;
}


/* =========================================================
   PLACEHOLDER
========================================================= */

.student-form-container .form-control::placeholder {

    color: #a58c78;
}


/* =========================================================
   FOCUS
========================================================= */

.student-form-container .form-control:focus {

    background: #ffffff;

    border-color: #c89b5b;

    outline: none;

    box-shadow:
        0 0 0 3px rgba(200, 155, 91, 0.15),
        0 8px 20px rgba(59, 36, 26, 0.08);

    transform: translateY(-1px);
}


/* =========================================================
   HOVER
========================================================= */

.student-form-container .form-control:hover {

    border-color: #c89b5b;
}


/* =========================================================
   SELECT
========================================================= */

.student-form-container select.form-control {

    cursor: pointer;

    color: #5a3828;

    font-weight: 500;
}


/* =========================================================
   SELECT OPTION
========================================================= */

.student-form-container select.form-control option {

    background: #fff9f0;

    color: #3b241a;
}


/* =========================================================
   SUBMIT BUTTON
========================================================= */

.student-form-container input[type="submit"] {

    width: 100%;

    height: 54px;

    margin-top: 8px;

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

.student-form-container input[type="submit"]:hover {

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

.student-form-container input[type="submit"]:active {

    transform: translateY(0);
}


/* =========================================================
   MESSAGE
========================================================= */

.student-form-container .message-box {

    display: block;

    margin-top: 8px;

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
   ANIMATION
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


@keyframes floatingCap {

    0%,
    100% {

        transform: translateY(0) rotate(0deg);
    }

    50% {

        transform: translateY(-6px) rotate(3deg);
    }
}


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

    .student-form-container {

        width: auto;

        max-width: none;

        margin: 35px 20px;

        padding: 35px 25px;
    }

    .student-form-container form::before {

        font-size: 26px;
    }

    .student-form-container form::after {

        margin-bottom: 25px;
    }
}


@media (max-width: 480px) {

    .student-form-container {

        margin: 25px 12px;

        padding: 30px 18px;

        border-radius: 18px;
    }

    .student-form-container form::before {

        font-size: 24px;
    }

    .student-form-container .form-control {

        height: 48px;
    }

    .student-form-container input[type="submit"] {

        height: 50px;
    }
}

</style>

</head>


<body>


<jsp:include page="admindashboard.jsp"></jsp:include>


<!-- =====================================================
     ADD STUDENT FORM
===================================================== -->

<div class="student-form-container">

    <form name="frm"
          action="${pageContext.request.contextPath}/stud/save"
          method="POST">
          
   
   



        <!-- STUDENT NAME -->

        <div class="form-group">

            <input
                type="text"
                name="sname"
                value=""
                class="form-control"
                placeholder="Enter Student Name"
                required>

        </div>


        <!-- STUDENT EMAIL -->

        <div class="form-group">

            <input
                type="email"
                name="semail"
                value=""
                class="form-control"
                placeholder="Enter Student Email"
                required>

        </div>


        <!-- STUDENT CONTACT -->

        <div class="form-group">

            <input
                type="text"
                name="scontact"
                value=""
                class="form-control"
                placeholder="Enter Student Contact"
                required>

        </div>


        <!-- COURSE -->

        <div class="form-group">

            <select name="id" class="form-control" required>

                <option value="">Select Course</option>

                <c:forEach var="course" items="${clist}">

                    <option value="${course.getId()}">
                        ${course.getCourse()}
                    </option>

                </c:forEach>

            </select>

        </div>


        <!-- SUBMIT -->

        <div class="form-group">

            <input
                type="submit"
                name="s"
                value="Add New Student">

        </div>


        <!-- MESSAGE -->

        <c:if test="${not empty msg}">

            <div class="form-group">

                <label class="message-box">
                    ${msg}
                </label>

            </div>

        </c:if>


    </form>

</div>


</body>

</html>