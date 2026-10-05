<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
	
	<style>
	<head>

    <meta charset="ISO-8859-1">

    <title>Update Student</title>

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <style>

        /* =====================================================
           UPDATE STUDENT PAGE
           Brown + Sand + Cream + Gold Theme
           ===================================================== */

        @import url('https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap');


        /* ---------- PAGE BACKGROUND ---------- */

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


        /* ---------- MAIN CONTAINER ---------- */

        .container.mt-5 {

            max-width: 650px;

            margin: 55px auto !important;

            position: relative;
        }


        /* ---------- CARD ---------- */

        .container.mt-5 .card {

            border: 1px solid rgba(200, 155, 91, 0.35);

            border-radius: 24px;

            overflow: hidden;

            background: rgba(255, 249, 240, 0.97);

            box-shadow:
                0 25px 60px rgba(59, 36, 26, 0.20),
                0 8px 20px rgba(59, 36, 26, 0.10);

            animation: cardAppear 0.7s ease;
        }


        /* ---------- CARD HEADER ---------- */

        .container.mt-5 .card-header {

            position: relative;

            padding: 25px 30px;

            border: none;

            background: linear-gradient(
                135deg,
                #3b241a,
                #5a3828,
                #76513c
            ) !important;

            color: #fff9f0 !important;
        }


        /* Gold line at bottom of header */

        .container.mt-5 .card-header::after {

            content: "";

            position: absolute;

            bottom: 0;
            left: 0;

            width: 100%;
            height: 4px;

            background: linear-gradient(
                90deg,
                #76513c,
                #c89b5b,
                #f0c980,
                #c89b5b,
                #76513c
            );
        }


        /* ---------- TITLE ---------- */

        .container.mt-5 .card-header h3 {

            margin: 0;

            font-family: 'Playfair Display', serif;

            font-size: 28px;

            font-weight: 700;

            letter-spacing: 0.2px;
        }


        /* ---------- SMALL DECORATIVE ICON ---------- */

        .container.mt-5 .card-header::before {

            content: "🎓";

            position: absolute;

            right: 28px;
            top: 17px;

            font-size: 34px;

            opacity: 0.18;

            animation: floatingCap 3s ease-in-out infinite;
        }


        /* ---------- CARD BODY ---------- */

        .container.mt-5 .card-body {

            padding: 35px 40px;

            background: rgba(255, 249, 240, 0.97);
        }


        /* ---------- FORM GROUP ---------- */

        .container.mt-5 .mb-3 {

            margin-bottom: 22px !important;
        }


        /* ---------- LABEL ---------- */

        .container.mt-5 .form-label {

            display: block;

            margin-bottom: 8px;

            color: #5a3828;

            font-size: 14px;

            font-weight: 600;

            letter-spacing: 0.2px;
        }


        /* ---------- INPUT ---------- */

        .container.mt-5 .form-control {

            height: 50px;

            padding: 0 16px;

            background: #fffdf9;

            border: 1px solid #dbc5a5;

            border-radius: 11px;

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


        /* ---------- INPUT HOVER ---------- */

        .container.mt-5 .form-control:hover {

            border-color: #c89b5b;
        }


        /* ---------- INPUT FOCUS ---------- */

        .container.mt-5 .form-control:focus {

            background: #ffffff;

            border-color: #c89b5b;

            outline: none;

            box-shadow:
                0 0 0 3px rgba(200, 155, 91, 0.15),
                0 8px 20px rgba(59, 36, 26, 0.08);

            transform: translateY(-1px);
        }


        /* ---------- SELECT ---------- */

        .container.mt-5 .form-select {

            height: 50px;

            padding: 0 16px;

            background-color: #fffdf9;

            border: 1px solid #dbc5a5;

            border-radius: 11px;

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


        /* Select focus */

        .container.mt-5 .form-select:focus {

            border-color: #c89b5b;

            box-shadow:
                0 0 0 3px rgba(200, 155, 91, 0.15);
        }


        /* ---------- UPDATE BUTTON ---------- */

        .container.mt-5 .btn-success {

            min-width: 170px;

            height: 48px;

            padding: 0 25px;

            border: none;

            border-radius: 10px;

            background: linear-gradient(
                135deg,
                #5a3828,
                #76513c
            ) !important;

            color: #fff9f0 !important;

            font-family: 'DM Sans', sans-serif;

            font-size: 14px;

            font-weight: 700;

            box-shadow:
                0 9px 20px rgba(59, 36, 26, 0.20);

            transition:
                transform 0.25s ease,
                box-shadow 0.25s ease,
                background 0.25s ease;
        }


        /* Update hover */

        .container.mt-5 .btn-success:hover {

            background: linear-gradient(
                135deg,
                #76513c,
                #8b6047
            ) !important;

            transform: translateY(-2px);

            box-shadow:
                0 13px 25px rgba(59, 36, 26, 0.27);
        }


        /* ---------- CANCEL BUTTON ---------- */

        .container.mt-5 .btn-secondary {

            min-width: 110px;

            height: 48px;

            padding: 0 22px;

            margin-left: 8px;

            border: 1px solid #c9ad8c;

            border-radius: 10px;

            background: #f4e1c1 !important;

            color: #5a3828 !important;

            font-family: 'DM Sans', sans-serif;

            font-size: 14px;

            font-weight: 600;

            transition:
                transform 0.25s ease,
                background 0.25s ease,
                box-shadow 0.25s ease;
        }


        /* Cancel hover */

        .container.mt-5 .btn-secondary:hover {

            background: #e7cda5 !important;

            color: #3b241a !important;

            transform: translateY(-2px);

            box-shadow:
                0 8px 18px rgba(59, 36, 26, 0.12);
        }


        /* ---------- SUCCESS MESSAGE ---------- */

        .container.mt-5 .text-success {

            display: inline-block;

            margin-top: 18px;

            padding: 10px 15px;

            background: #f4e1c1;

            border-left: 4px solid #c89b5b;

            border-radius: 7px;

            color: #5a3828 !important;

            font-size: 14px;

            font-weight: 600;

            animation: messageAppear 0.4s ease;
        }


        /* ---------- ANIMATIONS ---------- */

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
                transform: translateY(-5px) rotate(3deg);
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


        /* ---------- RESPONSIVE ---------- */

        @media (max-width: 768px) {

            .container.mt-5 {

                width: auto;

                margin: 35px 20px !important;
            }

            .container.mt-5 .card-body {

                padding: 30px 25px;
            }

            .container.mt-5 .card-header h3 {

                font-size: 25px;
            }
        }


        @media (max-width: 480px) {

            .container.mt-5 {

                margin: 25px 12px !important;
            }

            .container.mt-5 .card-body {

                padding: 25px 18px;
            }

            .container.mt-5 .btn-success {

                width: 100%;

                margin-bottom: 10px;
            }

            .container.mt-5 .btn-secondary {

                width: 100%;

                margin-left: 0;
            }

            .container.mt-5 .card-header h3 {

                font-size: 23px;
            }
        }

    </style>

</head>
	</style>
</head>
<body>

   <jsp:include page="admindashboard.jsp"></jsp:include>

	<div class="container mt-5">

		<div class="card shadow">

			<div class="card-header bg-primary text-white">
				<h3>Update Student</h3>
			</div>

			<div class="card-body">

				<form action="${pageContext.request.contextPath}/stud/updatestudent"
					method="post">

					<!-- Hidden Student ID -->
					<input type="hidden" name="sid" value="${student.sid}" />

					<div class="mb-3">
						<label class="form-label">Student Name</label> <input type="text"
							name="sname" value="${student.sname}" class="form-control"
							required>
					</div>

					<div class="mb-3">
						<label class="form-label">Student Email</label> <input
							type="email" name="semail" value="${student.semail}"
							class="form-control" required>
					</div>

					<div class="mb-3">
						<label class="form-label">Student Contact</label> <input
							type="text" name="scontact" value="${student.scontact}"
							class="form-control" required>
					</div>

					<div class="mb-3">
						<label class="form-label">Select Course</label> <select name="id"
							class="form-select">

							<c:forEach var="course" items="${clist}">

								<option value="${course.id}"
									<c:if test="${course.id == student.id}">
                selected
            </c:if>>
									${course.course}</option>

							</c:forEach>

						</select>

					</div>

					<input type="submit" value="Update Student" class="btn btn-success">

					<a href="${pageContext.request.contextPath}/stud/viewstud"
						class="btn btn-secondary"> Cancel </a> <br>
					<br> <label class="text-success"> ${msg} </label>

				</form>

			</div>

		</div>

	</div>
</body>
</html>