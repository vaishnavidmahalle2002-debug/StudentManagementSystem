
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="ISO-8859-1">

<title>Study Material Management</title>


<style>

/* =========================================
   GLOBAL
========================================= */

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


/* =========================================
   MAIN CONTAINER
========================================= */

.material-container {

    width: 94%;

    max-width: 1250px;

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


/* =========================================
   GOLD TOP LINE
========================================= */

.material-container::before {

    content: "";

    position: absolute;

    top: 0;

    left: 7%;

    width: 86%;

    height: 4px;

    border-radius: 0 0 10px 10px;

    background:
        linear-gradient(
            90deg,
            #76513c,
            #c89b5b,
            #f0c980,
            #c89b5b,
            #76513c
        );
}


/* =========================================
   PAGE TITLE
========================================= */

.material-container::after {

    content: "📚  Study Material Management";

    display: block;

    margin-bottom: 30px;

    text-align: center;

    font-family: 'Playfair Display', serif;

    font-size: 29px;

    font-weight: 700;

    color: #5a3828;

    letter-spacing: .3px;
}


/* =========================================
   TABLE
========================================= */

.material-container table {

    width: 100%;

    margin: 0 !important;

    border-collapse: separate;

    border-spacing: 0;

    background: #fffdf9;

    border: 1px solid #dbc5a5;

    border-radius: 17px;

    overflow: hidden;

    box-shadow:
        0 12px 28px rgba(59,36,26,.09);

    animation: tableAppear .8s ease;
}


/* =========================================
   TABLE HEADER
========================================= */

.material-container table tr:first-child {

    background:
        linear-gradient(
            135deg,
            #5a3828,
            #76513c
        );
}


.material-container table th {

    padding: 17px 14px;

    color: #fff9f0;

    font-size: 12px;

    font-weight: 700;

    letter-spacing: .6px;

    text-transform: uppercase;

    border: none;

    white-space: nowrap;

    text-align: center;
}


/* =========================================
   TABLE DATA
========================================= */

.material-container table td {

    padding: 16px 14px;

    color: #5a3828;

    font-size: 14px;

    font-weight: 500;

    border-top: 1px solid #eadbc5;

    vertical-align: middle;

    text-align: center;

    transition: all .25s ease;
}


/* =========================================
   ALTERNATE ROWS
========================================= */

.material-container table tr:nth-child(even) {

    background: rgba(244,225,193,.22);
}


/* =========================================
   ROW HOVER
========================================= */

.material-container table tr:hover {

    background: #fff5e5;

    transform: scale(1.003);

    box-shadow:
        0 5px 16px rgba(59,36,26,.07);
}


/* =========================================
   SR NUMBER
========================================= */

.material-container table td:first-child {

    font-weight: 700;

    color: #76513c;
}


/* =========================================
   COURSE NAME
========================================= */

.material-container table td:nth-child(2) {

    font-weight: 700;

    color: #5a3828;
}


/* =========================================
   TOPIC NAME
========================================= */

.material-container table td:nth-child(3) {

    font-weight: 600;

    color: #76513c;
}


/* =========================================
   FILE NAME
========================================= */

.material-container table td:nth-child(4) {

    color: #8b6a54;

    font-size: 13px;

    max-width: 220px;

    overflow: hidden;

    text-overflow: ellipsis;

    white-space: nowrap;
}


/* =========================================
   ACTION LINKS
========================================= */

.material-container table a {

    display: inline-block;

    padding: 8px 13px;

    border-radius: 8px;

    text-decoration: none;

    font-size: 11px;

    font-weight: 700;

    letter-spacing: .3px;

    transition: all .25s ease;
}


/* =========================================
   DOWNLOAD
========================================= */

.material-container table td:nth-child(5) a {

    color: #5a3828;

    background: #f4e1c1;

    border: 1px solid #d8b77e;
}


.material-container table td:nth-child(5) a:hover {

    color: white;

    background: #c89b5b;

    transform: translateY(-3px);

    box-shadow:
        0 8px 17px rgba(200,155,91,.28);
}


/* =========================================
   DELETE
========================================= */

.material-container table td:nth-child(6) a {

    color: #8b4b3f;

    background: #f8dfd8;

    border: 1px solid #e5bdb3;
}


.material-container table td:nth-child(6) a:hover {

    color: white;

    background: #8b4b3f;

    transform: translateY(-3px);

    box-shadow:
        0 8px 17px rgba(139,75,63,.25);
}


/* =========================================
   UPDATE
========================================= */

.material-container table td:nth-child(7) a {

    color: #5a3828;

    background: #ead8bc;

    border: 1px solid #c89b5b;
}


.material-container table td:nth-child(7) a:hover {

    color: white;

    background: #76513c;

    transform: translateY(-3px);

    box-shadow:
        0 8px 17px rgba(118,81,60,.25);
}


/* =========================================
   ANIMATIONS
========================================= */

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


/* =========================================
   RESPONSIVE
========================================= */

@media (max-width: 1000px) {

    .material-container {

        width: 96%;

        padding: 25px;
    }

    .material-container table {

        display: block;

        overflow-x: auto;

        white-space: nowrap;
    }
}


@media (max-width: 600px) {

    .material-container {

        width: 96%;

        padding: 18px;

        margin-top: 35px;
    }

    .material-container::after {

        font-size: 23px;
    }

    .material-container table th,
    .material-container table td {

        padding: 12px 10px;
    }
}

</style>

</head>


<body>


<!-- ADMIN DASHBOARD -->

<jsp:include page="admindashboard.jsp"></jsp:include>


<!-- STUDY MATERIAL CONTAINER -->

<div class="material-container">


    <table class="table">


        <!-- TABLE HEADER -->

        <tr>

            <th>SR NO</th>

            <th>COURSE NAME</th>

            <th>TOPIC NAME</th>

            <th>STUDY NOTES</th>

            <th>DOWNLOAD MATERIAL</th>

            <th>DELETE</th>

            <th>UPDATE</th>

        </tr>


        <c:set var="count" value="0" />


        <c:forEach var="obj" items="${mlist}">


            <c:set var="count" value="${count + 1}" />


            <tr>

                <td>
                    ${count}
                </td>


                <td>
                    ${obj.id}
                </td>


                <td>
                    ${obj.name}
                </td>


                <td>
                    ${obj.fileName}
                </td>


                <td>

                    <a href="${pageContext.request.contextPath}/upload/download?fileName=${obj.fileName}">
                        DOWNLOAD NOTES
                    </a>

                </td>


                <td>

                    <a href="${pageContext.request.contextPath}/upload/delmaterial?smid=${obj.id}">
                        DELETE
                    </a>

                </td>


                <td>

                    <a href="${pageContext.request.contextPath}/upload/updmaterial?smid=${obj.id}&name=${obj.name}">
                        UPDATE
                    </a>

                </td>

            </tr>


        </c:forEach>


    </table>

</div>


</body>

</html>

