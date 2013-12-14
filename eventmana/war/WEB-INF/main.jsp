<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.google.appengine.api.datastore.DatastoreServiceFactory"%>
<%@page import="com.google.appengine.repackaged.com.google.api.client.util.store.DataStore"%>
<%@page import="dbManager.PMF"%>
<%@page import="dbManager.MyClass"%>
<%@ page import="backend.example.project.server.Fib" %>
<%@page import="gaming.newEvent" %>
<%@page import="dbManager.DataBaseManager" %>
<%@page import="java.util.List;" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <style type="text/css">
        .logo
        {
            height: 132px;
            width: 185px;
        }
    </style>
<div id="fb-root"></div>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="Event manager site" />
<meta name="keywords" content="events,event manager" />
<meta name="author" content="Event Manager" />
<link rel="stylesheet" type="text/css" href="event.css" title="event manager" />
<script src="javascript/functions.js"></script>
<script src="jquery-1.10.2.min.js"></script>
<script src="http://digg.googlecode.com/files/Class-0.0.2.js"></script>
<script type="text/javascript" src="movingCardGameScript.js"></script>

<script>
  window.fbAsyncInit = function() {
    FB.init({
   appId      : '615599291832366', // App ID
      channelUrl : 'mosheranitester.appspot.com/channel.html',
      status     : true, // check login status
      cookie     : true, // enable cookies to allow the server to access the session
      xfbml      : true  // parse XFBML
    });
    
      FB.Event.subscribe('auth.authResponseChange', function(response) 
    {
     if (response.status === 'connected') 
    {
    	//window.top.location = "http://manager-event.appspot.com/HelloWorld.html";
    	
    	//document.getElementById("status").innerHTML="";
    	fbgetUserName();
    	getfbgetUserID2();
    	fbgetUserId();
    	fbgetPhoto();
    	getfbgetUserName();
    	getTheEvent();
    	getfbgetUserID();//get the ID
    	
    	//fbGetLoginStatus();
       // document.getElementById("message").innerHTML +=  "<br>Connected to Facebook";
        //SUCCESS
    }
    else if (response.status === 'not_authorized') 
    {
       // document.getElementById("message").innerHTML +=  "<br>Failed to Connect";
 
        //FAILED
    } else 
    {
        //document.getElementById("message").innerHTML +=  "<br>Logged Out";
 window.top.location = "http://manager-event.appspot.com/test.html";
        //UNKNOWN ERROR
    }
    }); 
    
    
    };
    
  (function(d){
     var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement('script'); js.id = id; js.async = true;
     js.src = "//connect.facebook.net/en_US/all.js";
     ref.parentNode.insertBefore(js, ref);
   }(document));
 
</script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
    <div id="maincontent">
	<table style="width: 100%">
		<tr>
			<td>
			<div id="profileimg"></div>
				welcome <div id="profilename"></div>
				<br>
				<img src="logout_FB.png" onclick="fbLogout()" style="height: 38px; width: 150px" />
			</td>
			<td  align="center" colspan="2">
				<img src="logo.jpg" class="logo" align="middle" dir="ltr"></td>
        </tr>
       
		
		
		<tr>
			<td width=20%>&nbsp;</td>
			<td width=80%>
					<a href="MyEvent.html"  target="eventFrame"><img src="my-event-button.png" style="float:left;" onmouseover="this.src='my-event-dark-button.png'" onmouseout="this.src='my-event-button.png'" /></a>
				
					<a href="Guests.html" target="eventFrame"><img src="guests_button.png" style="float:left;" onmouseover="this.src='guests-dark-button.png'" onmouseout="this.src='guests_button.png'" /></a>
				
					<a href="Card.html" target="eventFrame"><img src="invitation-card-button.png" style="float:left;" onmouseover="this.src='invitation-card-dark-button.png'" onmouseout="this.src='invitation-card-button.png'" /></a>
				
					<a href="Send.html" target="eventFrame"><img src="send-button.png" style="float:left;" onmouseover="this.src='send-dark-button.png'" onmouseout="this.src='send-button.png'" /></a>
			</td>
		</tr>
		
		<tr>
			<td width=20%>
			<!-- <div class="container" id="eventslist"></div> -->
			
				<%
			List<newEvent> list;
				%>
			<div id="myID"></div>
			<%
			if (session.getAttribute("userName") == null)
			{
				list = DataBaseManager.getInstance().getAllEvents();
			%> <h1>ALL Events</h1> <%
			}
			else
			{
				%> <h1>My Events</h1> <%
				list = DataBaseManager.getInstance().getEvent(session.getAttribute("userName").toString());
			%>
			<%
			}
			%> <table>
			 <%
			for (newEvent item : list)
			{
				%><tr>
				<td>
				<form id="eventinfo" action="eventinfo" method="post"><!-- eventinfo make a session -->
				<input type="hidden" id="EventName" name="EventName" value="<%=item.name%>">
				<input type="hidden" id="EventHoster" name="EventHoster" value="<%=item.hosterID%>">
				<img src="event_icon.png"/></img><%=item.name%><input type="submit" value="edit"/>
				</form>
				</td>
				
				</tr><%
			}
			%> </table>
			</td>
			<td width=80%><iframe src="eventindex" name="eventFrame" id="eventFrame" width=100% height="500"></iframe></td>
		
			
		</tr>
		<tr>
			<td colspan="2">
			<div id="myIDD"></div>
			</td>
		</tr>
	</table>
	</div>

</body>
</html>