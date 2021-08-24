
<!DOCTYPE html>
<html>
<!-- s.t head -->
<head>
    <!-- s.t meta -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- e.d meta -->

    <!-- s.t title -->
    <title> A M G K </title>
    <!-- e.d title -->

    <!-- s.t google font -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Staatliches&display=swap" rel="stylesheet">
    <!-- e.d google font -->

    <!-- s.t bootstrap - css - media -->
    <link href="{{ asset ('assets/css/bootstrap-4.3.1.css') }}" rel="stylesheet">
    <link href="{{ asset ('assets/css/all.min.css') }}" rel="stylesheet">
    <link href="{{ asset ('assets/css/style.css') }}" rel="stylesheet">
    <link href="{{ asset ('assets/css/media.css') }}" rel="stylesheet">
    <link href="{{ asset ('assets/css/hover-min.css') }}" rel="stylesheet">
    <link href="{{ asset ('assets/css/aos.css') }}" rel="stylesheet">
    <!-- e.d bootstrap - css- media -->
</head>
<!-- e.d head -->
<!-- s.t body -->
<body>
<!-- s.t code -->

<!-- s.t code - nav -->
<section class="headeer">
    <div class="logo"> <a href="#"> A M <span> G K </span> </a> </div>
    <nav >
        <ul >
            <li> <a href="{{ route('index') }}"> {{ Session()->get('home') }} </a> </li>
            <li> <a href="#_about"> {{ Session()->get('about') }} </a> </li>
            <li> <a href="#_offers"> {{ Session()->get('offers') }} </a> </li>
            <li> <a href="#_menu"> {{ Session()->get('menu') }} </a> </li>
            <li> <a href="#_contact"> {{ Session()->get('contact') }} </a> </li>
        </ul>
    </nav>
    <div class="menu">
        <i class="fas fa-align-justify"></i>
    </div>
</section>
<!-- e.d code - nav -->

<!-- s.t code - hero -->
<section class="hero">
    <div class="container">
        <div class="row">
            <!-- s.t col - 1 -->
            <div class="col-12">
                <div class="hero-text">
                    <h4> {{ $headeer['textStyle1'] }} <span> {{ $headeer['textStyle2'] }} </span> </h4>
                    <h1> {{ $headeer['heading'] }} </h1>
                </div>
            </div>
            <!-- e.d col - 1 -->

            <!-- s.t col - 2 -->
            <div class="col-12">
                <div data-aos="zoom-in-down">
                    <div class="hero-item">
                    </div>
                </div>
            </div>
            <!-- e.d col - 2 -->
        </div>
    </div>
</section>
<!-- e.d code - hero -->

<!-- s.t code - about -->
<section id="_about" class="about">
    <div class="container">
        <div class="row">
            <!-- s.t col - 1 -->
            <div class="col-lg-6 col-md-12">
                <div data-aos="fade-right">
                    <div class="about-text">
                        <span> {{ $about['title'] }} </span>
                        <h2> {{ $about['heading'] }}	</h2>
                        <p> {{ $about['decs'] }} </p>
                        <p> {{ $about['decs2'] }} </p>
                    </div>
                </div>
            </div>
            <!-- e.d col - 1 -->

            <!-- s.t col - 2 -->
            <div class="col-lg-6 col-md-12">
                <div data-aos="fade-left">
                    <div class="about-item">
                        <img src="{{ Voyager::image($about['img']) }}" class="img-fluid" alt="...">
                    </div>
                </div>
            </div>
            <!-- e.d col - 2 -->
        </div>
    </div>
</section>
<!-- e.d code - about -->

<!-- s.t code - offers -->
<section id="_offers" class="offers">
    <div class="container">
        <h2> {{ $offers[0]['heading1'] }} </h2>
        <div class="row">
            <!-- s.t col - 1 -->
            <div class="col-lg-6 col-md-12 col-sm-12">
                <div data-aos="fade-up-right">
                    <div class="offer-today">
                        <span> {{ $offers[0]['title'] }} </span>
                        <img src="{{ Voyager::image($offers[0]['img']) }}" class="img-fluid" alt="...">
                        <h4> {{ $offers[0]['heading2'] }} </h4>
                        <a href="#"> {{ $offers[0]['option1'] }} </a>
                        <a href="#"> {{ $offers[0]['option2'] }} </a>
                        <a href="#"> {{ $offers[0]['option3'] }} </a>
                        <p> {{ $offers[0]['decs'] }} </p>
                        <h5> {{ $offers[0]['price'] }} </h5>
                    </div>
                </div>
            </div>
            <!-- e.d col - 1 -->

            <!-- s.t col - 2 -->
            <div class="col-lg-6 col-md-12">
                <div data-aos="fade-down-left">
                    <div class="row">
                        @foreach($offers as $offer)
                            @if($loop->index != 0)
                        <!-- s.t col - 1 * 2 -->
                        <div class="col-lg-6 col-md-6">
                            <div class="card">
                                <img src="{{ Voyager::image($offer['img']) }}" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title"> {{ $offer['heading2'] }} </h5>
                                    <span class="card-text"> {{ $offer['price'] }} </span>
                                    <a href="#" class="card-link"> {{ $offer['option1'] }}  </a>
                                </div>
                            </div>
                        </div>
                        @endif
                        <!-- e.d col - 1 * 2 -->
                         @endforeach
                    </div>
                </div>
            </div>
            <!-- e.d col - 2 -->
        </div>
    </div>
</section>
<!-- e.d code - offers -->

<!-- s.t code - menu -->
<section id="_menu" class="offmenu">
    <div class="container">
        <div class="row">
            <!-- s.t col - 1 -->
            @foreach($menus as $menu)
            <div class="col-lg-6 col-md-12">
                <div data-aos="flip-left">
                    <div class="offmenu-text">
                        <span> {{ $menu['title'] }} </span>
                        <h2> {{ $menu['heading'] }} </h2>
                        <h5> {{ $menu['decs'] }} </h5>
                        <a href="#"> {{ $menu['button'] }} </a>
                    </div>
                </div>
            </div>
            <!-- e.d col - 1 -->

            <!-- s.t col - 2 -->
            <div class="col-lg-6 col-md-12">
                <div data-aos="flip-right">
                    <div class="offmenu-item">
                        <img src="{{ Voyager::image($menu['img']) }}" class="img-fluid" alt="...">
                    </div>
                </div>
            </div>
            <!-- e.d col - 2 -->
        @endforeach


{{--            <!-- s.t col - 3 -->--}}
{{--            <div class="col-lg-6 col-md-12">--}}
{{--                <div data-aos="flip-left">--}}
{{--                    <div class="offmenu-text">--}}
{{--                        <span> -15% OFF </span>--}}
{{--                        <h2> New, amazing sandwich offers every day </h2>--}}
{{--                        <h5> Just add some of our juicy side dishes </h5>--}}
{{--                        <a href="#"> SEE MENU </a>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--            <!-- e.d col - 3 -->--}}

            <!-- s.t col - 4 -->
{{--            <div class="col-lg-6 col-md-12">--}}
{{--                <div data-aos="flip-right">--}}
{{--                    <div class="offmenu-item">--}}
{{--                        <img src="img/menu/menu2.png" class="img-fluid" alt="...">--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
            <!-- e.d col - 4 -->
        </div>
    </div>
</section>
<!-- e.d code - menu -->

<!-- s.t code - burger -->
<section class="burger">
    <div class="container">
        <div class="row">
            <!-- s.t col - 1 -->
            <div class="col-12">
                <div class="burger-text">
                    <h2> Trending Burgers </h2>
                </div>
            </div>
            <!-- e.d col - 1 -->

            <!-- s.t col - 2 -->
            @foreach($burgers as $burger)
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div data-aos="fade-up" data-aos-duration="3000">
                    <div class="card">
                        <img src="{{ Voyager::image($burger['imgCard']) }}" class="card-img-top">
                        <div class="card-body">
                            <h3 class="card-title"> {{ $burger['headingCard'] }} </h3>
                            <p> {{ $burger['decsCard'] }} </p>
                            <span> {{ $burger['price'] }} </span>
                            <a href="#" class="card-link" style="float: right;"> {{ $burger['add'] }} </a>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
            <!-- e.d col - 2 -->
        </div>
    </div>
</section>
<!-- e.d code - burger -->

<!-- s.t code - comment -->
<section class="test">
    <div class="container">
        <div class="row">
            <!-- s.t col - 1 -->
            <div class="col-lg-6 col-md-12">
                <div data-aos="fade-right">
                    <div class="test-text">
                        <span> {{$test['title']}} </span>
                        <h2> {{ $test['heading'] }} </h2>
                        <h5> {{ $test['price'] }} </h5>
                        <p> {{ $test['decs'] }} </p>
                        <h6> {{ $test['nameUser'] }} </h6>
                    </div>
                </div>
            </div>
            <!-- e.d col - 1 -->

            <!-- s.t col - 2 -->
            <div class="col-lg-6 col-md-12">
                <div data-aos="fade-left">
                    <div class="test-item">
                        <img src="{{ Voyager::image($test['img']) }}" class="img-fluid">
                    </div>
                </div>
            </div>
            <!-- e.d col - 2 -->
        </div>
    </div>
</section>
<!-- e.d code - comment -->

<!-- s.t insta -->
<section class="insta" data-aos="zoom-in">
    <div class="container-fluid">
        <div class="row">
            @foreach($images as $image)
            <!-- s.t . col - 1 -->
            <div class="col-sm-3 padding-none">
                <div class="insta-item">
                    <img src="{{ Voyager::image($image['img']) }}" class="img-fluid" alt="...">
                </div>
            </div>
            <!-- e.d . col - 1 -->
            @endforeach
        </div>
    </div>
</section>
<!-- e.d insta -->

<!-- s.t code - footer -->
<footer id="_contact">
    <div class="container">
        <div class="row">
            <!-- s.t col - 1 -->
            <div class="col-lg-4 col-md-6">
                <div class="footer-title">
                    <div class="logo"> <a href="#"> A M <span> G K </span> </a> </div>
                </div>
                <h6> Lorem ipsum dolor sit amet, <br> consectetur adipiscing elit, sed do </h6>
                <i class="fab fa-facebook-f"></i> <!-- ICON - FACEBOOK -->
                <i class="fab fa-twitter"></i> <!-- ICON - TWITTER -->
                <i class="fab fa-instagram"></i> <!-- ICON - INSTAGRAM -->
                <i class="fab fa-linkedin-in"></i> <!-- ICON - LINKEDIN -->
            </div>
            <!-- e.d col - 1 -->

            <!-- s.t col - 2 -->
            <div class="col-lg-4 col-md-6">
                <div class="footer-title"> <h4> Contact us </h4> </div>
                <div class="icon">
                    <i class="fas fa-map-marker-alt"> <span>  Qubaa , Suez Bridge , Helioplis </span> </i> <!-- icon - lOCATION -->
                </div>
                <div class="icon">
                    <div class="icon">
                        <i class="fas fa-phone-alt"> <span> 011 - 545 - 13 - 0 - 66 </span> </i> <!-- icon - PHONE -->
                    </div>
                    <div class="icon">
                        <i class="fas fa-envelope"> <span> Abdo - MamdOuh A M G K </span> </i> <!-- icon - EAMILL -->
                    </div>
                </div>
            </div>
            <!-- e.d col - 2 -->

            <!-- s.t col - 3 -->
            <div class="col-lg-4 col-md-12 text-center">
                <div class="footer-title">  <h4> Subscribe </h4>  </div>
                <form>
                    <input type="email" placeholder="Enter Your Email Here . . .">
                    <a href="#"> subscribe </a>
                </form>
            </div>
            <!-- e.d col - 3 -->
        </div>
    </div>
    <div class="footer-end">
        <div class="container">
            <hr style="margin-top: 50px; margin-bottom: 25px;">
            <h6> Copyright <span> ©2020 </span> All Rights Reserved | This <span> A M G K </span> is Made With  <span class="fas fa-code"></span> By <span> Abdo MamdOuh </span> </h6>
        </div>
    </div>
</footer>
<!-- e.d code - footer -->

<!-- s.t js - jq -->
<script src="{{ asset ('assets/js/jquery-3.3.1.min.js') }}"></script>
<script src="{{ asset ('assets/js/popper.min.js') }}"></script>
<script src="{{ asset ('assets/js/bootstrap-4.3.1.js') }}"></script>
<script src="{{ asset ('assets/js/aos.js') }}"></script>
<script>
    $(".menu").click(function () {
        $("nav").toggleClass("active")
    })
    $(document).ready(function() {
        $('.menu-toggle').click(function(){
            $('nav').toggleClass('active')
        });
        AOS.init( {
            duration: 1750,
        } );
    } );

</script>
<!-- e.d js - jq -->
</body>
</html>
