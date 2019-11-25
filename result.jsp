<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Exam Section</title>
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
if(request.getParameter("fail")!=null)
{
	out.println("<script>alert('Failed.... Please Generate Report Again')</script>");
}
%>
<div id="templatemo_wrapper">
	
    <div id="templatemo_header">
        <div id="site_title">
           <!--  <h1><a href="http://www.templatemo.com" target="_parent">CSS Template</a></h1> -->
           &nbsp;<h1 style="color: white;">Resume Extraction</h1>
        </div> <!-- end of site_title -->
        
        <div id="templatemo_menu">
            <ul>
                <li><a href="#" class="current"><span class="home"></span>Home</a></li>
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
        	<h1>Welcome to Resume Extraction</h1>
                        <div class="cleaner h30"></div>
           
             <table align="center">
	

						<h2>Student Information</h2>
				
						<h3><%=request.getParameter("fullname") %></h3><br />
						<table border="30" cellpadding="5" cellspacing="8">
						<tr>
						<th>Sr.No</th>
						<th>Marks</th>
						<th>Out Of</th>
						</tr>
						
						<%
						int srno=1;
						Connection con = DbConnection.getConnection();
						String id = request.getParameter("id");
						String email = request.getParameter("email");
						PreparedStatement ps = con.prepareStatement("select * from result where stdid=?");
						ps.setString(1, id);
						ResultSet rs = ps.executeQuery();
						while(rs.next())
						{
							
							%>
							<tr align="center">
							<td>Test <%=srno++ %></td>
							<td><%=rs.getString("marks") %></td>
							<td>10</td>
			
						<%
							}
						%>
						</tr>
					</table>		
				<br />	
			<strong>If All Tests are Completed Then Generate the Final Result</strong>
			<br /><a class="button" href="result?id=<%= id %>&email=<%=email%>&fullname=<%=request.getParameter("fullname")%>">Generate Result</a> 
			<br /><br />
			<a class="button" href="PerformanceGraph.jsp?id=<%= id %><%-- &email=<%=email%>&fullname=<%=request.getParameter("fullname")%> --%>">Generate Performance Graph</a>
			</div>
		
		<div class="cleaner"></div>
       
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
        	
            <div class="cleaner"></div>
        </div>
        
        <div class="col_w440 float_r">
        	
            </div>
            <div class="col_w200 float_r">
               
			</div>
            
			<div class="cleaner"></div>  

                
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