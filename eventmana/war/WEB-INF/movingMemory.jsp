<!DOCTYPE  HTML>
<html>
	<head>
		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<meta http-equiv="Content-Type" content="text/html;">
		<title>Sample</title>
		<link type="text/css" rel="stylesheet" href="gamingCss.css"/>
		
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
		<script src="http://digg.googlecode.com/files/Class-0.0.2.js"></script>
		<script type="text/javascript" src="movingCardGameScript.js"></script>
		
	</head>
	<body>
	<div id="theGameDiv">
		<div id="gamingDiv" class="MainDiv">
			<canvas id="gameCanvas" class="GameBoard"></canvas>
		</div>
		<div id="gameSettings"></div>
	</div>
	<form id="formDiv" action="SaveGameScores" method="post">
	<div>
		<input type="text" id="nameField" name="theNameField">
		<label for="nameField">שם</label>
	</div>
	<div>
		<input type="text" id="scoreField" name="theScoreField" readonly>
		<label for="scoreField">ניסיונות</label>
	</div>
	<div>
		<input type="text" id="timeField" name="theTimeField" readonly>
		<label for="timeField">זמן</label>
	</div>
		<input type="submit" value="שלח">
	</form>
	</body>
</html>