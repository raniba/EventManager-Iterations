
<!-- Here we will have 4
eventname
date
time
loc

-->
<!DOCTYPE html>
<html>
<head>

<script src="jquery-1.10.2.min.js"></script>
<script src="javascript/functions.js"></script>
<script src="javascript/jquery.js"></script>
<script src="javascript/test.js"></script>


<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="MyEvent.html"><img src="my-event-button.png" style="float:left;"
onmouseover="this.src='my-event-dark-button.png'"
onmouseout="this.src='my-event-button.png'" /></a>

	<a href="Guests.html"><img src="guests_button.png" style="float:left;"
onmouseover="this.src='guests-dark-button.png'"
onmouseout="this.src='guests_button.png'" /></a>

	<a href="Card.html"><img src="invitation-card-button.png" style="float:left;"
onmouseover="this.src='invitation-card-dark-button.png'"
onmouseout="this.src='invitation-card-button.png'" /></a>

	<a href="Send.html"><img src="send-button.png" style="float:left;"
onmouseover="this.src='send-dark-button.png'"
onmouseout="this.src='send-button.png'" /></a>
<br><br>
<img id="Load" src="add_event.jpg"/>
	<table>
		<tr>
			<td>
				<h5>Event Name:</h5>
			</td>
			<td><input type="text" id="eventname"></td>
		</tr>
		<tr>
			<td>
				<h5>date</h5>
			</td>
			<td><input type="text" id="date"></td>
		</tr>
		<tr>
			<td>
				<h5>time</h5>
			</td>
			<td><input type="text" id="time"></td>
		</tr>
		<tr>
			<td>
				<h5>location</h5>
			</td>
			<td><input type="text" id="loc"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="save"></td>
		</tr>
	</table>
</body>
</html>