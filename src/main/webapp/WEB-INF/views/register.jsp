<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注册</title>

    <link rel="stylesheet" type="text/css" href="/SocialRisk/plugins/bootstrap/css/bootstrap.css" />


</head>
<style>
    html,
    body {
        height: 100%;
    }

    body {
        /* display: -ms-flexbox;
        display: -webkit-box; */
        /* display: flex; */
        -ms-flex-align: center;
        -ms-flex-pack: center;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        padding-top: 40px;
        padding-bottom: 40px;
        /* background-color: #f5f5f5; */
        background: #fff;
    }

    .form-signin {
        width: 100%;
        max-width: 330px;
        padding: 15px;
        margin: 0 auto;
        
    }

    .form-signin .checkbox {
        font-weight: 400;
    }

    .form-signin .form-control {
        /* position: relative; */
        box-sizing: border-box;
        height: auto;
        padding: 10px;
        font-size: 16px;
        margin-top: 20px;
    }

    .form-signin .form-control:focus {
        z-index: 2;

    }

    /* .form-signin input[type="email"] {
        margin-bottom: -1px;
        border-bottom-right-radius: 0;
        border-bottom-left-radius: 0;
    } */

    .form-signin input[type="password"] {
        margin-bottom: 10px;
        border-top-left-radius: 0;
        border-top-right-radius: 0;
    }

    .title-line {
        width: 980px;
        height: 28px;
        margin: 0 auto;
        border-bottom: 1px solid #ddd;
        margin-bottom: 28px;
        text-align: center;
        margin-top: 5%;
        margin-bottom: 5%;
    }

    .title-line .tit {
        height: 56px;
        line-height: 56px;
        margin: 0 auto;
        padding: 0 20px;
        font-size: 40px;
        background: #fff;
        text-align: center;
    }
</style>
</head>

<body class="text-center">
    <div class="title-line">
        <span class="tit" style="font-size: 38px;">注册</span>
    </div>
    <form class="form-signin" action="doRegister.shtml" method="post">
        <!-- <h1 class="h3 mb-3 font-weight-normal">注册</h1> -->
        <label for="username" class="sr-only">Username</label>
        <input type="" id="username" class="form-control" placeholder="用户名" required=" " autofocus="" name="username">
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="密码" required="" name="password">

        <button class="btn btn-lg btn-primary btn-block" type="submit">注 册</button>
    </form>
</body>

</html>