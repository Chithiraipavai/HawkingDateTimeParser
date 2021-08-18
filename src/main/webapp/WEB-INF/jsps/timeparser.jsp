<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Time Parser</title>
<style>
table {
	table-layout: auto;
	width: 70%;
}

body {
	background-color: #ffe6f2;
	font-size: 21px;
}

ul {
	text-align: justify;
	max-width: 48%;
	font-size: 20px;
}
</style>
<script>
function fun1()
{
var str1=f1.ta1.value;
if(str1==="")
{
alert("ERROR: Your Text Box is Blank");
}
}
</script>
</head>
<body>
	<center>
		<h2>Time Parser</h2>
	</center>
	The following things that can be figured out by Hawking Parser.
	<ul>
		<li>Understand the Context</li>
		<li>Making Senses of Your Tenses</li>
		<li>Handle Multiple Date/Time Values</li>
		<li>Connecting the Sentences based on Duration and Relationships</li>
		<li>Understanding of Prefixes and Postfixes</li>
		<li>Capture Information from Complex Sentences</li>
		<li>Capture Date/Time across Time Zones</li>
		<li>The Perfect Fit for Business Application</li>
	</ul>
	<b>Sample Input:</b>
	<br> I am going for a trade show at evening. From December 2nd,
	most of the companies will be open in Tamil Nadu.
	<br>(Dates: at evening, from December 2nd)
	<br>
	<b>Sample Output:</b>
	<br> Text: evening
	<br> Start: 2021-08-17T17:00:00.000+05:30
	<br> End: 2021-08-17T20:59:59.000+05:30
	<br> Text: From December 2nd
	<br> Start: 2021-12-02T00:00:00.000+05:30
	<br> End: null
	<br>
	<br>
	<form method=post action="/Hawking/save" name=f1>
		<center>
			<table border=0>
				<tr>
					<td><label for="l1"> Enter your Text </label></td>
					<td><textarea id=ta1 name=input rows="4" cols="30"
							placeholder="Type your message">
</textarea></td>
				</tr>
				<tr>
					<td colspan="2">
						<center>
							<input type=reset value="Reset"> <input type=submit
								value="Submit" onclick=fun1();>
						</center>
					</td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>