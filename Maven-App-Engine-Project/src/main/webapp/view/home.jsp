<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Chobbo Chosso</title>

        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

        <!-- custom css file link  -->


        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    </head>

    <body>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Nunito:wght@200;300;400;600;700&display=swap');

            :root {
                --red: #ff3838;
            }

            * {
                font-family: 'Nunito', sans-serif;
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                outline: none;
                border: none;
                text-decoration: none;
                text-transform: capitalize;
                transition: all .2s linear;
            }

            *::selection {
                background: var(--red);
                color: #fff;
            }

            html {
                font-size: 62.5%;
                overflow-x: hidden;
                scroll-behavior: smooth;
                scroll-padding-top: 6rem;
            }

            body {
                background: #f7f7f7;
            }

            section {
                padding: 2rem 9%;
            }

            .heading {
                text-align: center;
                font-size: 3.5rem;
                padding: 1rem;
                color: #666;
            }

            .heading span {
                color: var(--red);
            }

            .btn {
                display: inline-block;
                padding: .8rem 3rem;
                border: .2rem solid var(--red);
                color: var(--red);
                cursor: pointer;
                font-size: 1.7rem;
                border-radius: .5rem;
                position: relative;
                overflow: hidden;
                z-index: 0;
                margin-top: 1rem;
            }

            .btn::before {
                content: '';
                position: absolute;
                top: 0;
                right: 0;
                width: 0%;
                height: 100%;
                background: var(--red);
                transition: .3s linear;
                z-index: -1;
            }

            .btn:hover::before {
                width: 100%;
                left: 0;
            }

            .btn:hover {
                color: #fff;
            }

            header {
                position: fixed;
                top: 0;
                left: 0;
                right: 0;
                z-index: 1000;
                display: flex;
                align-items: center;
                justify-content: space-between;
                background: #fff;
                padding: 2rem 9%;
                box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .1);
            }

            header .logo {
                font-size: 2.5rem;
                font-weight: bolder;
                color: #666;
            }

            header .logo i {
                padding-right: .5rem;
                color: var(--red);
            }

            header .navbar a {
                font-size: 2rem;
                margin-left: 2rem;
                color: #666;
            }

            header .navbar a:hover {
                color: var(--red);
            }

            #menu-bar {
                font-size: 3rem;
                cursor: pointer;
                color: #666;
                border: .1rem solid #666;
                border-radius: .3rem;
                padding: .5rem 1.5rem;
                display: none;
            }

            .home {
                display: flex;
                flex-wrap: wrap;
                gap: 1.5rem;
                min-height: 100vh;
                align-items: center;
                background: url("https://imageupload.io/ib/lmBQlV2aNu74q8W_1697405585.jpg") no-repeat;
                background-size: cover;
                background-position: center;
            }

            .home .content {
                flex: 1 1 40rem;
                padding-top: 6.5rem;
            }

            .home .image {
                flex: 1 1 40rem;
            }

            .home .image img {
                width: 100%;
                padding: 1rem;
                animation: float 3s linear infinite;
            }

            @keyframes float {

                0%,
                100% {
                    transform: translateY(0rem);
                }

                50% {
                    transform: translateY(3rem);
                }
            }

            .home .content h3 {
                font-size: 5rem;
                color: #333;
            }

            .home .content p {
                font-size: 1.7rem;
                color: #666;
                padding: 1rem 0;
            }

            .speciality .box-container {
                display: flex;
                flex-wrap: wrap;
                gap: 1.5rem;
            }

            .speciality .box-container .box {
                flex: 1 1 30rem;
                position: relative;
                overflow: hidden;
                box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .1);
                border: .1rem solid rgba(0, 0, 0, .3);
                cursor: pointer;
                border-radius: .5rem;
            }

            .speciality .box-container .box .image {
                height: 100%;
                width: 100%;
                object-fit: cover;
                position: absolute;
                top: -100%;
                left: 0;
            }

            .speciality .box-container .box .content {
                text-align: center;
                background: #fff;
                padding: 2rem;
            }

            .speciality .box-container .box .content img {
                margin: 1.5rem 0;
            }

            .speciality .box-container .box .content h3 {
                font-size: 2.5rem;
                color: #333;
            }

            .speciality .box-container .box .content p {
                font-size: 1.6rem;
                color: #666;
                padding: 1rem 0;
            }

            .speciality .box-container .box:hover .image {
                top: 0;
            }

            .speciality .box-container .box:hover .content {
                transform: translateY(100%);
            }

            .popular .box-container {
                display: flex;
                flex-wrap: wrap;
                gap: 1.5rem;
            }

            .popular .box-container .box {
                padding: 2rem;
                background: #fff;
                box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .1);
                border: .1rem solid rgba(0, 0, 0, .3);
                border-radius: .5rem;
                text-align: center;
                flex: 1 1 30rem;
                position: relative;
            }

            .popular .box-container .box img {
                height: 25rem;
                object-fit: cover;
                width: 100%;
                border-radius: .5rem;
            }

            .popular .box-container .box .price {
                position: absolute;
                top: 3rem;
                left: 3rem;
                background: var(--red);
                color: #fff;
                font-size: 2rem;
                padding: .5rem 1rem;
                border-radius: .5rem;
            }

            .popular .box-container .box h3 {
                color: #333;
                font-size: 2.5rem;
                padding-top: 1rem;
            }

            .popular .box-container .box .stars i {
                color: gold;
                font-size: 1.7rem;
                padding: 1rem .1rem;
            }

            .steps {
                display: flex;
                flex-wrap: wrap;
                gap: 1.5rem;
                padding: 1rem;
            }

            .steps .box {
                flex: 1 1 25rem;
                padding: 1rem;
                text-align: center;
            }

            .steps .box img {
                border-radius: 50%;
                border: 1rem solid #fff;
                box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .1);
            }

            .steps .box h3 {
                font-size: 3rem;
                color: #333;
                padding: 1rem;
            }

            .gallery .box-container {
                display: flex;
                flex-wrap: wrap;
                gap: 1.5rem;
            }

            .gallery .box-container .box {
                height: 25rem;
                flex: 1 1 30rem;
                border: 1rem solid #fff;
                box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .1);
                border-radius: .5rem;
                position: relative;
                overflow: hidden;
            }

            .gallery .box-container .box img {
                height: 100%;
                width: 100%;
                object-fit: cover;
            }

            .gallery .box-container .box .content {
                position: absolute;
                top: -100%;
                left: 0;
                height: 100%;
                width: 100%;
                background: rgba(255, 255, 255, .9);
                padding: 2rem;
                padding-top: 5rem;
                text-align: center;
            }

            .gallery .box-container .box .content h3 {
                font-size: 2.5rem;
                color: #333;
            }

            .gallery .box-container .box .content p {
                font-size: 1.5rem;
                color: #666;
                padding: 1rem 0;
            }

            .gallery .box-container .box:hover .content {
                top: 0;
            }

            .review .box-container {
                display: flex;
                flex-wrap: wrap;
                gap: 1.5rem;
            }

            .review .box-container .box {
                text-align: center;
                padding: 2rem;
                border: 1rem solid #fff;
                box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .3);
                border-radius: .5rem;
                flex: 1 1 30rem;
                background: #333;
                margin-top: 6rem;
            }

            .review .box-container .box img {
                height: 12rem;
                width: 12rem;
                border-radius: 50%;
                border: 1rem solid #fff;
                margin-top: -8rem;
                object-fit: cover;
            }

            .review .box-container .box h3 {
                font-size: 2.5rem;
                color: #fff;
                padding: .5rem 0;
            }

            .review .box-container .box .stars i {
                font-size: 2rem;
                color: var(--red);
                padding: .5rem 0;
            }

            .review .box-container .box p {
                font-size: 1.5rem;
                color: #eee;
                padding: 1rem 0;
            }

            .order .row {
                padding: 2rem;
                box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .1);
                background: #fff;
                display: flex;
                flex-wrap: wrap;
                gap: 1.5rem;
                border-radius: .5rem;
            }

            .order .row .image {
                flex: 1 1 30rem;
            }

            .order .row .image img {
                height: 100%;
                width: 100%;
                object-fit: cover;
                border-radius: .5rem;
            }

            .order .row form {
                flex: 1 1 50rem;
                padding: 1rem;
            }

            .order .row form .inputBox {
                display: flex;
                justify-content: space-between;
                flex-wrap: wrap;
            }

            .order .row form .inputBox input,
            .order .row form textarea {
                padding: 1rem;
                margin: 1rem 0;
                font-size: 1.7rem;
                color: #333;
                text-transform: none;
                border: .1rem solid rgba(0, 0, 0, .3);
                border-radius: .5rem;
                width: 49%;
            }

            .order .row form textarea {
                width: 100%;
                resize: none;
                height: 15rem;
            }

            .order .row form .btn {
                background: none;
            }

            .order .row form .btn:hover {
                background: var(--red);
            }

            .footer {
                background: #000;
                text-align: center;
            }

            .footer .share {
                display: flex;
                gap: 1.5rem;
                justify-content: center;
                flex-wrap: wrap;
            }

            .footer .credit {
                padding: 2.5rem 1rem;
                color: #fff;
                font-weight: normal;
                font-size: 2rem;
            }

            .footer .credit span {
                color: var(--red);
            }

            #scroll-top {
                position: fixed;
                top: -120%;
                right: 2rem;
                padding: .5rem 1.5rem;
                font-size: 4rem;
                background: var(--red);
                color: #fff;
                border-radius: .5rem;
                transition: 1s linear;
                z-index: 1000;
            }

            #scroll-top.active {
                top: calc(100% - 12rem)
            }

            .loader-container {
                position: fixed;
                top: 0;
                left: 0;
                z-index: 10000;
                background: #fff;
                display: flex;
                align-items: center;
                justify-content: center;
                height: 100%;
                width: 100%;
            }

            .loader-container.fade-out {
                top: -120%;
            }














            /* media queries  */

            @media(max-width:991px) {

                html {
                    font-size: 55%;
                }

                header {
                    padding: 2rem;
                }

                section {
                    padding: 2rem;
                }

            }

            @media(max-width:768px) {

                #menu-bar {
                    display: initial;
                }

                header .navbar {
                    position: absolute;
                    top: 100%;
                    left: 0;
                    right: 0;
                    background: #f7f7f7;
                    border-top: .1rem solid rgba(0, 0, 0, .1);
                    clip-path: polygon(0 0, 100% 0, 100% 0, 0 0);
                }

                header .navbar.active {
                    clip-path: polygon(0 0, 100% 0, 100% 100%, 0% 100%);
                }

                header .navbar a {
                    margin: 1.5rem;
                    padding: 1.5rem;
                    display: block;
                    border: .2rem solid rgba(0, 0, 0, .1);
                    border-left: .5rem solid var(--red);
                    background: #fff;
                }

            }

            @media(max-width:450px) {

                html {
                    font-size: 50%;
                }

                .order .row form .inputBox input {
                    width: 100%;
                }

            }

            #logo1 {
                color: green;
            }
        </style>

        <!-- header section starts  -->

        <header>

            <a href="#" class="logo"><i class="fas fa-utensils"></i><span id="logo1">Chobbo</span> Chosso</a>

            <div id="menu-bar" class="fas fa-bars"></div>

            <nav class="navbar">
                <a href="#home">home</a>
                <a href="#speciality">speciality</a>
                <a href="#popular">popular</a>
                <a href="#gallery">gallery</a>
                <a href="#review">review</a>
                <a href="#order">order now</a>
                <a href="#getQuote">Get quote</a>
                <a href="#workDay">Buisness hours</a>
            </nav>

        </header>

        <!-- header section ends -->

        <!-- home section starts  -->
        

        <section class="home" id="home">

            <div class="content">
                <h3>food made with love</h3>
                <p>We are a small cloud kitchen trying to provide some traditional dishes and urban delicacies.</p>
                <p>
                <h1>Address : <br> 27/5, Shib Narayan Road
                    Uttarpara,<br> West Bengal - 712258,
                    <br> India
                </h1>
                </p>
                <a href="https://www.google.com/maps/dir//Chobbo+Chosso/@22.6568657,88.3117217,13z/data=!4m8!4m7!1m0!1m5!1m1!1s0x39f89d0d7dfc7ea3:0x62dbd95c4e1cba26!2m2!1d88.3467395!2d22.6567856"
                    class="btn" target="_blank"><i class="fas fa-directions"></i><b> Get direction</b></a><a href="#"
                    class="logo"></a> &nbsp;

                <br>
                <br>
                <a href="tel:+91-62901-92575"><span id="phoneNo" style="font-size: 120%; color: green;">
                        <h1><i class="fas fa-phone"></i> : 916290192575</h1>
                    </span></a>



                <a href="mailto:soumikbose560@gmail.com"><span id="phoneNo" style="font-size: 120%; color: green;">
                        <h1><i class="fas fa-envelope"></i> : soumikbose560@gmail.com</h1>
                    </span></a>
            </div>

            <div class="image">
                <img src="https://imageupload.io/ib/HO9op2EpwWJUVJK_1697403752.png" alt="">

            </div>



        </section>

        <!-- home section ends -->

        <!-- speciality section starts  -->

        <section class="speciality" id="speciality">

            <h1 class="heading"> our <span>speciality</span> </h1>

            <div class="box-container">

                <div class="box">
                    <img class="image" src="https://imageupload.io/ib/TXuPVmHyUc6T6Qf_1697404751.jpg" alt="">
                    <div class="content">
                        <img src="https://imageupload.io/ib/dlU6hcNZ1rPGXan_1697404452.png" alt="">
                        <h3>tasty burger</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda inventore neque amet ipsa
                            tenetur voluptates aperiam tempore libero labore aut.</p>
                    </div>
                </div>
                <div class="box">
                    <img class="image" src="https://imageupload.io/ib/9xSAnfaPkcmmgXU_1697404755.jpg" alt="">
                    <div class="content">
                        <img src="https://imageupload.io/ib/5Xlz3yKx4dZOBh4_1697404452.png" alt="">
                        <h3>tasty pizza</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda inventore neque amet ipsa
                            tenetur voluptates aperiam tempore libero labore aut.</p>
                    </div>
                </div>
                <div class="box">
                    <img class="image" src="https://imageupload.io/ib/rVTWoTEnx0lAgMe_1697404751.jpg" alt="">
                    <div class="content">
                        <img src="https://imageupload.io/ib/QHVOU23XfMpI6w8_1697404452.png" alt="">
                        <h3>cold ice-cream</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda inventore neque amet ipsa
                            tenetur voluptates aperiam tempore libero labore aut.</p>
                    </div>
                </div>
                <div class="box">
                    <img class="image" src="https://imageupload.io/ib/6PBDTNe7ibPN0eB_1697404752.jpg" alt="">
                    <div class="content">
                        <img src="https://imageupload.io/ib/TzwYVQ14eijvJ29_1697404452.png" alt="">
                        <h3>cold drinks</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda inventore neque amet ipsa
                            tenetur voluptates aperiam tempore libero labore aut.</p>
                    </div>
                </div>
                <div class="box">
                    <img class="image" src="https://imageupload.io/ib/Zj6gJ2ITVCEEAZc_1697404755.jpg" alt="">
                    <div class="content">
                        <img src="https://imageupload.io/ib/risJKZbADiCDWNf_1697404452.png" alt="">
                        <h3>tasty sweets</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda inventore neque amet ipsa
                            tenetur voluptates aperiam tempore libero labore aut.</p>
                    </div>
                </div>
                <div class="box">
                    <img class="image" src="https://imageupload.io/ib/tb6d7NyJlU4yeaq_1697405003.jpg" alt="">
                    <div class="content">
                        <img src="https://imageupload.io/ib/dp5bQMC9ysvQLQQ_1697405002.png" alt="">
                        <h3>healty breakfast</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda inventore neque amet ipsa
                            tenetur voluptates aperiam tempore libero labore aut.</p>
                    </div>
                </div>

            </div>

        </section>

        <!-- speciality section ends -->

        <!-- popular section starts  -->

        <section class="popular" id="popular">

            <h1 class="heading"> most <span>popular</span> foods </h1>

            <div class="box-container">

                <div class="box">
                    <span class="price"> $5 - $20 </span>
                    <img src="https://imageupload.io/ib/wsG9AWDog1kKg5G_1697405359.jpg" alt="">
                    <h3>tasty burger</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                    <a href="#" class="btn">order now</a>
                </div>
                <div class="box">
                    <span class="price"> $5 - $20 </span>
                    <img src="https://imageupload.io/ib/Y5XL9obERoUP32k_1697405368.jpg" alt="">
                    <h3>tasty chicken</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                    <a href="#" class="btn">order now</a>
                </div>
                <div class="box">
                    <span class="price"> $5 - $20 </span>
                    <img src="https://imageupload.io/ib/Rou1ING5POQMT9n_1697405370.jpg" alt="">
                    <h3>tasty momos</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                    <a href="#" class="btn">order now</a>
                </div>
                <div class="box">
                    <span class="price"> $5 - $20 </span>
                    <img src="https://imageupload.io/ib/LOA91ktE68dAY6v_1697405358.jpg" alt="">
                    <h3>tasty cupcakes</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                    <a href="#" class="btn">order now</a>
                </div>
                <div class="box">
                    <span class="price"> $5 - $20 </span>
                    <img src="https://imageupload.io/ib/FOHVdI2nZCmZuLt_1697405360.jpg" alt="">
                    <h3>cold drinks</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                    <a href="#" class="btn">order now</a>
                </div>
                <div class="box">
                    <span class="price"> $5 - $20 </span>
                    <img src="https://imageupload.io/ib/3JQjhADs3Pnt8I8_1697405588.jpg" alt="">
                    <h3>cold ice-cream</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                    <a href="#" class="btn">order now</a>
                </div>

            </div>

        </section>

        <!-- popular section ends -->

        <!-- steps section starts  -->

        <div class="step-container">

            <h1 class="heading">how it <span>works</span></h1>

            <section class="steps">

                <div class="box">
                    <img src="https://imageupload.io/ib/oHRARTBC7ms7W5g_1697404205.jpg" alt="">
                    <h3>choose your favorite food</h3>
                </div>
                <div class="box">
                    <img src="https://imageupload.io/ib/m90NtQSzzE0cfRT_1697404206.jpg" alt="">
                    <h3>free and fast delivery</h3>
                </div>
                <div class="box">
                    <img src="https://imageupload.io/ib/u8X2OZcdLV4Qf3P_1697404206.jpg" alt="">
                    <h3>easy payments methods</h3>
                </div>
                <div class="box">
                    <img src="https://imageupload.io/ib/ZKZ3mGC4jrGUXhV_1697404205.jpg" alt="">
                    <h3>and finally, enjoy your food</h3>
                </div>

            </section>

        </div>

        <!-- steps section ends -->

        <!-- gallery section starts  -->

        <section class="gallery" id="gallery">

            <h1 class="heading"> our food <span> gallery </span> </h1>

            <div class="box-container">

                <div class="box">
                    <img src="https://imageupload.io/ib/N7mnplIYz9pzU2p_1697405932.jpg" alt="">
                    <div class="content">
                        <h3>tasty food</h3>
                        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, ipsum.</p>
                        <a href="#" class="btn">order now</a>
                    </div>
                </div>
                <div class="box">
                    <img src="https://imageupload.io/ib/2U2ATCH5o4Xt9Rg_1697405923.jpg" alt="">
                    <div class="content">
                        <h3>tasty food</h3>
                        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, ipsum.</p>
                        <a href="#" class="btn">order now</a>
                    </div>
                </div>
                <div class="box">
                    <img src="https://imageupload.io/ib/sreCpsCzWQBkRU4_1697405944.jpg" alt="">
                    <div class="content">
                        <h3>tasty food</h3>
                        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, ipsum.</p>
                        <a href="#" class="btn">order now</a>
                    </div>
                </div>
                <div class="box">
                    <img src="https://imageupload.io/ib/fR0Lsmz30Yfr1WL_1697405936.jpg" alt="">
                    <div class="content">
                        <h3>tasty food</h3>
                        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, ipsum.</p>
                        <a href="#" class="btn">order now</a>
                    </div>
                </div>
                <div class="box">
                    <img src="https://imageupload.io/ib/96b4ZO03a9d1otL_1697405921.jpg" alt="">
                    <div class="content">
                        <h3>tasty food</h3>
                        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, ipsum.</p>
                        <a href="#" class="btn">order now</a>
                    </div>
                </div>
                <div class="box">
                    <img src="https://imageupload.io/ib/guSVZ0IgdiVkJ4G_1697406108.jpg" alt="">
                    <div class="content">
                        <h3>tasty food</h3>
                        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, ipsum.</p>
                        <a href="#" class="btn">order now</a>
                    </div>
                </div>
                <div class="box">
                    <img src="https://imageupload.io/ib/q7vcQNipBI7KZP6_1697406105.jpg" alt="">
                    <div class="content">
                        <h3>tasty food</h3>
                        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, ipsum.</p>
                        <a href="#" class="btn">order now</a>
                    </div>
                </div>
                <div class="box">
                    <img src="https://imageupload.io/ib/9jzSDpE7nUIXQ22_1697406110.jpg" alt="">
                    <div class="content">
                        <h3>tasty food</h3>
                        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, ipsum.</p>
                        <a href="#" class="btn">order now</a>
                    </div>
                </div>
                <div class="box">
                    <img src="https://imageupload.io/ib/QfwFE1RCSGpbo9P_1697405592.jpg" alt="">
                    <div class="content">
                        <h3>tasty food</h3>
                        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, ipsum.</p>
                        <a href="#" class="btn">order now</a>
                    </div>
                </div>

            </div>

        </section>

        <!-- gallery section ends -->

        <!-- review section starts  -->

        <section class="review" id="review">

            <h1 class="heading"> our customers <span>reviews</span> </h1>

            <div class="box-container">

                <div class="box">
                    <img src="https://imageupload.io/ib/926hKBCTjSlMEaz_1697405003.png" alt="">
                    <h3>john deo</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti delectus, ducimus facere quod
                        ratione vel laboriosam? Est, maxime rem. Itaque.</p>
                </div>
                <div class="box">
                    <img src="https://imageupload.io/ib/MGYjR1A1BvOxeto_1697405004.png" alt="">
                    <h3>john deo</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti delectus, ducimus facere quod
                        ratione vel laboriosam? Est, maxime rem. Itaque.</p>
                </div>
                <div class="box">
                    <img src="https://imageupload.io/ib/GuuaEOSVTqfIYdk_1697405003.png" alt="">
                    <h3>john deo</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti delectus, ducimus facere quod
                        ratione vel laboriosam? Est, maxime rem. Itaque.</p>
                </div>

            </div>

        </section>

        <!-- review section ends -->

        <!-- order section starts  -->
        <section class="order" id="order">

            <h1 class="heading"> <span>order</span> food </h1>

            <div class="row">

                <div class="image">
                    <img src="http://imageupload.io/ib/q7vcQNipBI7KZP6_1697406105.jpg" alt="">
                </div>

                <form action="">

                    <div class="inputBox">
                        <input type="text" id="customerName" placeholder="name">
                        <input type="email" id = "customerEmail" placeholder="email">
                    </div>

                    <div class="inputBox">
                        <input type="number" id="customerPhoneNo" placeholder="number">
                        <input type="text" id="customerFoodName" placeholder="food name">
                    </div>

                    <textarea placeholder="extra requirements" name="" id="customerExtraRequirement" cols="30" rows="10"></textarea>

                    <input type="submit" id="OrderBtn" value="order now" class="btn">

                </form>



            </div>



        </section>
        <section class="order" id="getQuote">

            <h1 class="heading"> <span>Get</span> quote</h1>

            <div class="row">

                <div class="image">
                    <img src="https://imageupload.io/ib/qUVtNpd083WGLwM_1697405587.jpg" alt="">
                </div>

                <form action="">

                    <div class="inputBox">
                        <input type="text" placeholder="name">
                        <input type="email" placeholder="email">
                    </div>

                    <div class="inputBox">
                        <input type="number" placeholder="number">
                        <input type="text" placeholder="food name">
                    </div>

                    <textarea
                        placeholder="I was wondering about availability and rates. I need help with the following:"
                        name="" id="" cols="30" rows="10"></textarea>

                        <input type="submit" id="" value="get quote" class="btn">

                </form>



            </div>



        </section>


        <!-- order section ends -->

        <!-- footer section  -->

        <section class="footer">

            <div class="share">
                <a href="https://www.facebook.com/profile.php?id=100011405418095" target="_blank"
                    class="btn">facebook</a>
                <a href="#" class="btn">twitter</a>
                <a href="#" class="btn">instagram</a>
                <a href="#" class="btn">pinterest</a>
                <a href="#" class="btn">linkedin</a>
            </div>
            <div id="workDay">
                <h1 class="credit"><span>Business hours : </span> </h1>

                <h2 style="color:white;">Monday : Closed</h2>
                <h2 style="color:white;">Tuesday : Closed</h2>
                <h2 style="color:white;">Wednesday : Closed</h2>
                <h2 style="color:white;">Thursday : Closed</h2>
                <h2 style="color:white;">Friday : Closed</h2>
                <h2 style="color:white;">Saturday : 3:00 PM – 12:00 AM</h2>
                <h2 style="color:white;">Sunday : 12:00 AM – 5:00 PM</h2>
            </div>


            <h1 class="credit"> created by <span> mr. soumik bose </span> | all rights reserved! </h1>

        </section>

        <!-- scroll top button  -->
        <a href="#home" class="fas fa-angle-up" id="scroll-top"></a>

        <!-- loader  -->
        <div class="loader-container">
            <img src="https://imageupload.io/ib/yNpPPlF6NNkl4Io_1697405591.gif" alt="">
        </div>


    </body>
    <script>
        let menu = document.querySelector('#menu-bar');
        let navbar = document.querySelector('.navbar');

        menu.onclick = () => {

            menu.classList.toggle('fa-times');
            navbar.classList.toggle('active');

        }

        window.onscroll = () => {

            menu.classList.remove('fa-times');
            navbar.classList.remove('active');

            if (window.scrollY > 60) {
                document.querySelector('#scroll-top').classList.add('active');
            } else {
                document.querySelector('#scroll-top').classList.remove('active');
            }

        }

        function loader() {
            document.querySelector('.loader-container').classList.add('fade-out');
        }

        function fadeOut() {
            setInterval(loader, 3000);
        }

        window.onload = fadeOut();

        // $(document).ready(function () {

        $("#OrderBtn").click(function (event) {

            event.preventDefault();

            var customerName = $("#customerName").val();
            var customerPhoneNo =  $("#customerPhoneNo").val();
            var customerEmail = $("#customerEmail").val() ;
            var customerFoodName =  $("#customerFoodName").val();
            var customerExtraRequirement =  $("#customerExtraRequirement").val();

            var order = {
                customerName: customerName,
                phoneNumber: customerPhoneNo,
                email: customerEmail,
                foodName: customerFoodName,
                extra: customerExtraRequirement
            }

            $.ajax({
                url: "/customer/order",
                type: "POST",
                data: JSON.stringify(order),  // Convert the object to a JSON string
                contentType: "application/json", // Set the content type
                success: function (jsonResp) {
                    console.log(jsonResp == "Mail sent successfully !");
                    $("#customerName").val("");
                    $("#customerPhoneNo").val("");
                    $("#customerEmail").val("") ;
                    $("#customerFoodName").val("");
                    $("#customerExtraRequirement").val("");
                },
                error: function (error) {
                    console.log(error);
                }
            });
        });




    </script>

    </html>