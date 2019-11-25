
<%@page import="com.util.DbConnection"%>
<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
 
<%
 
            String sn=request.getParameter("ver");
			String hidden=request.getParameter("hidden");
 
					Connection con=DbConnection.getConnection();
					Statement st=con.createStatement();
					ResultSet rs=null;;
					
					//For User
					
					if(hidden.equals("user"))
					{
                    
                    //ResultSet rs = st.executeQuery("select * from emp where empno="+sn);
                     rs = st.executeQuery("select * from mem_info where username='"+sn+"'");  // this is for name
                    if(rs.next())
                    {    
                        out.println("<font color=red>");
                        out.println(" Already Present");
                        out.println("</font>");
 
                    }else {
 
                        out.println("<font color=green>");
                        out.println("Available");
                        out.println("</font>");
 
                    }
                    
					}
					
					//For Noukri.com
					
					if(hidden.equals("noukri"))
					{
                    
                    //ResultSet rs = st.executeQuery("select * from emp where empno="+sn);
                     rs = st.executeQuery("select * from naukri where username='"+sn+"'");  // this is for name
                    if(rs.next())
                    {    
                    	out.println("<font color=red>");
                        out.println(" Already Present");
                        out.println("</font>");
 
                    }else {
 
                        out.println("<font color=green>");
                        out.println("Available");
                        out.println("</font>");
 
                    }
                    
					}
					
					//For Monster.com
					
					if(hidden.equals("monster"))
					{
                    
                    //ResultSet rs = st.executeQuery("select * from emp where empno="+sn);
                     rs = st.executeQuery("select * from monster where username='"+sn+"'");  // this is for name
                    if(rs.next())
                    {    
                        out.println("<font color=red>");
                        out.println(" Already Present");
                        out.println("</font>");
 
                    }else {
 
                        out.println("<font color=green>");
                        out.println("Available");
                        out.println("</font>");
 
                    }
                    
					}
					
					//For Shine.com
					
					if(hidden.equals("shine"))
					{
                    
                    //ResultSet rs = st.executeQuery("select * from emp where empno="+sn);
                     rs = st.executeQuery("select * from shine where username='"+sn+"'");  // this is for name
                    if(rs.next())
                    {    
                        out.println("<font color=red>");
                        out.println(" Already Present");
                        out.println("</font>");
 
                    }else {
 
                        out.println("<font color=green>");
                        out.println("Available");
                        out.println("</font>");
 
                    }
                    
					}
                    
                    
 
rs.close();
st.close();
con.close();
 
%>