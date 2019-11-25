<%@page import="com.resumeextraction.MyStringRandomGen"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Vector"%>
<%@page import="k_means.JCA"%>
<%@page import="com.sun.org.apache.xpath.internal.compiler.Keywords"%>
<%@page import="k_means.DataPoint"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.resumeextraction.DateDifference"%>
<%@page import="com.util.DbConnection"%>
<%@page import="com.resumeextraction.Suffle"%>
<%@page import="org.eclipse.jdt.internal.compiler.util.SuffixConstants"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Exam Section</title>
<link href="http://fonts.googleapis.com/css?family=Arvo" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />



<%
String mins = request.getParameter( "mins" );
if( mins == null ) mins = "10";
  
String secs = request.getParameter( "secs" );
if( secs == null ) secs = "1";
%>
<script>
var mins = <%=mins%>; // write mins to javascript
var secs = <%=secs%>; // write secs to javascript
function timer()
{
// tic tac
if( --secs == -1 )
{
secs = 59;
--mins;
} 
// leading zero? formatting
if( secs < 10 ) secs = "0" + secs;             
if( mins < 10 ) mins = "0" + parseInt( mins, 10 );
 
// display
document.forma.mins.value = mins; 
document.forma.secs.value = secs;
 
// continue?
if( secs == 0 && mins == 0 ) // time over
{
	document.forma.submit();
document.forma.ok.disabled = true;
document.formb.results.style.display = "block";
}
else // call timer() recursively every 1000 ms == 1 sec
{
window.setTimeout( "timer()", 1000 );
}
}
</script>
</head>
<body>

<div id="wrapper">
	<div id="menu">
		<ul>
<!-- 			<li><a href="index.jsp">Stop Exam</a></li> -->
		</ul>
		
	</div>
	
	<div id="page">
		<div >
			<div>
			
			
			
			<%
			//if(flag>=0 && test_time<=c_time)
			/* 	if(true)
			{ */
Connection cn=DbConnection.getConnection();	
Statement st=cn.createStatement();

int qn=0;
String q1="", a="", b="",c="",d="",ans="";

ResultSet rs=st.executeQuery("SELECT * FROM qtable ORDER BY RAND() LIMIT 10");
int i=1,j=11;
%>
<form action="regans" name="forma" method="post"/>
<div align="center">
<h2>Exam is Started....... Remaining Time:<input type="text" name="mins" size="1" style="border:0px solid black;text-align:right"/> 
<input type="text" name="secs" size="1" style="border:0px solid black"/></h2>		 
		</div>
	</div>

<%
while(rs.next())
{
int[] op={3,4,5,6};
Suffle.shuffleArray(op);
qn=rs.getInt(1);
q1=rs.getString(2);
a=rs.getString(op[0]);
b=rs.getString(op[1]);
c=rs.getString(op[2]);
d=rs.getString(op[3]);
ans=rs.getString("ans");
System.out.println(a+" "+b);
%>

	
	<table>
	<tr height="60px">
	<input type="hidden" name="<%=i %>" value="<%=qn%>">
	<b><input style="background-color: gray;color: white;" type="text"  value="<%=i %> <%= q1%>" name="qestion" id="q1" size="1000"></b>	
	</tr>
	<br></br>
	<tr>
	
	
	<b>a.<input type="radio" name="<%=j%>" value="<%=a%>" ><%=a%><br>
	<b>b.<input type="radio" name="<%=j%>" value="<%=b%>"><%=b%><br>
	<b>c.<input type="radio" name="<%=j%>" value="<%=c%>"><%=c%><br>
	<b>d.<input type="radio" name="<%=j%>" value="<%=d%>"><%=d%><br>
    </tr>
    <br></br>
	</table>
	
	
<% 
i++;
j++;
}
%>
 <div align="center">
<!-- <input type="submit" value="Submit" style="width:90px; height:50px;"/>
</div> -->
<div align="center">
		<div id="templatemo_content"><center><button type="button" class="button" value="View Details" onclick="window.location.href='examover.jsp'" style="height:70px; width:255px; background-color:#f4511e; border:0px solid #333333; border-radius:5px; color:#FFFFFF;"/>
		<span><h2>End Exam</h2></span></button></center></div></div>	
</form>

<script>
<!--
timer();
//-->
</script>


						
			
			</div>
		</div>
	</div>
	<div class="footer">
    <div class="footer_resize">
      <p class="lf"></p>
      <p class="rf"><marquee>Online Aptitude Test</marquee></p>
      
      <div style="clear:both;"></div>
    </div>
  </div>


</body>
</html>
