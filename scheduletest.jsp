<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.Connection"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
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
if(request.getParameter("done")!=null)
{
	out.println("<script>alert('Test Scheduled Successfully')</script>");
}
if(request.getParameter("present")!=null)
{
	out.println("<script>alert('Test Already Scheduled')</script>");
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
                <li><a href="hrhome.jsp" class="current"><span class="home"></span>Home</a></li>
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
		<div class="body">
				
					<div align="center">
					<h2>Schedule Test</h2>
						<form action="Scheduletest" method="post">
						<table border="10" cellpadding="5" cellspacing="8">
						<tr>
							<td><b>Select Course : </b></td>
							<td><select name="course" required>
									<option value="">---Select---</option>
									<option value="java">Java</option>
									<option value="c">C</option>
									<option value="c++">C++</option>
									<!-- <option value="4">4</option> -->	
						</select></td>
							<!-- <td><input type="text" name="course" value="course" placeholder="Course" required></input></td> -->
						</tr>
						
						<tr>
						<td><b>Select Duration : </b></td>
						<td>
						<select name="duration" required>
									<option value="">---Select---</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
										
						</select>
						
						<%-- <td><b>Select Course : </b></td>
							<td><input type="text" name="course" value="<%=session.getAttribute("course").toString() %>" readonly="readonly"></td>
						</tr>
						
						<tr>
						<td><b>Select Duration : </b></td>
						<td>
						<select name="duration" required>
									<option value="">---Select---</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
					
						<%
						Connection con = DbConnection.getConnection();
						PreparedStatement ps1 = con.prepareStatement("select distinct duration from scheduletest where course=?");
						ps1.setString(1, session.getAttribute("course").toString());
						ResultSet rs1 = ps1.executeQuery();
						while(rs1.next())
						{
							%>
							<option value="<%=rs1.getString("duration") %>"><%=rs1.getString("duration") %></option>
							<%
						}
						%>
						</select> --%>
						</td>
						</tr>
						<tr>
							<td><b>Select Date : </b></td>
							<td><input type="date" name="date" ></td>
						</tr>
						<tr>
							<td><b>Select Time : </b></td>
							<td><input type="time" name="time"></td>
						</tr>
						<tr>
						<td></td>
						<td><input type="submit" value="Submit"></td>
						</tr>
						</table>
						</form>
				
				</div></div><br>
	 <div class="cleaner"></div>
        </div>
    
                <div class="cleaner"></div>
		
            <div class="cleaner"></div>
    
    
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
    
<div id="templatemo_footer_wrapper">
     <div id="templatemo_footer">
    
        Copyright © 2048 <a href="#">Your Company Name</a> | 
        <a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a>
    
    </div> <!-- end of templatemo_footer -->
</div>
<div align=center>This template downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div>
</body>
</html>