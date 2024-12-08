<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <html>
    <head>
    <style >
   
  body {  
    font-family:sans-serif;
    font-size:10px;
    line-height:1.42857143;
    color:#42424c;
  }  
* { 
    box-sizing: border-box;
} 

body { 
    margin: 0;
} 

body { 
    font-family: "Source Sans Pro",Calibri,Candara,Arial,sans-serif; 
    font-size: 15px; 
    line-height: 1.42857143; 
    color: #333333; 
    background-color: #ffffff;
} 

body { 
    -webkit-font-smoothing: antialiased;
} 

body { 
    color: #42424c; 
    font-size: 16px; 
    font-family: Arial,Helvetica,sans-serif;
} 

html { 
    font-family: sans-serif; 
    -ms-text-size-adjust: 100%; 
    -webkit-text-size-adjust: 100%;
} 

html { 
    font-size: 10px; 
    -webkit-tap-highlight-color: rgba(0,0,0,0);
} 

nav { 
    display: block;
} 

.navbar { 
    position: relative; 
    min-height: 50px; 
    margin-bottom: 21px; 
    border: 1px solid transparent;
} 

@media (min-width: 768px){ 
  .navbar { 
    border-radius: 0;
  } 
}     

.navbar-fixed-top { 
    position: fixed; 
    right: 0; 
    left: 0; 
    z-index: 1030;
} 

@media (min-width: 768px){ 
  .navbar-fixed-top { 
    border-radius: 0;
  } 
}     

.navbar-fixed-top { 
    top: 0; 
    border-width: 0 0 1px;
} 

.navbar-default { 
    background-color: #222222; 
    border-color: #121212;
} 

.navbar { 
    font-family: Poppins,sans-serif; 
    border: none; 
    box-shadow: 0 3px 6px rgba(0,0,0,.15); 
    background: linear-gradient(135deg,#111c23,#0a131d);
} 

.navbar  { 
    transition: opacity .5s;
} 

.navbar:not(.below-fold)  { 
    box-shadow: none;
} 

:before,:after { 
    box-sizing: border-box;
} 

.clearfix:before,.clearfix:after, .dl-horizontal dd::before, .dl-horizontal dd::after,.container:before,.container:after,.container-fluid:before,.container-fluid:after,.row:before,.row:after, .form-horizontal .form-group::before, .form-horizontal .form-group::after,.btn-toolbar:before,.btn-toolbar:after, .btn-group-vertical > .btn-group::before, .btn-group-vertical > .btn-group::after,.nav:before,.nav:after,.navbar:before,.navbar:after,.navbar-header:before,.navbar-header:after,.navbar-collapse:before,.navbar-collapse:after,.pager:before,.pager:after,.panel-body:before,.panel-body:after,.modal-header:before,.modal-header:after,.modal-footer:before,.modal-footer:after { 
    display: table; 
    content: " ";
} 

.clearfix::before, .clearfix::after, .dl-horizontal dd::before, .dl-horizontal dd::after, .container::before, .container::after, .container-fluid::before, .container-fluid::after, .row::before, .row::after, .form-horizontal .form-group::before, .form-horizontal .form-group::after, .btn-toolbar::before, .btn-toolbar::after, .btn-group-vertical > .btn-group::before, .btn-group-vertical > .btn-group::after, .nav::before, .nav::after, .navbar::before, .navbar::after, .navbar-header::before, .navbar-header::after, .navbar-collapse::before, .navbar-collapse::after, .pager::before, .pager::after, .panel-body::before, .panel-body::after, .modal-header::before, .modal-header::after, .modal-footer::before, .modal-footer::after { 
    display: table; 
    content: " ";
} 

.clearfix:after, .dl-horizontal dd::after,.container:after,.container-fluid:after,.row:after, .form-horizontal .form-group::after,.btn-toolbar:after, .btn-group-vertical > .btn-group::after,.nav:after,.navbar:after,.navbar-header:after,.navbar-collapse:after,.pager:after,.panel-body:after,.modal-header:after,.modal-footer:after { 
    clear: both;
} 

.container { 
    padding-right: 15px; 
    padding-left: 15px; 
    margin-right: auto; 
    margin-left: auto;
} 

@media (min-width: 768px){ 
  .container { 
    width: 750px;
  } 
}     

@media (min-width: 992px){ 
  .container { 
    width: 970px;
  } 
}     

@media (min-width: 1200px){ 
  .container { 
    width: 1170px;
  } 
}     

.clearfix::after, .dl-horizontal dd::after, .container::after, .container-fluid::after, .row::after, .form-horizontal .form-group::after, .btn-toolbar::after, .btn-group-vertical > .btn-group::after, .nav::after, .navbar::after, .navbar-header::after, .navbar-collapse::after, .pager::after, .panel-body::after, .modal-header::after, .modal-footer::after { 
    clear: both;
} 

@media (min-width: 768px){ 
  .navbar-header { 
    float: left;
  } 
}     

.container > .navbar-header  { 
    margin-right: -15px; 
    margin-left: -15px;
} 

@media (min-width: 768px){ 
  .container > .navbar-header  { 
    margin-right: 0; 
    margin-left: 0;
  } 
}     

.navbar .container > .navbar-header { 
    height: 70px;
} 

.navbar .container > .navbar-header  { 
    height: 70px;
} 

.collapse { 
    display: none;
} 

.navbar-collapse { 
    padding-right: 15px; 
    padding-left: 15px; 
    overflow-x: visible; 
    border-top: 1px solid transparent; 
    box-shadow: inset 0 1px 0 rgba(255,255,255,0.1); 
    -webkit-overflow-scrolling: touch;
} 

@media (min-width: 768px){ 
  .navbar-collapse { 
    width: auto; 
    border-top: 0; 
    box-shadow: none;
  } 

  .navbar-collapse.collapse { 
    display: block !important; 
    height: auto !important; 
    padding-bottom: 0; 
    overflow: visible !important;
  } 

  .navbar-fixed-top .navbar-collapse  { 
    padding-right: 0; 
    padding-left: 0;
  } 
}     

.navbar-fixed-top .navbar-collapse  { 
    max-height: 340px;
} 

.container > .navbar-collapse  { 
    margin-right: -15px; 
    margin-left: -15px;
} 

@media (min-width: 768px){ 
  .container > .navbar-collapse  { 
    margin-right: 0; 
    margin-left: 0;
  } 
}     

.navbar-default .navbar-collapse  { 
    border-color: #121212;
} 

a { 
    background-color: transparent;
} 

a { 
    color: #2780e3; 
    text-decoration: none;
} 

a { 
    color: #166bcb;
} 

.navbar-brand { 
    float: left; 
    height: 50px; 
    padding: 14.5px 15px; 
    font-size: 19px; 
    line-height: 21px;
} 

a:focus { 
    color: #165ba8; 
    text-decoration: underline;
} 

a:focus { 
    outline: 5px auto -webkit-focus-ring-color; 
    outline-offset: -2px;
} 

.navbar-brand:focus { 
    text-decoration: none;
} 

.navbar-default .navbar-brand  { 
    color: #ffffff;
} 

.navbar-default .navbar-link  { 
    color: #ffffff;
} 

@media (min-width: 768px){ 
  .navbar > .container .navbar-brand { 
    margin-left: -15px;
  } 
}     

.navbar-default .navbar-brand:focus  { 
    color: #ffffff; 
    background-color: none;
} 

a:active,a:hover { 
    outline: 0;
} 

a:hover,a:focus { 
    color: #165ba8; 
    text-decoration: underline;
} 

.navbar-brand:hover,.navbar-brand:focus { 
    text-decoration: none;
} 

.navbar-default .navbar-brand:hover,.navbar-default .navbar-brand:focus  { 
    color: #ffffff; 
    background-color: none;
} 

.navbar-default .navbar-link:hover { 
    color: #ffffff;
} 

button { 
    color: inherit; 
    font: inherit; 
    margin: 0;
} 

button { 
    overflow: visible;
} 

button { 
    text-transform: none;
} 

button { 
    -webkit-appearance: button; 
    cursor: pointer;
} 

button { 
    font-family: inherit; 
    font-size: inherit; 
    line-height: inherit;
} 

.navbar-toggle { 
    position: relative; 
    float: right; 
    padding: 9px 10px; 
    margin-right: 15px; 
    margin-top: 8px; 
    margin-bottom: 8px; 
    background-color: transparent; 
    background-image: none; 
    border: 1px solid transparent; 
    border-radius: 0;
} 

@media (min-width: 768px){ 
  .navbar-toggle { 
    display: none;
  } 
}     

.navbar-default .navbar-toggle  { 
    border-color: transparent;
} 

.navbar .navbar-toggle  { 
    margin-top: 17px;
} 

.navbar-toggle  { 
    margin-top: 17px;
} 

.navbar-default .navbar-toggle:hover { 
    background-color: #090909;
} 

[role="button"] { 
    cursor: pointer;
} 

.btn { 
    display: inline-block; 
    margin-bottom: 0; 
    font-weight: normal; 
    text-align: center; 
    white-space: nowrap; 
    vertical-align: middle; 
    -ms-touch-action: manipulation; 
    touch-action: manipulation; 
    cursor: pointer; 
    background-image: none; 
    border: 1px solid transparent; 
    padding: 10px 18px; 
    font-size: 15px; 
    line-height: 1.42857143; 
    border-radius: 0; 
    -webkit-user-select: none; 
    -moz-user-select: none; 
    -ms-user-select: none; 
    user-select: none;
} 

.btn-primary { 
    color: #ffffff; 
    background-color: #2780e3; 
    border-color: #2780e3;
} 

.navbar-btn { 
    margin-top: 3.5px; 
    margin-bottom: 3.5px;
} 

@media (min-width: 768px){ 
  .navbar-right { 
    float: right !important; 
    margin-right: -15px;
  } 
}     

.btn { 
    border-radius: 2em; 
    font-weight: 700; 
    outline: none!important; 
    transition: .2s;
} 

.navbar .btn  { 
    margin-top: 12px; 
    font-weight: 700; 
    padding-left: 1.8em; 
    padding-right: 1.8em;
} 

.navbar .btn  { 
    border-radius: 25px;
} 

.btn  { 
    margin-top: 12px;
} 

a:hover { 
    color: #165ba8; 
    text-decoration: underline;
} 

.btn:hover { 
    color: #ffffff; 
    text-decoration: none;
} 

.btn-primary:hover { 
    color: #ffffff; 
    background-color: #1967be; 
    border-color: #1862b5;
} 

.btn-primary:active:hover { 
    color: #ffffff; 
    background-color: #15569f; 
    border-color: #10427b;
} 

ul { 
    margin-top: 0; 
    margin-bottom: 10.5px;
} 

.nav { 
    padding-left: 0; 
    margin-bottom: 0; 
    list-style: none;
} 

.navbar-nav { 
    margin: 7.25px -15px;
} 

@media (min-width: 768px){ 
  .navbar-nav { 
    float: left; 
    margin: 0;
  } 

  .navbar-right ~ .navbar-right  { 
    margin-right: 0;
  } 
}     

.navbar .navbar-nav  { 
    margin-top: 9px; 
    margin-right: 12px;
} 

.navbar-nav  { 
    margin-top: 9px; 
    margin-right: 12px;
} 

@media (min-width: 768px){ 
  .navbar > .container .navbar-brand, .navbar > .container-fluid .navbar-brand { 
    margin-left: -15px;
  } 
}     

.navbar-default .navbar-brand:hover, .navbar-default .navbar-brand:focus { 
    color: #ffffff; 
    background-color: none;
} 

img { 
    border: 0;
} 

img { 
    vertical-align: middle;
} 

.navbar-brand > img  { 
    display: block;
} 

.navbar-brand img  { 
    margin-right: 13px; 
    display: inline-block;
} 

.sr-only { 
    position: absolute; 
    width: 1px; 
    height: 1px; 
    padding: 0; 
    margin: -1px; 
    overflow: hidden; 
    clip: rect(0, 0, 0, 0); 
    border: 0;
} 

.navbar-toggle .icon-bar  { 
    display: block; 
    width: 22px; 
    height: 2px; 
    border-radius: 1px;
} 

.navbar-default .navbar-toggle .icon-bar  { 
    background-color: #ffffff;
} 

.navbar-toggle .icon-bar + .icon-bar  { 
    margin-top: 4px;
} 

.nav > li  { 
    position: relative; 
    display: block;
} 

@media (min-width: 768px){ 
  .navbar-nav > li  { 
    float: left;
  } 
}     

.dropdown { 
    position: relative;
} 

.nav > li > a  { 
    position: relative; 
    display: block; 
    padding: 10px 15px;
} 

.navbar-nav > li > a  { 
    padding-top: 10px; 
    padding-bottom: 10px; 
    line-height: 21px;
} 

@media (min-width: 768px){ 
  .navbar-nav > li > a  { 
    padding-top: 14.5px; 
    padding-bottom: 14.5px;
  } 
}     

.navbar-default .navbar-nav > li > a { 
    color: #ffffff;
} 

.navbar-default .navbar-nav > li > a { 
    border-radius: 25px;
} 

.navbar.navbar-default .navbar-nav > li > a { 
    background-color: transparent;
} 

.nav > li > a:hover { 
    text-decoration: none; 
    background-color: #e6e6e6;
} 

.navbar-default .navbar-nav > li > a:hover { 
    color: #ffffff; 
    background-color: #090909;
} 

.nav > li > a:hover, .nav > li > a:focus { 
    text-decoration: none; 
    background-color: #e6e6e6;
} 

.navbar-default .navbar-nav > li > a:hover, .navbar-default .navbar-nav > li > a:focus { 
    color: #ffffff; 
    background-color: #090909;
} 

ul ul  { 
    margin-bottom: 0;
} 

.dropdown-menu { 
    position: absolute; 
    top: 100%; 
    left: 0; 
    z-index: 1000; 
    display: none; 
    float: left; 
    min-width: 160px; 
    padding: 5px 0; 
    margin: 2px 0 0; 
    font-size: 15px; 
    text-align: left; 
    list-style: none; 
    background-color: #ffffff; 
    background-clip: padding-box; 
    border: 1px solid rgba(0,0,0,0.15); 
    border-radius: 0; 
    box-shadow: 0 6px 12px rgba(0,0,0,0.175);
} 

@media (min-width: 768px){ 
  .navbar-right .dropdown-menu  { 
    right: 0; 
    left: auto;
  } 
}     

.navbar .dropdown-menu  { 
    border-radius: 2px!important;
} 

.navbar-nav > li > .dropdown-menu  { 
    margin-top: 0; 
    border-top-left-radius: 0; 
    border-top-right-radius: 0;
} 

.caret { 
    display: inline-block; 
    width: 0; 
    height: 0; 
    margin-left: 2px; 
    vertical-align: middle; 
    border-top: 4px solid \9; 
    border-right: 4px solid transparent; 
    border-left: 4px solid transparent;
} 

.dropdown-menu > li > a  { 
    display: block; 
    padding: 3px 20px; 
    clear: both; 
    font-weight: 400; 
    line-height: 1.42857143; 
    color: #333333; 
    white-space: nowrap;
} 

.navbar .dropdown-menu li a  { 
    padding: 8px;
} 

@media (min-width: 768px){ 
  .navbar .dropdown-menu li a  { 
    text-align: center;
  } 
}     

.dropdown-menu > li > a:hover { 
    color: #ffffff; 
    text-decoration: none; 
    background-color: #2780e3;
} 

.dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus { 
    background-image: none;
} 

.dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus { 
    color: #ffffff; 
    text-decoration: none; 
    background-color: #2780e3;
} 


    
    </style>
    </head>
    </html>
    <body>
<nav class="navbar navbar-default navbar-fixed-top snipcss-EtnqB" style="">
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand navbar-link smooth-scroll notranslate" href="#">
        <img src="https://i.pinimg.com/474x/6c/3f/47/6c3f47c02ed5de5b7ede09f06a6d8396.jpg" width="40" height="40" alt="Logo">
       LMS
      </a>
      <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1">
        <span class="sr-only">
          Toggle navigation
        </span>
        <span class="icon-bar">
        </span>
        <span class="icon-bar">
        </span>
        <span class="icon-bar">
        </span>
      </button>
    </div>
    <div class="collapse navbar-collapse snipcss0-0-0-1" id="navcol-1">
      
      <ul class="nav navbar-nav navbar-right snipcss0-1-1-3">
        <li role="presentation" class="snipcss0-2-3-4">
          <a href="feature.jsp" class="smooth-scroll snipcss0-3-4-5">
            Features
          </a>
        </li>
      <li class="snipcss0-2-3-6">
  <a href="studentcourse.jsp" class="snipcss0-3-6-7">
    Material
  </a>
</li>

        <li role="presentation" class="snipcss0-2-3-16">
          <a href="studentlogin" class="snipcss0-3-16-17">
            Logout
          </a>
        </li>
        
      </ul>
    </div>
  </div>
</nav>
    </body>