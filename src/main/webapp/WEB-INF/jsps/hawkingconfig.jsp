<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
var str1=f2.ta1.value;
if(str1==="")
{
alert("ERROR: Your Text Box is Blank");
}
}
</script>
</head>
<body>
	<center>
		<h2>Configuration</h2>
	</center>
	Configuration Details are listed below:
	<ul>
		<li>Allows the user to configure everything in the way they need
			the date text to be parsed</li>
		<li>The context of date text can differs from person to person,
			locale to locale, country to country, business to business</li>
		<li>Enable user to control the date and time output based on
			their perspective and requirements</li>
	</ul>
	<b>Sample Input:</b>
	<br> we will go out on weekend 
	<br> -> In India it's Saturday and Sunday
	<br> -> In UAE it's Friday and Saturday
	<br>
	<b>Sample Output:</b>
	<br> -> In India it's Saturday and Sunday
	<br>Text: on weekend
	<br>Start: 2021-08-28T00:00:00.000+05:30
	<br>End: 2021-08-29T23:59:59.000+05:30
	<br> -> In UAE it's Friday and Saturday
	<br> Text: on weekend
	<br> Start: 2021-08-27T00:00:00.000+05:30
	<br> End: 2021-08-28T23:59:59.000+05:30
	<br>
	<br>
	<form method=post action="/Hawking/config" name=f2>
		<center>
			<table border=0>
				<tr>
					<td><label for="l1"> Weekend Start </label></td>
					<td><select name=wendstart>
							<option>None</option>
							<option>Monday</option>
							<option>Tuesday</option>
							<option>Wednesday</option>
							<option>Thursday</option>
							<option>Friday</option>
							<option>Saturday</option>
							<option>Sunday</option>
					</select></td>
				</tr>
				<tr>
					<td><label for="l2"> Weekend End </label></td>
					<td><select name=wendend>
							<option>None</option>
							<option>Monday</option>
							<option>Tuesday</option>
							<option>Wednesday</option>
							<option>Thursday</option>
							<option>Friday</option>
							<option>Saturday</option>
							<option>Sunday</option>
					</select></td>
				</tr>
				<tr>
					<td><label for="l3"> Enter your Text </label></td>
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