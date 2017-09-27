<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>


    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/css.css" rel="stylesheet">
    <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">

</head>
<body style="background-color: #ebebed">

<jsp:include page="includes/top_bar.jsp">
    <jsp:param name="menu" value="user_menu.html"/>
</jsp:include>

<div class="row">
    <jsp:include page="includes/category_selector.jsp"/>
    <div class="col-md-9 col-xs-8"  >
        <div class="box" style=" height: 100% ; min-height: 1050px ; margin: 20px ; margin-left: 0px ; margin-right: 5px ; padding-bottom: 20px ; background-color: white">
            <div class="row" style="">
                <div class="box" style="height: 30px ; background-color: #1b8fd8 ; margin-top: 20px ; margin-right: 40px ; margin-left: 40px ;  padding: 5px ; padding-left: 10px">
                    <span style="color: white ; font-size: medium ; font-weight: bold ">About Us</span>
                </div>
            </div>
            <div class="row" style="">
                <div class="box" style="height: 100% ;  margin-top: 20px ; margin-right: 40px ; margin-left: 40px ; padding-top: 10px ; padding-bottom: 10px   ">

                    <div class="col-md-9 col-xs-8" style="height: 100% ">
                        <div class="box" style="height: 100% ; width: 100% ; margin-left: -10px ; margin-right: -10px  ">
                            <span >Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum
                                has been the industry's standard dummy text ever since the 1500s, when an unknown printer
                                took a galley of type and scrambled it to make a type specimen book. It has survived not
                                only five centuries, but also the leap into electronic typesetting, remaining essentially
                                unchanged. It was popularised in the 1960s with the release of Letraset sheets containing
                                Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker
                                including versions of Lorem Ipsum.
                            </span><br><br>
                            <span>
                                It is a long established fact that a reader will be distracted by the readable content
                                of a page when looking at its layout. The point of using Lorem Ipsum is that it has a
                                more-or-less normal distribution of letters, as opposed to using 'Content here, content
                                here', making it look like readable English. Many desktop publishing packages and web page
                                editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will
                                uncover many web sites still in their infancy. Various versions have evolved over the years,
                                sometimes by accident, sometimes on purpose (injected humour and the like).
                            </span><br><br>
                            <span>
                                Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a
                                piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard
                                McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the
                                more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the c
                                ites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum
                                comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes
                                of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of
                                ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum
                                dolor sit amet..", comes from a line in section 1.10.32.
                            </span><br><br>
                            <span>
                                There are many variations of passages of Lorem Ipsum available, but the majority have s
                                uffered alteration in some form, by injected humour, or randomised words which don't
                                look even slightly believable. If you are going to use a passage of Lorem Ipsum, you
                                need to be sure there isn't anything embarrassing hidden in the middle of text. All the
                                Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary,
                                making this the first true generator on the Internet. It uses a dictionary of over 200
                                Latin words, combined with a handful of model sentence structures, to generate Lorem
                                Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from
                                repetition, injected humour, or non-characteristic words etc.
                            </span>
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-4" style="height: 100% ">
                        <div class="box" style="height: 100% ; width: 100% ; padding: 5px ; padding-top: 15px  ">
                            <span style="font-weight: bold">Why Choose Us</span><br><br>
                            <ul>
                                <li>Fast Delivery<br><br></li>
                                <li>Multiple payment options<br><br></li>
                                <li>Buy on credit<br><br></li>
                                <li>100% Sri lankan<br><br></li>
                                <li>Support store pickup</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>



        </div>




    </div>
</div>


<div class="footer">@ Ultra Electronics web store - Galle</div>



<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>