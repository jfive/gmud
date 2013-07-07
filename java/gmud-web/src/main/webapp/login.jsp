<!DOCTYPE html>
<html class="login-bg">
<head>
	<title>Detail Admin - Sign in</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- bootstrap -->
    <link href="<c:url value='/css/bootstrap/bootstrap.css'/>" rel="stylesheet">
    <link href="<c:url value='/css/bootstrap/bootstrap-responsive.css'/>" rel="stylesheet">
    <link href="<c:url value='/css/bootstrap/bootstrap-overrides.css'/>" type="text/css" rel="stylesheet">

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/layout.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/elements.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/icons.css'/>">

    <!-- libraries -->
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/lib/font-awesome.css'/>">

    <!-- this page specific styles -->
    <link rel="stylesheet" href="<c:url value='/css/compiled/signin.css'/>" type="text/css" media="screen" />

    <!-- open sans font -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>

    <!-- background switcher -->
    <div class="bg-switch visible-desktop">
        <div class="bgs">
            <a href="<c:url value='/#'/>" data-img="landscape.jpg" class="bg active">
                <img src="<c:url value='/img/bgs/landscape.jpg'/>" />
            </a>
            <a href="<c:url value='/#'/>" data-img="blueish.jpg" class="bg">
                <img src="<c:url value='/img/bgs/blueish.jpg'/>" />
            </a>
            <a href="<c:url value='/#'/>" data-img="7.jpg'/>" class="bg">
                <img src="<c:url value='/img/bgs/7.jpg'/>" />
            </a>
            <a href="<c:url value='/#'/>" data-img="8.jpg" class="bg">
                <img src="<c:url value='/img/bgs/8.jpg'/>" />
            </a>
            <a href="<c:url value='/#'/>" data-img="9.jpg" class="bg">
                <img src="<c:url value='/img/bgs/9.jpg'/>" />
            </a>
            <a href="<c:url value='/#'/>" data-img="10.jpg'/>" class="bg">
                <img src="<c:url value='/img/bgs/10.jpg'/>" />
            </a>
            <a href="<c:url value='/#'/>" data-img="11.jpg" class="bg">
                <img src="<c:url value='/img/bgs/11.jpg'/>" />
            </a>
        </div>
    </div>

    <form action="<c:url value='/j_security_check'/>" method="post">
        <div class="row-fluid login-wrapper">
            <img class="logo" src="<c:url value='/img/logo-white.png'/>">

            <div class="span4 box">
                <div class="content-wrap">
                    <h6>Log in</h6>
                    <input class="span12" type="text" name="j_username" placeholder="E-mail address">
                    <input class="span12" type="password" name="j_password" placeholder="Your password">
                    <a href="#" class="forgot">Forgot password?</a>
                    <div class="remember">
                        <input id="remember-me" type="checkbox" name="rememberme" value="true">
                        <label for="remember-me">Remember me</label>
                    </div>
                    <input class="btn-glow primary login" type="submit" value="Log in"/>
                </div>
            </div>

            <div class="span4 no-account">
            <p>Don't have an account?</p>
                <a href="<c:url value='/signup.html'/>">Sign up</a>
            </div>
        </div>
    </form>

	<!-- scripts -->
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="<c:url value='/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/js/theme.js'/>"></script>

    <!-- pre load bg imgs -->
    <script type="text/javascript">
        $(function () {
            // bg switcher
            var $btns = $(".bg-switch .bg");
            $btns.click(function (e) {
                e.preventDefault();
                $btns.removeClass("active");
                $(this).addClass("active");
                var bg = $(this).data("img");

                $("html").css("background-image", "url('img/bgs/" + bg + "')");
            });

        });
    </script>
</body>
</html>