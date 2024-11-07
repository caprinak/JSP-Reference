<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<body>
	
	<form action="main.jsp" method="POST" target="_blank">
		<input type="checkbox" name="maths" checked="checked" /> Maths <input
			type="checkbox" name="physics" /> Physics <input type="checkbox"
			name="chemistry" checked="checked" /> Chemistry <input type="submit"
			value="Select Subject" />
	</form>




	<form action="readall.jsp" method="POST" target="_blank">
		<input type="checkbox" name="maths" checked="checked" /> Maths <input
			type="checkbox" name="physics" /> Physics <input type="checkbox"
			name="chemistry" checked="checked" /> Chem <input type="submit"
			value="Select Subject" />
	</form>

	<form action="getfrominput.jsp" method="POST">
		Parameter 1: <input type="text" name="p1"> <br /> Parameter
		2: <input type="text" name="p2" /> <input type="submit"
			value="Enter values" />
	</form>

	<form action="setcookie.jsp" method="Post">
		First Name: <input type="text" name="first_name"> <br /> Last
		Name: <input type="text" name="last_name" /> <input type="submit"
			value="Submit" />
	</form>

</body>

</html>
</html>