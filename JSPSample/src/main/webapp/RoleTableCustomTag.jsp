<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix = "opera" uri = "WEB-INF/custom.tld"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The Magic Flute</title>
</head>
>
<BODY>
	<H2>The Magic Flute</H2>
	<H3>Dramatis Personae</H3>
	<TABLE BORDER="1" CELLPADDING="3" CELLSPACING="0">
		<TR>
			<TH>Role</TH>
			<TH>Range</TH>
			<TH>Description</TH>
			<opera:role name="Tamino" range="Tenor"
				description="an Egyptian prince" />
			<opera:role name="Pamina" range="Soprano"
				description="daughter of the Queen of the Night" />
			<opera:role name="Papageno" range="Baritone"
				description="a bird-catcher" />
			<opera:role name="Queen of the Night" range="Soprano"
				description="die Sternflammende Königin" />
			<opera:role name="Sarastro" range="Bass"
				description="High Priest of Isis and Osiris" />
	</TABLE>
</BODY>
</html>