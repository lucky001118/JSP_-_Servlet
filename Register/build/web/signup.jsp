<%-- 
    Document   : signup
    Created on : 27-Dec-2023, 10:14:37 am
    Author     : manik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </head>
    <body style="background-image: url(img/b2.jpg); background-size: cover; background-attachment: fixed;">
        <div class="container">
            <div class="row"> 
                <div class="col m6 offset-m3">

                    <div class="card">
                        <div class="card-content">
                            <h3 style="margin-top: 10px;" class="center-align">Register here!</h3>
                            <h5 id="msg" class="center-align"></h5>
                            <div class="form center-align">
                                <!--//creating form-->
                                <form action="Register" method="post" id="myform">
                                    <input type="text" name="user_name" placeholder="Enter user name"/>
                                    <input type="password" name="user_password" placeholder="Enter user password"/>
                                    <input type="text" name="user_email" placeholder="Enter user emailID"/>

                                    <div class="file-field input-field">
                                        <div class="btn">
                                            <span>File</span>
                                            <input type="file" name="image" placeholder="Select the image">
                                        </div>
                                        <div class="file-path-wrapper">
                                            <input class="file-path validate" type="text">
                                        </div>
                                    </div>

                                    <button type="submit" class="btn teal lighten-2">Submit</button>
                                </form>
                            </div>

                            <div class="loader center-align" style="margin-top: 10px; display: none;">

                                <div class="preloader-wrapper big active">
                                    <div class="spinner-layer spinner-blue">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-red">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-yellow">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-green">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>
                                </div>
                                <h5>Please wait...</h5>
                            </div>

                        </div>
                    </div>

                </div>
            </div>

        </div>
        <script
            src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>

        <script>
            $(document).ready(function () {
                console.log("page is ready.....!");

                $("#myform").on('submit', function (event) {
                    event.preventDefault();

                    //var f = $(this).serialize();       //this line only sent the text type data in the server instite of this we are going to use another method
                    let f = new FormData(this);
                    console.log(f);

                    $(".loader").show();
                    $(".form").hide();

                    $.ajax({
                        url: "Register",
                        data: f,
                        type: 'POST',
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            console.log("Success.........");
                            $(".loader").hide();
                            $(".form").show();

                            if (data.trim() === 'done') {
                                $("#msg").html("successfully registered!");
                                $("#msg").addClass('green-text');
                            } else {
                                $('#msg').html("ops, something went wrong on server!");
                                $("#msg").addClass('red-text');

                            }

                        },
                        error: function (ajXHR, textStatus, errorThrown) {
                            console.log(data);
                            console.log("Error.......");
                            $(".loader").hide();
                            $(".form").show();

                            $("#msg").html("ops, something went wrong on server!");
                            $("#msg").addClass('red-text');

                        },
                        
                        //this parameter is also use to send the image in the server.
                        processData: false,
                        contentType: false
                    });
                });
            });
        </script>
    </body>
</html>
