<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Users Status</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style3 {font-size: 16px}
.style4 {font-size: 16px; color: #333333; }
.style5 {color: #2c83b0}
.style8 {
	font-weight: bold;
	color: #000000;
}
.style10 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home </span></a></li>
          <li class="active"><a href="admin_Login.jsp"><span>Admin</span></a></li>
          <li><a href="user_Login.jsp"><span>User</span></a></li>
          <li><a href="about_Project.html"><span></span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h2><span class="style1">CloudRaid Detecting Distributed Concurrency Bugs<br/>
          <small>via Log Mining and Enhancement</small></span></h2>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="294" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="294" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="294" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style10">View All Users Details & Status !!! </h2>
          
          <div class="clr"></div>
          
          <p>&nbsp;</p>
          <p>
		   <table width="652" border="1"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="33" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style3 style1">ID</div></td>
              <td  width="116" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style3 style1">UserImage</div></td>
              <td  width="101" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style3 style1">Username</div></td>
              <td  width="108" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style3 style1">Mobile</div></td>
              <td  width="130" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style3 style1">Location</div></td>
              <td  width="89" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style3 style1">Status</div></td>
            </tr>
		  
            <%@ include file="connect.jsp" %>
            <%
					  
						String s1,s2,s3,s4,community="";
						int i=0;
						try 
						{
						
						
						   	String query="select * from user "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1,count1=1;
					   		while ( rs.next() )
					   		{
					
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(5);
								s3=rs.getString(12);
								s4=rs.getString(10);
								
					
					%>
            <tr>
              <td  valign="baseline" height="0"><p class="style3 style1">&nbsp;</p>
                  <div align="center" class="style3 style8 style1">
                    <p>
                      <%out.println(i);%>
                    </p>
                    <p>&nbsp; </p>
                  </div></td>
              <td width="116" rowspan="1" ><div class="style3 style1" style="margin:10px 13px 10px 13px;" ><strong> <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="admin_ProfilePic.jsp?id=<%=i%>" style="width:95px; height:100px;"  />
              </a> </strong></div></td>
              <td  valign="baseline" height="0"><p class="style3 style1 style10">&nbsp;</p>
                  <div align="center" class="style3 style1 style10"><strong>
                  <%out.println(s1);%>
                  </strong></div></td>
              <td  valign="baseline" height="0"><p class="style3 style1 style10">&nbsp;</p>
                  <div align="center" class="style3 style1 style10"><strong>
                  <%out.println(s2);%>
                  </strong></div></td>
              <td  valign="baseline" height="0"><p class="style3 style1 style10">&nbsp;</p>
                  <div align="center" class="style3 style1 style10"><strong>
                  <%out.println(s3);%>
                  </strong></div></td>
              <%
						if(s4.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td  width="89" valign="baseline" height="0" style="color:#000000;"align="center"><div align="center" class="style3 style8 style1 style10">
                  <p>&nbsp;</p>
                <p><a href="admin_Authorize.jsp?id=<%=i%>">waiting</a></p>
              </div></td>
              <%
						}
						else
						{
						%>
              <td width="59" height="0"  valign="baseline"><p class="style3 style1 style10">&nbsp;</p>
                  <div align="center" class="style3 style1 style10"><strong>
                  <%out.println(s4);%>
                  </strong></div></td>
              <%
						}
						%>
            </tr>
            <%
						}
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
           
          </table>
          </p>
		  
          <p>&nbsp;</p>
          <p align="right"><a href="admin_Main.jsp">Back</a></p>
          <div class="clr"></div>
        </div>
        <div class="article">
          
          <div class="clr"></div>
        
          
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
          <li><a href="admin_Main.jsp"><span>Admin Main </span></a></li>
          <li><a href="admin_Login.jsp"><span>Log Out</span></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
     
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
