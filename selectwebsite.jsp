<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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

</head>
<body>

<%
	if(request.getParameter("success")!=null){
		   out.println("<script>alert('Login Successfully ...');</script>"); 
	}
%>
<div id="templatemo_wrapper">
	
    <div id="templatemo_header">
        <div id="site_title">
           <!--  <h1><a href="http://www.templatemo.com" target="_parent">CSS Templates</a></h1> -->
            &nbsp;<h1 style="color: white;">Resume Extraction</h1>
        </div> <!-- end of site_title -->
        
        <div id="templatemo_menu">
            <ul>
                <li><a href="selectwebsite.jsp" class="current"><span class="home"></span>Home</a></li>
             <li><a href="#"><span class="portfolio"></span>About Us</a></li>
                <li><a href="#"><span class="projects"></span>Contact Us</a></li>
                <!-- <li><a href="#"><span class="gallery"></span>Gallery</a></li> -->
                <li><a href="Logout"><span class="gallery"></span>Logout</a></li>
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
        	<h1>Welcome <%=session.getAttribute("username") %></h1>
                        <div class="cleaner h30"></div>
           <center>
           <h1>Upload Resume on Following</h1>
            <h2><a href="naukri.jsp">Naukri.com</a></h2>
            <h2><a href="monster.jsp">Monster.com</a></h2>
            <h2><a href="shine.jsp">Shine.com</a></h2>
	 </center>
	 
	
	 
	  <%--  <form action="sendresumeServlet" name="adupload" method="post" onsubmit="return validation()" enctype="multipart/form-data"> 
	        <table >
				
				<tr>
                            	<td colspan="3"><h2 style="color: white;">Choose File To Upload</h2></td>
                            </tr>
                            <tr>
                            	<td colspan="3">&nbsp;</td>
                            </tr>
                            <tr>
                            	<td>Select File :</td><!-- <td>:</td> --><td>
                            	<input type="hidden" name="user" value="<%=session.getAttribute("username")%>" />
                            	<input type="file" value="" name="path" size="30" maxlength="2048" required/></td>

                            </tr>
                           
                            
                            <tr>
                            	<td colspan="3"><br/><input name="submit" class="form-login" type="submit" title="UPLOAD" value="UPLOAD" size="30" maxlength="2048" /></td>
                            	

                            </tr>
                            
                            
                            
                            
			</table>
			</form>
            --%>
           
            <div class="cleaner"></div>
        </div>
        <div class="col_w340 float_r twitter_col">
        	<div class="twitter_box">
                <div class="tb_entry">
                    <a href="#">@Vivamus a massa</a> Donec iaculis felis id neque. Morbi nunc. Praesent varius egestas velit.
                </div>
                <div class="tb_entry">
                    <a href="#">@Steven</a> Donec a massa ut pede pulvinar vulputate Nulla et augue. Sed eu nunc quis pede tristique suscipit.
                </div>
                <div class="tb_entry">
                    <a href="#">@Designer</a> Nam sit amet justo vel libero tincidunt dignissim Cras magna velit, pellentesque mattis, faucibus vitae, feugiat vitae, sapien.
                </div>
                <div class="tb_entry">
                    <a href="#">@Developer</a> Fusce ac orci sit Amet velit ultrices condimentum. Integer imperdiet odio ac eros.
                </div>
                <div class="cleaner"></div>
			</div>
            <div class="cleaner"></div>
        </div>
    
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