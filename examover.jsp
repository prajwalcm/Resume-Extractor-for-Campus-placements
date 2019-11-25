<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.DbConnection"%>
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
				 <h2><font color="white">Your Answers Are Submitted...Your Exam Score Will Be Mentioned below:</font></h2>
			
			</div>
		
			</div>
			
			<div align="center">
	
	<table border="0" cellpadding="5">
					<tr>
					<!-- <th>Sr. No.</th>
					<th>Course Name</th>
					<th>Duration</th> -->
					<th><h2><font color="white">Marks =</font></h2></th>
					
					<% 
					int count1=0;
					Connection con = DbConnection.getConnection();
					Statement stm = con.createStatement();
					ResultSet rs2 = stm.executeQuery("SELECT * FROM `marks` ");
					while(rs2.next())
					{
						
							count1++;
					}
					
					System.out.println("number of marks is ="+count1);
					
					//System.out.println("marks "+marks);
					Statement stm1 = con.createStatement();
					//ResultSet rs1 = stm.executeQuery("SELECT * FROM `course` where dept='"+dept+"' limit 2 ");
					ResultSet rs1 = stm.executeQuery("SELECT * FROM `marks` Order BY RAND() limit 1 ");
					String username="",marks="";
					System.out.println("hello");
					while(rs1.next())
					{
						//username=rs1.getString("username");
						marks=rs1.getString("marks");
						
						//count++;					
						%>
											
					
					<%-- <td><%=count %></td> 
					<td><%=username %></td>--%>
					<td><h2><font color="white"><%=marks %> / 10</font></h2></td>
					
						
					<%
					}
					%>
					</tr>
					</table>
					<h2><font color="white">Thank You..............!!!</font></h2>
					
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