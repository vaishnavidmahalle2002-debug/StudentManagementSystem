
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

<title>Course Master</title>

<style>

/* ================================
   GLOBAL
================================ */

* {
    box-sizing: border-box;
}

@import url('https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap');

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


/* ================================
   COURSE CONTAINER
================================ */

.course-container {
    width: 92%;
    max-width: 1100px;

    margin: 55px auto 50px;
    padding: 38px;

    position: relative;

    background: rgba(255,249,240,.97);

    border: 1px solid rgba(200,155,91,.35);
    border-radius: 24px;

    box-shadow:
        0 25px 60px rgba(59,36,26,.15),
        0 8px 20px rgba(59,36,26,.08);

    animation: containerAppear .7s ease;
}


/* ================================
   GOLD TOP LINE
================================ */

.course-container::before {
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


/* ================================
   PAGE HEADING
================================ */

.course-container::after {
    content: "📚  Course Management";

    display: block;

    margin-bottom: 28px;

    font-family: 'Playfair Display', serif;

    font-size: 28px;
    font-weight: 700;

    color: #5a3828;

    text-align: center;
}


/* ================================
   SEARCH AREA
================================ */

.course-container > .form-group {
    max-width: 500px;

    margin: 0 auto 30px !important;
    padding: 0 !important;
}

.course-container input[type="text"] {
    width: 100%;
    height: 50px;

    padding: 12px 18px;

    border: 1px solid #dbc5a5;
    border-radius: 12px;

    background: #fffdf9;

    color: #3b241a;

    font-size: 15px;

    transition: all .3s ease;

    box-shadow:
        0 5px 15px rgba(59,36,26,.05);
}

.course-container input[type="text"]::placeholder {
    color: #9b7c64;
}

.course-container input[type="text"]:focus {
    outline: none;

    border-color: #c89b5b;

    background: #ffffff;

    box-shadow:
        0 0 0 3px rgba(200,155,91,.15),
        0 8px 20px rgba(59,36,26,.08);

    transform: translateY(-1px);
}


/* ================================
   TABLE
================================ */

.course-container table {
    width: 100%;

    margin: 0 !important;

    border-collapse: separate;
    border-spacing: 0;

    background: #fffdf9;

    border: 1px solid #dbc5a5;
    border-radius: 16px;

    box-shadow:
        0 10px 25px rgba(59,36,26,.08);

    animation: tableAppear .8s ease;
}


/* ================================
   TABLE HEADER
================================ */

.course-container table tr:first-child {
    background: linear-gradient(
        135deg,
        #5a3828,
        #76513c
    );
}

.course-container table th {
    padding: 17px 18px;

    color: #fff9f0;

    font-size: 14px;
    font-weight: 700;

    letter-spacing: .7px;

    text-transform: uppercase;

    border: none;

    white-space: nowrap;
}


/* ================================
   TABLE DATA
================================ */

.course-container table td {
    padding: 16px 18px;

    color: #5a3828;

    font-size: 15px;
    font-weight: 500;

    border-top: 1px solid #eadbc5;

    vertical-align: middle;

    transition: all .25s ease;
}


/* ================================
   ROW HOVER
================================ */

.course-container table tr:hover {
    background: #fff7e9;

    transform: scale(1.005);

    box-shadow:
        0 5px 15px rgba(59,36,26,.06);
}


/* First column */

.course-container table td:first-child {
    font-weight: 700;
    color: #76513c;
}


/* ================================
   ACTION LINKS
================================ */

.course-container table a {
    display: inline-block;

    padding: 8px 15px;

    border-radius: 8px;

    text-decoration: none;

    font-size: 13px;
    font-weight: 700;

    transition: all .25s ease;
}


/* ================================
   DELETE BUTTON
================================ */

.course-container table td:nth-child(3) a {
    color: #8b4b3f;

    background: #f8dfd8;

    border: 1px solid #e5bdb3;
}

.course-container table td:nth-child(3) a:hover {
    background: #8b4b3f;

    color: white;

    transform: translateY(-2px);

    box-shadow:
        0 7px 15px rgba(139,75,63,.20);
}


/* ================================
   UPDATE BUTTON
================================ */

.course-container table td:nth-child(4) a {
    color: #5a3828;

    background: #f4e1c1;

    border: 1px solid #d8b77e;
}

.course-container table td:nth-child(4) a:hover {
    background: #c89b5b;

    color: white;

    transform: translateY(-2px);

    box-shadow:
        0 7px 15px rgba(200,155,91,.25);
}


/* ================================
   ALTERNATE ROWS
================================ */

.course-container table tr:nth-child(even) {
    background: rgba(244,225,193,.20);
}


/* ================================
   ANIMATIONS
================================ */

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

@keyframes tableAppear {

    from {
        opacity: 0;
        transform: translateY(20px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}


/* ================================
   MOBILE
================================ */

@media (max-width: 768px) {

    .course-container {
        width: 95%;
        padding: 22px;
        margin-top: 35px;
    }

    .course-container::after {
        font-size: 23px;
    }

    .course-container table {
        display: block;
        overflow-x: auto;
        white-space: nowrap;
    }

    .course-container table th,
    .course-container table td {
        padding: 13px 12px;
    }
}

</style>

</head>


<body>

    <!-- ADMIN DASHBOARD -->
    <jsp:include page="admindashboard.jsp"></jsp:include>


    <!-- COURSE MANAGEMENT -->
    <div class="course-container">

        <!-- SEARCH -->
        <div class="form-group">

            <input
                type="text"
                name="name"
                value=""
                class="form-control"
                placeholder="🔍  Search course..."
            />

        </div>


        <!-- COURSE TABLE -->
        <table class="table">

            <tr>
                <th>Course ID</th>
                <th>Course Name</th>
                <th>Delete</th>
                <th>Update</th>
            </tr>


            <c:forEach var="course" items="${clist}">

                <tr>

                    <td>
                        ${course.getId()}
                    </td>

                    <td>
                        ${course.getCourse()}
                    </td>

                    <td>

                        <a href="${pageContext.request.contextPath}/course/delcourse?cid=${course.getId()}">
                            DELETE
                        </a>

                    </td>

                    <td>

                        <a href="${pageContext.request.contextPath}/course/updcourse?cid=${course.getId()}&name=${course.getCourse()}">
                            UPDATE
                        </a>

                    </td>

                </tr>

            </c:forEach>

        </table>

    </div>

</body>
</html>

