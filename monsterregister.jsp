<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Monster.com</title>
<meta name="keywords" content="free website templates, urban city, life, blue, CSS, HTML" />
<meta name="description" content="Urban City is a free website template from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
<script src="script/jquery.nivo.slider.js" type="text/javascript"></script>

<script type="text/javascript">
$(window).load(function() {
	$('#slider').nivoSlider({
		effect:'random',
		slices:15,
		animSpeed:500,
		pauseTime:2000,
		startSlide:0, // Set starting Slide (0 index)
		directionNav: false, // Next and Prev
		directionNavHide:false, // Only show on hover
		controlNav:false, // 1,2,3...
		controlNavThumbs:false, //Use thumbnails for Control Nav
		pauseOnHover:true, //Stop animation while hovering
		manualAdvance:false, //Force manual transitions
		captionOpacity:0.8, //Universal caption opacity
		beforeChange: function(){},
		afterChange: function(){},
		slideshowEnd: function(){} //Triggers after all slides have been shown
	});
});
</script>
<script type="text/javascript">
function loadXMLDoc()
{
var xmlhttp;
var k=document.getElementById("username").value;
var hidden=document.getElementById("hidden").value;


var urls="pass.jsp?ver="+k+"&hidden="+hidden;

 
if (window.XMLHttpRequest)
  {
  xmlhttp=new XMLHttpRequest();
  }
else
  {
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4)
    {
        //document.getElementById("err").style.color="red";
        document.getElementById("err").innerHTML=xmlhttp.responseText;
 
    }
  }
xmlhttp.open("GET",urls,true);
xmlhttp.send();
}
</script>

<script>
function Validate()
{ 
    var y = document.ureg.mobno.value;
   
   if(isNaN(y)||y.indexOf(" ")!=-1)
   {
	   
	   ureg.mobno.value="";
	   ureg.mobno.focus();
      alert("Enter numeric value");
      return false;
   }
    if (ureg.mobno.value.length!=10)
   {
        alert("enter 10 digits");
        return false;
   } 
   
   if (!y.match(/^[0-9]+$/) 
   		&& y != "") {
   	y = "";
   	ureg.mobno.focus();
       alert("Please Enter only Digits in text");
   }
}

function validEmail() {
	var mail=document.ureg.email.value;
	if(mail== ""){
        alert("Enter mailid");
        document.ureg.email.focus();
        return false;
    }
    if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail))  
    {  
    }else{
    	alert("Enter Valid mailid");
    	 document.ureg.email.focus();
       return false;
	}
}
</script>
</head>
<body>
<%
if(request.getParameter("present")!=null){
	   out.println("<script>alert('Email Already Present ...!');</script>"); 
}
%>
<div id="templatemo_wrapper">
	
    <div id="templatemo_header">
        <div id="site_title">
           <!--  <h1><a href="http://www.templatemo.com" target="_parent">CSS Templates</a></h1> -->
            <!-- &nbsp;<h1 style="color: white;">Resume Extraction</h1> -->
            <img src="images/monster.jpg" height="80px">
        </div> <!-- end of site_title -->
        
        <div id="templatemo_menu">
            <ul>
                <li><a href="selectwebsite.jsp" class="current"><span class="home"></span>Home</a></li>
   				<li><a href="#"><span class="portfolio"></span>About Us</a></li>
                <li><a href="#"><span class="projects"></span>Contact Us</a></li>
                <!-- <li><a href="#"><span class="gallery"></span>Gallery</a></li> -->
            </ul> 
        </div>
        
        <div id="search_box">
            <form action="#" method="post">
                <input type="text" value="Enter a keyword..." name="q" size="10" id="searchfield" title="searchfield" onfocus="clearText(this)" onblur="clearText(this)" />
                <input type="submit" name="Search" value="" id="searchbutton" title="Search" />
            </form>
        </div>
        <div class="cleaner"></div>
    </div>
    
     <div id="slider">
        <a href="#" target="_parent"><img src="images/slideshow/01.jpg" alt="01"  /></a>
        <a href="#" target="_parent"><img src="images/slideshow/02.jpg" alt="02"  /></a>
        <a href="#" target="_parent"><img src="images/slideshow/03.jpg" alt="03"  /></a>
        <a href="#" target="_parent"><img src="images/slideshow/04.jpg" alt="04" /></a>
        <a href="#" target="_parent"><img src="images/slideshow/05.jpg" alt="05"  /></a>
    </div> 
    
    <div id="templatemo_middle">
    
    	<div class="col_w540 float_l v_divider">
        <h1>Registration TO Monster.com</h1>
                        
       <form action="monsterregisterServlet" method="post" name="ureg" enctype="multipart/form-data" onsubmit="return validate()">
     
       <table border="10" cellspacing="5" cellpadding="5" align="center">
    	<tr>
 			<td>Please mention Name : </td>
 			<td><input type="text" name="name" id="name" required></input></td>
 			
 			<td>Enter Your Preferable located? :</td>
 			<td><input type="text" name="location" id="location" required></input></td>
 		</tr>
 		<tr>
 			<td>Specialization:</td>
 			<td><select name="specialization" id="specialization" required>
                <option value="">---Select</option> 
                <option value="java">java</option>
        		<option value=".net">.net</option>
        		<option value="c">c</option>
        		<option value="c++">c++</option>
            	</select></td>
 		
 			<td>Experience:</td>
 			<td><select name="experience" id="experience" required>
                <option value="">---Select</option> 
                <option value="fresher">fresher</option>
       			<option value="1">1</option>
        		<option value="2">2</option>
        		<option value="3">3</option>
        		<option value="4">4</option>
        		<option value="5">5</option>
        		<option value="6">6</option>
        		<option value="7">7</option>
        		<option value="8">8</option>
        		<option value="9">9</option>
        		<option value="10">10</option>
        	</select> &nbsp;(in Year)</td>
 		</tr>
 		<tr>
 			<td>Enter your Mobile No:</td>
 			<td><input type="text" name="mobno" id="mobno" maxlength="10" onblur="Validate()" required></input></td>
 		
 			<td>Enter your Email ID :</td>
 			<td><input type="email" name="email" id="email" onblur="validEmail()" required></input></td>
 		</tr>
 	
 		<tr>
 			<td>UserName: </td>
 			<td><input type="text" name="username" id="username" required onkeyup="loadXMLDoc()"></input>
 			<span id="err"> </span></td>
 			
 			<td>Password: </td>
 			<td><input type="password" name="password" id="password" required></input></td>
 		</tr> 
 			
 		<tr align="center">
 			<td></td>
 			<td><input class="input-rounded-button" type="submit" value="Register" style="height: 30px;width: 80px;"></input></td>
 			<td><input type="reset" class="input-rounded-button" value="Reset" style="height: 30px;width: 120px;" /></td>
 			<td><input type="hidden" value="monster" id="hidden"></input></td>
 		</tr>
 
     </table>
       </form>
      
           
          
            <div class="cleaner"></div>
        </div>
      <table border="0" cellpadding="10" cellspacing="10" style="width:200px border:1px solid white;" >
                    <tr>
                  
                    	<td bgcolor="blue"><span style="color: white;font-weight: bold;">Why become a member of Monster.com?</span></td>
                    	</tr>
                    	<tr><td>Naukri helps passive and active jobseekers find better jobs.</td></tr>
                    <tr>	
                    <ul>
                    	<td><li>Get connected with over 45000 recruiters. </li></td></ul></tr>
                 <tr>	
                    <ul>
                    	<td> <li>Apply to jobs in just one click.</li></td></ul></tr>
                 <tr>	
                    <ul>
                    	<td> <li>Apply to thousands of jobs posted daily.</li></td></ul></tr>
                 <tr>	
                    <ul>
                    	<td> <li>Get relevant jobs on your mobile, and online.</li></td></ul></tr>
         
               
                    	</table>
    
    </div>
    
    <div id="templatemo_content">
    
    	<div class="col_w440 float_l">
        	<!-- <h2>Photo Gallery</h2>
            <ul class="gallery">
            	<li><a href="#"><img src="images/templatemo_image_02.jpg" alt="image 2" /></a></li>
                <li><a href="#"><img src="images/templatemo_image_03.jpg" alt="image 3" /></a></li>
                <li><a href="#"><img src="images/templatemo_image_04.jpg" alt="image 4" /></a></li>
                <li><a href="#"><img src="images/templatemo_image_05.jpg" alt="image 5" /></a></li>
                <li><a href="#"><img src="images/templatemo_image_06.jpg" alt="image 6" /></a></li>
                <li><a href="#"><img src="images/templatemo_image_07.jpg" alt="image 7" /></a></li>
            </ul> -->
            <div class="cleaner"></div>
        </div>
        
        <div class="col_w440 float_r">
        	<!-- <h2>High Quality Products</h2>
            <div class="col_w200 float_l">
                <ul class="tmo_list">
                    <li><a href="#">&raquo; Morbi sed vehicula augue</a></li>
                    <li><a href="#">&raquo; Vestibulum suscipit</a></li>
                    <li><a href="#">&raquo; Risus sed fermentum</a></li>
                    <li><a href="#">&raquo; Feugiat risus ligula</a></li>
                </ul> -->
            </div>
            <div class="col_w200 float_r">
               <!--  <ul class="tmo_list">
                    <li><a href="#">&raquo; Morbi sed vehicula augue</a></li>
                    <li><a href="#">&raquo; Vestibulum suscipit</a></li>
                    <li><a href="#">&raquo; Risus sed fermentum</a></li>
                    <li><a href="#">&raquo; Feugiat risus ligula</a></li>
                </ul> -->
			</div>
            
			<div class="cleaner"></div>  

           <!--  <p><a href="#"><strong>Quisque in diam a justo condimentum molestie. Cum sociis natoque penatibus et magnis dis parturient montes.</strong></a></p>
			<p>Curabitur quis velit quis tortor tincidunt aliquet. Vivamus leo velit, convallis id, ultrices sit amet, tempor a, libero.</p>
			<p>Quisque rhoncus nulla quis sem. Mauris quis nulla sed ipsum pretium sagittis. Suspendisse feugiat. Ut sodales libero ut odio. Maecenas venenatis metus eu est. In sed risus ac felis varius bibendum. Nulla imperdiet congue metus.        </p>
 -->            
      </div>
        <div class="cleaner"></div>    
    </div>
</div>
<div id="templatemo_footer_wrapper">
     <div id="templatemo_footer">
    
        Copyright © 2048 <a href="#">Your Company Name</a> | 
        <a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a>
    
    </div> <!-- end of templatemo_footer -->
</div>
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div>
</body>
</html>