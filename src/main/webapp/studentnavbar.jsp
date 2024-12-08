<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@font-face { 
  font-family:'sohne';
  font-weight:300;
  font-style:italic;
  src:url('https://glyph.medium.com/font/51a79f1/0-3j_4g_53_6bu_6c4_6c8_6c9_6cc_6cd_6ci_6cm/sohne-300-italic.woff') format('woff');
  unicode-range:U+0-7F,U+A0,U+B7,U+200A,U+2014,U+2018,U+2019,U+201C,U+201D,U+2022,U+2026;
} 
@font-face { 
  font-family:'sohne';
  font-weight:300;
  font-style:italic;
  src:url('https://glyph.medium.com/font/51a79f1/3k-4f_4h-52_54-6bt_6bv-6c3_6c5-6c7_6ca-6cb_6ce-6ch_6cj-6cl_6cn-nvnj/sohne-300-italic.woff') format('woff');
  unicode-range:U+80-9F,U+A1-B6,U+B8-2009,U+200B-2013,U+2015-2017,U+201A-201B,U+201E-2021,U+2023-2025,U+2027-10FFFF;
} 
@font-face { 
  font-family:'sohne';
  font-weight:300;
  font-style:normal;
  src:url('https://glyph.medium.com/font/6fd11d6/0-3j_4g_53_6bu_6c4_6c8_6c9_6cc_6cd_6ci_6cm/sohne-300-normal.woff') format('woff');
  unicode-range:U+0-7F,U+A0,U+B7,U+200A,U+2014,U+2018,U+2019,U+201C,U+201D,U+2022,U+2026;
} 
@font-face { 
  font-family:'sohne';
  font-weight:300;
  font-style:normal;
  src:url('https://glyph.medium.com/font/6fd11d6/3k-4f_4h-52_54-6bt_6bv-6c3_6c5-6c7_6ca-6cb_6ce-6ch_6cj-6cl_6cn-nvnj/sohne-300-normal.woff') format('woff');
  unicode-range:U+80-9F,U+A1-B6,U+B8-2009,U+200B-2013,U+2015-2017,U+201A-201B,U+201E-2021,U+2023-2025,U+2027-10FFFF;
} 
@font-face { 
  font-family:'sohne';
  font-weight:400;
  font-style:italic;
  src:url('https://glyph.medium.com/font/3887986/0-3j_4g_53_6bu_6c4_6c8_6c9_6cc_6cd_6ci_6cm/sohne-400-italic.woff') format('woff');
  unicode-range:U+0-7F,U+A0,U+B7,U+200A,U+2014,U+2018,U+2019,U+201C,U+201D,U+2022,U+2026;
} 
@font-face { 
  font-family:'sohne';
  font-weight:400;
  font-style:italic;
  src:url('https://glyph.medium.com/font/3887986/3k-4f_4h-52_54-6bt_6bv-6c3_6c5-6c7_6ca-6cb_6ce-6ch_6cj-6cl_6cn-nvnj/sohne-400-italic.woff') format('woff');
  unicode-range:U+80-9F,U+A1-B6,U+B8-2009,U+200B-2013,U+2015-2017,U+201A-201B,U+201E-2021,U+2023-2025,U+2027-10FFFF;
} 
@font-face { 
  font-family:'sohne';
  font-weight:400;
  font-style:normal;
  src:url('https://glyph.medium.com/font/b492c44/0-3j_4g_53_6bu_6c4_6c8_6c9_6cc_6cd_6ci_6cm/sohne-400-normal.woff') format('woff');
  unicode-range:U+0-7F,U+A0,U+B7,U+200A,U+2014,U+2018,U+2019,U+201C,U+201D,U+2022,U+2026;
} 
@font-face { 
  font-family:'sohne';
  font-weight:400;
  font-style:normal;
  src:url('https://glyph.medium.com/font/b492c44/3k-4f_4h-52_54-6bt_6bv-6c3_6c5-6c7_6ca-6cb_6ce-6ch_6cj-6cl_6cn-nvnj/sohne-400-normal.woff') format('woff');
  unicode-range:U+80-9F,U+A1-B6,U+B8-2009,U+200B-2013,U+2015-2017,U+201A-201B,U+201E-2021,U+2023-2025,U+2027-10FFFF;
} 
@font-face { 
  font-family:'sohne';
  font-weight:500;
  font-style:italic;
  src:url('https://glyph.medium.com/font/54b52d6/0-3j_4g_53_6bu_6c4_6c8_6c9_6cc_6cd_6ci_6cm/sohne-500-italic.woff') format('woff');
  unicode-range:U+0-7F,U+A0,U+B7,U+200A,U+2014,U+2018,U+2019,U+201C,U+201D,U+2022,U+2026;
} 
@font-face { 
  font-family:'sohne';
  font-weight:500;
  font-style:italic;
  src:url('https://glyph.medium.com/font/54b52d6/3k-4f_4h-52_54-6bt_6bv-6c3_6c5-6c7_6ca-6cb_6ce-6ch_6cj-6cl_6cn-nvnj/sohne-500-italic.woff') format('woff');
  unicode-range:U+80-9F,U+A1-B6,U+B8-2009,U+200B-2013,U+2015-2017,U+201A-201B,U+201E-2021,U+2023-2025,U+2027-10FFFF;
} 
@font-face { 
  font-family:'sohne';
  font-weight:500;
  font-style:normal;
  src:url('https://glyph.medium.com/font/df9ba7f/0-3j_4g_53_6bu_6c4_6c8_6c9_6cc_6cd_6ci_6cm/sohne-500-normal.woff') format('woff');
  unicode-range:U+0-7F,U+A0,U+B7,U+200A,U+2014,U+2018,U+2019,U+201C,U+201D,U+2022,U+2026;
} 
@font-face { 
  font-family:'sohne';
  font-weight:500;
  font-style:normal;
  src:url('https://glyph.medium.com/font/df9ba7f/3k-4f_4h-52_54-6bt_6bv-6c3_6c5-6c7_6ca-6cb_6ce-6ch_6cj-6cl_6cn-nvnj/sohne-500-normal.woff') format('woff');
  unicode-range:U+80-9F,U+A1-B6,U+B8-2009,U+200B-2013,U+2015-2017,U+201A-201B,U+201E-2021,U+2023-2025,U+2027-10FFFF;
} 
@font-face { 
  font-family:'sohne';
  font-weight:700;
  font-style:italic;
  src:url('https://glyph.medium.com/font/9da4d76/0-3j_4g_53_6bu_6c4_6c8_6c9_6cc_6cd_6ci_6cm/sohne-700-italic.woff') format('woff');
  unicode-range:U+0-7F,U+A0,U+B7,U+200A,U+2014,U+2018,U+2019,U+201C,U+201D,U+2022,U+2026;
} 
@font-face { 
  font-family:'sohne';
  font-weight:700;
  font-style:italic;
  src:url('https://glyph.medium.com/font/9da4d76/3k-4f_4h-52_54-6bt_6bv-6c3_6c5-6c7_6ca-6cb_6ce-6ch_6cj-6cl_6cn-nvnj/sohne-700-italic.woff') format('woff');
  unicode-range:U+80-9F,U+A1-B6,U+B8-2009,U+200B-2013,U+2015-2017,U+201A-201B,U+201E-2021,U+2023-2025,U+2027-10FFFF;
} 
@font-face { 
  font-family:'sohne';
  font-weight:700;
  font-style:normal;
  src:url('https://glyph.medium.com/font/cf896f3/0-3j_4g_53_6bu_6c4_6c8_6c9_6cc_6cd_6ci_6cm/sohne-700-normal.woff') format('woff');
  unicode-range:U+0-7F,U+A0,U+B7,U+200A,U+2014,U+2018,U+2019,U+201C,U+201D,U+2022,U+2026;
} 
@font-face { 
  font-family:'sohne';
  font-weight:700;
  font-style:normal;
  src:url('https://glyph.medium.com/font/cf896f3/3k-4f_4h-52_54-6bt_6bv-6c3_6c5-6c7_6ca-6cb_6ce-6ch_6cj-6cl_6cn-nvnj/sohne-700-normal.woff') format('woff');
  unicode-range:U+80-9F,U+A1-B6,U+B8-2009,U+200B-2013,U+2015-2017,U+201A-201B,U+201E-2021,U+2023-2025,U+2027-10FFFF;
} 
  body {  
   
    font-family:medium-content-sans-serif-font, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
    font-weight:400;
    color:rgba(0,0,0,0.8);
    margin:0;
    padding: 100px;
  }  
* { 
    box-sizing: inherit;
} 

.al { 
    width: 100%;
} 

.ah { 
    display: block;
} 

.b { 
    font-weight: 400;
} 

body { 
    margin: 0; 
    padding: 0; 
    text-rendering: optimizeLegibility; 
    -webkit-font-smoothing: antialiased; 
    color: rgba(0,0,0,0.8); 
    position: relative; 
    min-height: 100vh;
} 

html { 
    box-sizing: border-box; 
    -webkit-text-size-adjust: 100%;
} 

.n { 
    display: flex;
} 

.p { 
    justify-content: center;
} 

*,:before,:after { 
    box-sizing: inherit;
} 

.ay { 
    max-width: 1192px;
} 

.az { 
    min-width: 0;
} 

.ax { 
    margin: 0 64px;
} 

.ba { 
    padding: 25px 0;
} 

.bb { 
    height: 75px;
} 

.bc { 
    flex-direction: row;
} 

.bt { 
    flex: 1 0 auto;
} 

.o { 
    align-items: center;
} 

a { 
    color: inherit; 
    text-decoration: none;
} 

a { 
    -webkit-tap-highlight-color: transparent;
} 

.bd { 
    color: inherit;
} 

.be { 
    fill: inherit;
} 

.bf { 
    font-size: inherit;
} 

.bg { 
    border: inherit;
} 

.bh { 
    font-family: inherit;
} 

.bi { 
    letter-spacing: inherit;
} 

.bj { 
    font-weight: inherit;
} 

.bk { 
    padding: 0;
} 

.bl { 
    margin: 0;
} 

.bm { 
    cursor: pointer;
} 

.bq:hover:not(:disabled) { 
    color: rgba(25, 25, 25, 1);
} 

.br:hover:not(:disabled) { 
    fill: rgba(25, 25, 25, 1);
} 

.bw { 
    display: inline-block;
} 

svg { 
    vertical-align: middle;
} 

.q { 
    height: 25px;
} 

.bs { 
    fill: rgba(0, 0, 0, 1);
} 

.bx { 
    margin-right: 25px;
} 

p { 
    margin: 0;
} 

.by { 
    font-family: sohne, "Helvetica Neue", Helvetica, Arial, sans-serif;
} 

.bz { 
    font-size: 14px;
} 

.ca { 
    line-height: 20px;
} 

.cb { 
    color: #242424;
} 

button { 
    -webkit-tap-highlight-color: transparent;
} 

button { 
    background: transparent; 
    overflow: visible;
} 

button { 
    margin: 0;
} 

.cd { 
    color: rgba(255, 255, 255, 1);
} 

.ce { 
    padding: 8px 16px;
} 

.cf { 
    fill: rgba(255, 255, 255, 1);
} 

.cg { 
    background: rgba(25, 25, 25, 1);
} 

.ch { 
    border-color: rgba(25, 25, 25, 1);
} 

.cp { 
    border-radius: 99em;
} 

.cq { 
    border-width: 1px;
} 

.cr { 
    border-style: solid;
} 

.cs { 
    box-sizing: border-box;
} 

.ct { 
    display: inline-block;
} 

.cu { 
    text-decoration: none;
} 

.cv { 
    text-align: center;
} 

.as button  { 
    transition: background-color 300ms linear, color 300ms linear;
} 

.ci:hover { 
    background: #000000;
} 

.cj:hover { 
    border-color: #242424;
} 

.ck:hover { 
    cursor: pointer;
} 
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");

</style>
</head>

<body style="  background-image: url('/coursebg.jpg')" >
<div class="n p snipcss-xLKpv">
  <div class="at au av aw ax ay az al">
    <div class="ba bb n bc">
     <div style="float: left; padding: 15px; color: black; font-size: 20px; font-weight: 10px;"><b>LMS</b></div>
     
      <div class="ah bt">
      </div>
      <div class="n o bc">
        <span class="ah h g bu bv bw">
          <div class="bx ah">
            <p class="by b bz ca cb">
              <a class="bd be bf bg bh bi bj bk bl bm bn bo bp bq br" href="explore.jsp" rel="noopener follow">
                Explorel
              </a>
            </p>
          </div>
        </span>
        
        <span class="ah h g bu bv bw">
          <div class="bx ah">
            <p class="by b bz ca cb">
              <a class="bd be bf bg bh bi bj bk bl bm bn bo bp bq br" href="/" rel="noopener follow">
                BacktoHome
              </a>
            </p>
          </div>
        </span>
        
        <div class="as">
          <span>
            <a class="bd be bf bg bh bi bj bk bl bm bn bo bp bq br" rel="noopener follow" href="addcustomer">
              <button class="by b bz ca cd ce cf cg ch ci cj ck cl cm cn co cp cq cr cs ct cu cv">
                Sign in
              </button>
            </a>
          </span>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>