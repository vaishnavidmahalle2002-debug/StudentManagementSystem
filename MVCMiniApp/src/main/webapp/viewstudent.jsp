<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="ISO-8859-1">

<title>Student Management</title>

<style>

@import url('https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap');


/* =========================================================
   GLOBAL
========================================================= */

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
            circle at 8% 15%,
            rgba(200,155,91,.20),
            transparent 28%
        ),
        radial-gradient(
            circle at 92% 85%,
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


/* =========================================================
   MAIN CONTAINER
========================================================= */

.student-container {

    width: 94%;

    max-width: 1200px;

    margin: 55px auto 50px;

    padding: 38px;

    position: relative;

    background: rgba(255,249,240,.97);

    border: 1px solid rgba(200,155,91,.38);

    border-radius: 25px;

    box-shadow:
        0 25px 60px rgba(59,36,26,.16),
        0 8px 22px rgba(59,36,26,.08);

    animation: containerAppear .7s ease;
}


/* =========================================================
   GOLD TOP LINE
========================================================= */

.student-container::before {

    content: "";

    position: absolute;

    top: 0;
    left: 7%;

    width: 86%;

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


/* =========================================================
   TITLE
========================================================= */

.student-container::after {

    content: "🎓  Student Management";

    display: block;

    margin-bottom: 30px;

    text-align: center;

    font-family: 'Playfair Display', serif;

    font-size: 29px;

    font-weight: 700;

    color: #5a3828;

    letter-spacing: .3px;
}


/* =========================================================
   SEARCH BOX
========================================================= */

.student-search {

    width: 55%;

    margin: 0 auto 22px;

    padding: 0;
}


/* Important:
   Do not depend on Bootstrap .form-control
*/

.student-search input {

    width: 100%;

    height: 52px;

    padding: 0 20px;

    border: 1px solid #dbc5a5;

    border-radius: 13px;

    background: #fffdf9;

    color: #3b241a;

    font-family: 'DM Sans', sans-serif;

    font-size: 15px;

    outline: none;

    box-shadow:
        0 5px 16px rgba(59,36,26,.06);

    transition: all .3s ease;
}


.student-search input::placeholder {

    color: #9b7c64;
}


.student-search input:hover {

    border-color: #c89b5b;
}


.student-search input:focus {

    border-color: #c89b5b;

    background: #ffffff;

    box-shadow:
        0 0 0 3px rgba(200,155,91,.15),
        0 10px 25px rgba(59,36,26,.10);

    transform: translateY(-2px);
}


/* =========================================================
   COURSE FILTER
========================================================= */

.student-course-filter {

    width: 55%;

    margin: 0 auto 32px;

    padding: 0;
}


.student-course-filter select {

    width: 100%;

    height: 52px;

    padding: 0 18px;

    border: 1px solid #dbc5a5;

    border-radius: 13px;

    background: #fffdf9;

    color: #5a3828;

    font-family: 'DM Sans', sans-serif;

    font-size: 15px;

    font-weight: 500;

    cursor: pointer;

    outline: none;

    box-shadow:
        0 5px 16px rgba(59,36,26,.06);

    transition: all .3s ease;
}


.student-course-filter select:hover {

    border-color: #c89b5b;
}


.student-course-filter select:focus {

    border-color: #c89b5b;

    box-shadow:
        0 0 0 3px rgba(200,155,91,.15),
        0 10px 25px rgba(59,36,26,.10);
}


/* =========================================================
   TABLE WRAPPER
========================================================= */

.student-table-wrapper {

    width: 100%;

    overflow-x: auto;

    border-radius: 17px;

    box-shadow:
        0 12px 28px rgba(59,36,26,.09);
}


/* =========================================================
   TABLE
========================================================= */

.student-table {

    width: 100%;

    margin: 0;

    border-collapse: separate;

    border-spacing: 0;

    background: #fffdf9;

    border: 1px solid #dbc5a5;

    border-radius: 17px;

    overflow: hidden;
}


/* =========================================================
   TABLE HEADER
========================================================= */

.student-table thead tr {

    background: linear-gradient(
        135deg,
        #5a3828,
        #76513c
    );
}


.student-table th {

    padding: 17px 15px;

    color: #fff9f0;

    font-family: 'DM Sans', sans-serif;

    font-size: 12px;

    font-weight: 700;

    letter-spacing: .6px;

    text-transform: uppercase;

    text-align: center;

    border: none;

    white-space: nowrap;
}


/* =========================================================
   TABLE BODY
========================================================= */

.student-table tbody tr {

    background: #fffdf9;

    transition: all .25s ease;
}


.student-table tbody tr:nth-child(even) {

    background: rgba(244,225,193,.22);
}


.student-table tbody tr:hover {

    background: #fff5e5;

    transform: scale(1.002);
}


.student-table td {

    padding: 16px 15px;

    color: #5a3828;

    font-size: 14px;

    font-weight: 500;

    text-align: center;

    border-top: 1px solid #eadbc5;

    vertical-align: middle;

    white-space: nowrap;
}


/* =========================================================
   STUDENT ID
========================================================= */

.student-table td:first-child {

    font-weight: 700;

    color: #76513c;
}


/* =========================================================
   STUDENT NAME
========================================================= */

.student-table td:nth-child(2) {

    font-weight: 600;

    color: #5a3828;
}


/* =========================================================
   EMAIL
========================================================= */

.student-table td:nth-child(3) {

    color: #76513c;
}


/* =========================================================
   CONTACT
========================================================= */

.student-table td:nth-child(4) {

    color: #806f62;
}


/* =========================================================
   ACTION BUTTONS
========================================================= */

.student-table a {

    display: inline-block;

    padding: 8px 15px;

    border-radius: 8px;

    text-decoration: none;

    font-family: 'DM Sans', sans-serif;

    font-size: 11px;

    font-weight: 700;

    letter-spacing: .3px;

    transition: all .25s ease;
}


/* =========================================================
   DELETE
========================================================= */

.student-table .delete-btn {

    color: #8b4b3f;

    background: #f8dfd8;

    border: 1px solid #e5bdb3;
}


.student-table .delete-btn:hover {

    color: #ffffff;

    background: #8b4b3f;

    transform: translateY(-3px);

    box-shadow:
        0 8px 17px rgba(139,75,63,.25);
}


/* =========================================================
   UPDATE
========================================================= */

.student-table .update-btn {

    color: #5a3828;

    background: #f4e1c1;

    border: 1px solid #d8b77e;
}


.student-table .update-btn:hover {

    color: #ffffff;

    background: #c89b5b;

    transform: translateY(-3px);

    box-shadow:
        0 8px 17px rgba(200,155,91,.28);
}


/* =========================================================
   ANIMATION
========================================================= */

@keyframes containerAppear {

    from {

        opacity: 0;

        transform: translateY(30px);
    }

    to {

        opacity: 1;

        transform: translateY(0);
    }
}


/* =========================================================
   RESPONSIVE
========================================================= */

@media (max-width: 900px) {

    .student-container {

        width: 96%;

        padding: 25px;
    }

    .student-search,
    .student-course-filter {

        width: 80%;
    }
}


@media (max-width: 650px) {

    .student-container {

        width: 96%;

        padding: 18px;

        margin-top: 35px;
    }

    .student-container::after {

        font-size: 23px;
    }

    .student-search,
    .student-course-filter {

        width: 100%;
    }

    .student-table th,
    .student-table td {

        padding: 12px 10px;
    }
}

</style>

</head>


<body>


<!-- ADMIN DASHBOARD -->

<jsp:include page="admindashboard.jsp"></jsp:include>


<!-- STUDENT MANAGEMENT -->

<div class="student-container">


    <!-- SEARCH -->

    <div class="student-search">

        <input
            type="text"
            name="name"
            value=""
            placeholder="🔍  Search student...">

    </div>


    <!-- COURSE FILTER -->

    <div class="student-course-filter">

        <select name="id">

            <option value="">Select Course</option>

            <c:forEach var="course" items="${clist}">

                <option value="${course.getId()}">
                    ${course.getCourse()}
                </option>

            </c:forEach>

        </select>

    </div>


    <!-- TABLE -->

    <div class="student-table-wrapper">

        <table class="student-table">

            <thead>

                <tr>

                    <th>Student ID</th>

                    <th>Student Name</th>

                    <th>Student Email</th>

                    <th>Student Contact</th>

                    <th>Delete</th>

                    <th>Update</th>

                </tr>

            </thead>


            <tbody>

                <c:forEach var="stud" items="${slist}">

                    <tr>

                        <td>
                            ${stud.sid}
                        </td>

                        <td>
                            ${stud.sname}
                        </td>

                        <td>
                            ${stud.semail}
                        </td>

                        <td>
                            ${stud.scontact}
                        </td>

                        <td>

                            <a
                                class="delete-btn"
                                href="${pageContext.request.contextPath}/stud/delstudent?sid=${stud.getSid()}">

                                DELETE

                            </a>

                        </td>

                        <td>

                            <a
                                class="update-btn"
                                href="${pageContext.request.contextPath}/stud/updstudent?sid=${stud.sid}">

                                UPDATE

                            </a>

                        </td>

                    </tr>

                </c:forEach>

            </tbody>

        </table>

    </div>


</div>


</body>

</html>