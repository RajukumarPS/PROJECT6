<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>College Examination & Attendance System</title>
    <link rel="stylesheet" href="styleforhome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        /* Navigation Bar */
        nav ul {
            list-style-type: none;
            padding: 0;
            display: flex;
            background-color: #333;
            display:flex;
            justify-content:space-around;
        }

        nav ul li {
            margin: 0;
            padding: 15px;
        }

        nav ul li a {
            text-decoration: none;
            color: white;
            padding: 10px 15px;
           
            justify-content:space-around;
        }

        nav ul li a:hover {
            background-color: #4CAF50;
            color: white;
             justify-content:space-between;
        }

        /* Carousel */
        .carousel {
            display: flex;
            overflow: hidden;
            margin: 20px auto;
            width: 80%;
        }

        .carousel img {
            width: 100%;
            animation: slide 10s infinite;
        }

        @keyframes slide {
            0% { transform: translateX(0); }
            33% { transform: translateX(-100%); }
            66% { transform: translateX(-200%); }
        }

        /* Hero Section */
        .hero {
            position: relative;
            
            color: white;
        }

        .hero video {
            width: 100%;
            height: auto;
            z-index: -1;
        }


        /* Clock */
        #clock {
            font-size: 20px;
            color: #333;
            text-align: center;
            margin: 20px 0;
        }

        /* Login Button */
        .login-btn {
            background-color: #333;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }

        .login-btn:hover {
            background-color: #4CAF50;
            transform: scale(1.1);
            transition: 0.3s;
        }

        /* Footer */
        .footer {
            width: 100%;
            height: 20vh;
            text-align: center;
            padding: 20px 12px;
            background: #444;
        }

        .footer a {
            color: white;
            margin: 0 10px;
            font-size: 20px;
            text-decoration: none;
        }
    </style>
</head>
<body style="background-color:darkgray">
    <header>
        <h1>XYZ INSTITUTE OF TECHNOLOGY</h1>
                <div class="welcome">
            <h2>Welcome to the College Examination & Attendance Management System</h2>
            <p>Efficiently track and manage student attendance and examination seat allotment with ease.</p>
           
        </div>
    </header>

    <nav>
        <ul>
            <li><a href="home.aspx">Home</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="contact.html">Contact</a></li>
             <li><a href="teacherlogin.aspx">Take Attendence</a></li>

            <li> <a href="Login.aspx">Chief Examination Login</a></li>
        </ul>
    </nav>

    <main>
        <br />
        <br />
        <br />
        <br />
        <div class="hero">
                       

                        

            <h1>Welcome to XYZ Institute of Technology</h1><br />
        </div>
        <br />
        <br />
        <br />
        <br />

        <div id="clock"></div>


        <div class="footer">
            <a href="http://www.facebook.com"><i class="fab fa-facebook"></i></a>
            <a href="http://www.twitter.com"><i class="fab fa-twitter"></i></a>
            <a href="http://www.instagram.com"><i class="fab fa-instagram"></i></a>
            <a href="http://www.linkedin.com"><i class="fab fa-linkedin"></i></a>
            <a href="https://maps.app.goo.gl/HTQyhxKVFUfEAfA56"><i class="fas fa-map-marker-alt"></i></a>
        </div>
    </main>

    <script>
        function updateClock() {
            let now = new Date();
            document.getElementById("clock").innerText = now.toLocaleTimeString();
        }
        setInterval(updateClock, 1000);
        updateClock();
    </script>
</body>
</html>
