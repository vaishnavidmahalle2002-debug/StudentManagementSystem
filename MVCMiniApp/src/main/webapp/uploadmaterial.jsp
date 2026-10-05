<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
   <style>
 

        /* =====================================================
           UPLOAD STUDY MATERIAL PAGE
           Brown + Sand + Cream + Gold Theme
           ===================================================== */

        @import url('https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap');


        /* =====================================================
           PAGE BACKGROUND
           ===================================================== */

        body {
            margin: 0;
            min-height: 100vh;

            font-family: 'DM Sans', sans-serif;

            color: #3b241a;

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
        }


        /* =====================================================
           FORM
           ===================================================== */

        form[name="frm"] {
            width: 570px;
            max-width: calc(100% - 40px);

            margin: 55px auto 20px auto;

            padding: 42px 45px;

            box-sizing: border-box;

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


        /* =====================================================
           GOLD TOP LINE
           ===================================================== */

        form[name="frm"]::before {

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


        /* =====================================================
           DECORATIVE ICON
           ===================================================== */

        form[name="frm"]::after {

            content: "📚";

            position: absolute;

            right: 30px;
            top: 24px;

            font-size: 34px;

            opacity: 0.13;

            animation: floatingBook 3s ease-in-out infinite;
        }


        /* =====================================================
           FORM GROUP
           ===================================================== */

        form[name="frm"] .form-group {

            margin: 0 0 18px 0 !important;

            padding: 0 !important;
        }


        /* =====================================================
           TITLE
           ===================================================== */

        form[name="frm"] .container::before {

            content: "Upload Study Material";

            display: block;

            margin-bottom: 8px;

            color: #3b241a;

            font-family: 'Playfair Display', serif;

            font-size: 30px;

            font-weight: 700;
        }


        /* Subtitle */

        form[name="frm"] .container::after {

            content: "Add notes, documents and learning resources";

            display: block;

            margin-bottom: 28px;

            color: #8b6a54;

            font-size: 14px;

            font-weight: 500;
        }


        /* =====================================================
           TEXT INPUT
           ===================================================== */

        form[name="frm"] input[type="text"] {

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
                transform 0.25s ease;
        }


        /* =====================================================
           FILE INPUT
           ===================================================== */

        form[name="frm"] input[type="file"] {

            width: 100%;
            height: 52px;

            box-sizing: border-box;

            padding: 8px 12px;

            background: #fffdf9;

            border: 1px solid #dbc5a5;

            border-radius: 12px;

            color: #5a3828;

            font-family: 'DM Sans', sans-serif;

            font-size: 14px;

            cursor: pointer;

            transition:
                border-color 0.25s ease,
                box-shadow 0.25s ease;
        }


        /* File button */

        form[name="frm"] input[type="file"]::file-selector-button {

            margin-right: 12px;

            padding: 8px 14px;

            border: none;

            border-radius: 8px;

            background: #f4e1c1;

            color: #5a3828;

            font-family: 'DM Sans', sans-serif;

            font-weight: 600;

            cursor: pointer;

            transition:
                background 0.25s ease,
                transform 0.25s ease;
        }


        form[name="frm"] input[type="file"]::file-selector-button:hover {

            background: #e6c994;

            transform: translateY(-1px);
        }


        /* =====================================================
           SELECT
           ===================================================== */

        form[name="frm"] select {

            width: 100%;
            height: 52px;

            box-sizing: border-box;

            padding: 0 17px;

            background: #fffdf9;

            border: 1px solid #dbc5a5;

            border-radius: 12px;

            color: #5a3828;

            font-family: 'DM Sans', sans-serif;

            font-size: 15px;

            font-weight: 500;

            cursor: pointer;

            box-shadow:
                0 3px 10px rgba(59, 36, 26, 0.04);

            transition:
                border-color 0.25s ease,
                box-shadow 0.25s ease;
        }


        /* =====================================================
           HOVER
           ===================================================== */

        form[name="frm"] input:hover,
        form[name="frm"] select:hover {

            border-color: #c89b5b;
        }


        /* =====================================================
           FOCUS
           ===================================================== */

        form[name="frm"] input[type="text"]:focus,
        form[name="frm"] input[type="file"]:focus,
        form[name="frm"] select:focus {

            background: #ffffff;

            border-color: #c89b5b;

            outline: none;

            box-shadow:
                0 0 0 3px rgba(200, 155, 91, 0.15),
                0 8px 20px rgba(59, 36, 26, 0.08);

            transform: translateY(-1px);
        }


        /* =====================================================
           UPLOAD BUTTON
           ===================================================== */

        form[name="frm"] input[type="submit"] {

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


        /* Button hover */

        form[name="frm"] input[type="submit"]:hover {

            background: linear-gradient(
                135deg,
                #76513c,
                #8b6047
            );

            transform: translateY(-2px);

            box-shadow:
                0 14px 28px rgba(59, 36, 26, 0.28);
        }


        /* Button click */

        form[name="frm"] input[type="submit"]:active {

            transform: translateY(0);
        }


        /* =====================================================
           SUCCESS MESSAGE
           ===================================================== */

        body > h1 {

            width: 570px;
            max-width: calc(100% - 40px);

            box-sizing: border-box;

            margin: 15px auto 40px auto;

            padding: 13px 18px;

            background: #f4e1c1;

            border-left: 4px solid #c89b5b;

            border-radius: 8px;

            color: #5a3828;

            font-family: 'DM Sans', sans-serif;

            font-size: 15px;

            font-weight: 600;

            box-shadow:
                0 5px 15px rgba(59, 36, 26, 0.08);

            animation: messageAppear 0.4s ease;
        }


        /* =====================================================
           CARD ANIMATION
           ===================================================== */

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


        /* =====================================================
           FLOATING BOOK
           ===================================================== */

        @keyframes floatingBook {

            0%,
            100% {
                transform: translateY(0) rotate(0deg);
            }

            50% {
                transform: translateY(-6px) rotate(3deg);
            }
        }


        /* =====================================================
           MESSAGE ANIMATION
           ===================================================== */

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


        /* =====================================================
           RESPONSIVE
           ===================================================== */

        @media (max-width: 768px) {

            form[name="frm"] {

                width: auto;

                max-width: none;

                margin: 35px 20px 20px 20px;

                padding: 35px 25px;
            }

            form[name="frm"] .container::before {

                font-size: 26px;
            }

            body > h1 {

                width: auto;

                margin: 15px 20px 30px 20px;
            }
        }


        @media (max-width: 480px) {

            form[name="frm"] {

                margin: 25px 12px 15px 12px;

                padding: 30px 18px;

                border-radius: 18px;
            }

            form[name="frm"] .container::before {

                font-size: 24px;
            }

            form[name="frm"] input[type="text"],
            form[name="frm"] input[type="file"],
            form[name="frm"] select {

                height: 48px;
            }

            form[name="frm"] input[type="submit"] {

                height: 50px;
            }

            body > h1 {

                margin-left: 12px;
                margin-right: 12px;
            }
        }

    </style>
   
  
</head>
<body>

     <jsp:include page="admindashboard.jsp"></jsp:include>

    <form name="frm"
          action="${pageContext.request.contextPath}/upload/savematerial"
          method="POST"
          enctype="multipart/form-data">

        <div class="container p-5 m-2">

            <div class="form-group p-2 m-2">
                <input type="text"
                       name="name"
                       value=""
                       class="form-control"
                       placeholder="Enter topic name"
                       required />
            </div>

            <div class="form-group m-2 p-2">
                <input type="file"
                       name="material"
                       class="form-control"
                       required />
            </div>

            <div class="form-group m-2 p-2">

                <select name="course"
                        class="form-control"
                        required>

                    <option value="">Select Course</option>

                    <c:forEach var="course" items="${clist}">

                        <option value="${course.getId()}">
                            ${course.getCourse()}
                        </option>

                    </c:forEach>

                </select>

            </div>

            <div class="form-group m-2 p-2">

                <input type="submit"
                       name="s"
                       value="Upload Material"
                       class="form-control" />

            </div>

        </div>

    </form>

    <h1>${msg}</h1>
</body>
</html>