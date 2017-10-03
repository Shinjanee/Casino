<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ include file="spin.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CODE CASINO</title>
</head>
<body>
<%

try
{
	String ans=(String)request.getParameter("ans1");
	String answer=(String)request.getParameter("pick");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	Statement st= conn.createStatement();
	int ss=(Integer)session.getAttribute("SCORE");
	String name=(String)session.getAttribute("TEAM_NAME");
	
	Connection conne = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	String str="select * from QUESTIONS where TEAM_NAME=?";
	PreparedStatement sta=conne.prepareStatement(str);
	sta.setString(1,name);
	
	String dem=(String)request.getParameter("demo");
	
	String z1="0";String z2="0";String z3="0";String z4="0";String z5="0";String z6="0";String z7="0";
	String z8="0";String z9="0";String z10="0";String z11="0";String z12="0";String z13="0";String z14="0";
	String z15="0";String z16="0";String z17="0";String z18="0";String z19="0";String z20="0";String z21="0";String z22="0";
	String z23="0";String z24="0";String z25="0";String z26="0";String z27="0";String z28="0";String z29="0";String z30="0";
	String z31="0";String z32="0";String z33="0";String z34="0";String z35="0";String z36="0";String z37="0";String z38="0";String z39="0";
	String z40="0";String z41="0";String z42="0";String z43="0";String z44="0";String z45="0";String z46="0";
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection connec = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	String sq="select * from  QUESTIONS where TEAM_NAME=?";
	String nmm=(String)session.getAttribute("TEAM_NAME");
	PreparedStatement x=connec.prepareStatement(sq);
	x.setString(1,nmm);
	ResultSet rst=x.executeQuery(); 
	
	if(answer.equals("1"))
	{
		while(rst.next()) { 
			z1=rst.getString("Q1");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A1=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A1").equalsIgnoreCase(ans) && z1.equals("0"))
			ss+=10;
		}
 		session.setAttribute("SCORE",ss);
 		session.setAttribute("A1",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q1=? where TEAM_NAME=?");
    	 	session.setAttribute("Q1",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z1.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}
	}

	else if(answer.equals("2"))
	{
		while(rst.next()) { 
			z2=rst.getString("Q2");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A2=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A2").equalsIgnoreCase(ans) && z2.equals("0"))
				ss+=20;
				}
 		session.setAttribute("SCORE",ss);
 		session.setAttribute("A2",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q2=? where TEAM_NAME=?");
    	 	session.setAttribute("Q2",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();

     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z2.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("3"))
	{
		while(rst.next()) { 
			z3=rst.getString("Q3");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A3=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A3").equalsIgnoreCase(ans) && z3.equals("0"))
				ss+=5;
			}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A3",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q3=? where TEAM_NAME=?");
    	 	session.setAttribute("Q3",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();

     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z3.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("4"))
	{
		while(rst.next()) { 
			z4=rst.getString("Q4");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A4=? where TEAM_NAME=?");
		while(rs.next()){
			if(rs.getString("A4").equalsIgnoreCase(ans) && z4.equals("0") )
				ss+=10;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A4",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q4=? where TEAM_NAME=?");
    	 	session.setAttribute("Q4",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
 
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z4.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("5"))
	{
		while(rst.next()) { 
			z5=rst.getString("Q5");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A5=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A5").equalsIgnoreCase(ans) && z5.equals("0"))
				ss+=15;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A5",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q5=? where TEAM_NAME=?");
    	 	session.setAttribute("Q5",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
 
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z5.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}


	}
	else if(answer.equals("6"))
	{
		while(rst.next()) { 
			z6=rst.getString("Q6");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A6=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A6").equalsIgnoreCase(ans) && z6.equals("0"))
				ss+=10;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A6",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q6=? where TEAM_NAME=?");
    	 	session.setAttribute("Q6",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z6.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	
	else if(answer.equals("7"))
	{
		while(rst.next()) { 
			z7=rst.getString("Q7");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A7=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A7").equalsIgnoreCase(ans) && z7.equals("0"))
				ss+=10;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A7",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q7=? where TEAM_NAME=?");
    	 	session.setAttribute("Q7",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
 
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z7.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("8"))
	{
		while(rst.next()) { 
			z8=rst.getString("Q8");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A8=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A8").equalsIgnoreCase(ans) && z8.equals("0"))
				ss+=20;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A8",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q8=? where TEAM_NAME=?");
    	 	session.setAttribute("Q8",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();

     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z8.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("9"))
	{
		while(rst.next()) { 
			z9=rst.getString("Q9");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A9=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A9").equalsIgnoreCase(ans) && z9.equals("0"))
				ss+=5;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A9",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q9=? where TEAM_NAME=?");
    	 	session.setAttribute("Q9",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();

     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z9.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("10"))
	{
		while(rst.next()) { 
			z10=rst.getString("Q10");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A10=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A10").equalsIgnoreCase(ans) && z10.equals("0"))
				ss+=15;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A10",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q10=? where TEAM_NAME=?");
    	 	session.setAttribute("Q10",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();

     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z10.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("11"))
	{
		while(rst.next()) { 
			z11=rst.getString("Q11");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A11=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A11").equalsIgnoreCase(ans) && z11.equals("0"))
				ss+=5;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A11",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q11=? where TEAM_NAME=?");
    	 	session.setAttribute("Q11",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();

     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z11.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("12"))
	{
		while(rst.next()) { 
			z12=rst.getString("Q12");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A12=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A12").equalsIgnoreCase(ans) && z12.equals("0"))
				ss+=10;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A12",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q12=? where TEAM_NAME=?");
    	 	session.setAttribute("Q12",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
 
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z12.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("13"))
	{
		while(rst.next()) { 
			z13=rst.getString("Q13");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A13=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A13").equalsIgnoreCase(ans) && z13.equals("0"))
				ss+=10;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A13",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q13=? where TEAM_NAME=?");
    	 	session.setAttribute("Q13",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();

     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z13.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("14"))
	{
		while(rst.next()) { 
			z14=rst.getString("Q14");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A14=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A14").equalsIgnoreCase(ans) && z14.equals("0"))
				ss+=15;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A14",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q14=? where TEAM_NAME=?");
    	 	session.setAttribute("Q14",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z14.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("15"))
	{
		while(rst.next()) { 
			z15=rst.getString("Q15");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A15=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A15").equalsIgnoreCase(ans) && z15.equals("0"))
				ss+=15;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A15",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q15=? where TEAM_NAME=?");
    	 	session.setAttribute("Q15",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z15.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("16"))
	{
		while(rst.next()) { 
			z16=rst.getString("Q16");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A16=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A16").equalsIgnoreCase(ans) && z16.equals("0"))
				ss+=10;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A16",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q16=? where TEAM_NAME=?");
    	 	session.setAttribute("Q16",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	    
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z16.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("17"))
	{
		while(rst.next()) { 
			z17=rst.getString("Q17");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A17=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A17").equalsIgnoreCase(ans) && z17.equals("0"))
				ss+=10;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A1",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q17=? where TEAM_NAME=?");
    	 	session.setAttribute("Q17",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z17.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("18"))
	{
		while(rst.next()) { 
			z18=rst.getString("Q18");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A18=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A18").equalsIgnoreCase(ans) && z18.equals("0"))
				ss+=20;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A18",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q18=? where TEAM_NAME=?");
    	 	session.setAttribute("Q18",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	     
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z18.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("19"))
	{
		while(rst.next()) { 
			z19=rst.getString("Q19");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A19=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A19").equalsIgnoreCase(ans) && z19.equals("0"))
				ss+=5;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A19",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q19=? where TEAM_NAME=?");
    	 	session.setAttribute("Q19",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	   
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z19.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("20"))
	{
		while(rst.next()) { 
			z20=rst.getString("Q20");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A20=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A20").equalsIgnoreCase(ans) && z20.equals("0"))
				ss+=20;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A20",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q20=? where TEAM_NAME=?");
    	 	session.setAttribute("Q20",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	    
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z20.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("21"))
	{
		while(rst.next()) { 
			z21=rst.getString("Q21");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A21=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A21").equalsIgnoreCase(ans) && z21.equals("0"))
				ss+=15;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A21",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q21=? where TEAM_NAME=?");
    	 	session.setAttribute("Q21",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
		}
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z21.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("22"))
	{
		while(rst.next()) { 
			z22=rst.getString("Q22");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A22=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A22").equalsIgnoreCase(ans) && z22.equals("0"))
				ss+=20;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A22",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q22=? where TEAM_NAME=?");
    	 	session.setAttribute("Q22",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z22.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("23"))
	{
		while(rst.next()) { 
			z23=rst.getString("Q23");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A23=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A23").equalsIgnoreCase(ans) && z23.equals("0"))
				ss+=10;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A23",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q23=? where TEAM_NAME=?");
    	 	session.setAttribute("Q23",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	 
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z23.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("24"))
	{
		while(rst.next()) { 
			z24=rst.getString("Q24");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A24=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A24").equalsIgnoreCase(ans) && z24.equals("0"))
				ss+=10;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A24",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q24=? where TEAM_NAME=?");
    	 	session.setAttribute("Q24",answer);
    		p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
 
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z24.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("25"))
	{
		while(rst.next()) { 
			z25=rst.getString("Q25");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A25=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A25").equalsIgnoreCase(ans) && z25.equals("0"))
				ss+=10;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A25",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q25=? where TEAM_NAME=?");
    	 	session.setAttribute("Q25",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	  
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z25.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("26"))
	{
		while(rst.next()) { 
			z26=rst.getString("Q26");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A26=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A26").equalsIgnoreCase(ans) && z26.equals("0"))
				ss+=15;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A26",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q26=? where TEAM_NAME=?");
    	 	session.setAttribute("Q26",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z26.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("27"))
	{
		while(rst.next()) { 
			z27=rst.getString("Q27");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A27=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A27").equalsIgnoreCase(ans) && z27.equals("0"))
				ss+=5;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A27",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
			if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q27=? where TEAM_NAME=?");
    	 	session.setAttribute("Q27",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	    
     }
			if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z27.equals("0"))
			{
				PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
				ss-=5;
			 	session.setAttribute("SCORE",ss);
			 	o.setInt(1,ss);
			 	o.setString(2,name);
			 	
			 	int l=o.executeUpdate();
			 	
			}

	}
	else if(answer.equals("28"))
	{
		while(rst.next()) { 
			z28=rst.getString("Q28");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A28=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A28").equalsIgnoreCase(ans) && z28.equals("0"))
				ss+=5;
		}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A28",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q28=? where TEAM_NAME=?");
    	 	session.setAttribute("Q28",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	 
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z28.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("29"))
	{
		while(rst.next()) { 
			z29=rst.getString("Q29");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A29=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A29").equalsIgnoreCase(ans) && z29.equals("0"))
				ss+=15;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A29",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q29=? where TEAM_NAME=?");
    	 	session.setAttribute("Q29",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	   
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z29.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("30"))
	{
		while(rst.next()) { 
			z30=rst.getString("Q30");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A30=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A30").equalsIgnoreCase(ans) && z30.equals("0"))
				ss+=20;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A30",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q30=? where TEAM_NAME=?");
    	 	session.setAttribute("Q30",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	  
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z30.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("31"))
	{
		while(rst.next()) { 
			z31=rst.getString("Q31");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A31=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A31").equalsIgnoreCase(ans) && z31.equals("0"))
				ss+=10;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A31",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q31=? where TEAM_NAME=?");
    	 	session.setAttribute("Q31",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	   
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z31.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("32"))
	{
		while(rst.next()) { 
			z32=rst.getString("Q32");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A32=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A32").equalsIgnoreCase(ans) && z32.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A32",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q32=? where TEAM_NAME=?");
    	 	session.setAttribute("Q32",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	     
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z32.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("33"))
	{
		while(rst.next()) { 
			z33=rst.getString("Q33");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A33=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A33").equalsIgnoreCase(ans) && z33.equals("0"))
				ss+=5;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A33",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q33=? where TEAM_NAME=?");
    	 	session.setAttribute("Q33",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z33.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("34"))
	{
		while(rst.next()) { 
			z34=rst.getString("Q34");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A34=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A34").equalsIgnoreCase(ans) && z34.equals("0"))
				ss+=15;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A34",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q34=? where TEAM_NAME=?");
    	 	session.setAttribute("Q34",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	   
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z34.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("35"))
	{
		while(rst.next()) { 
			z35=rst.getString("Q35");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A35=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A35").equalsIgnoreCase(ans) && z35.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A35",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q35=? where TEAM_NAME=?");
    	 	session.setAttribute("Q35",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	   
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z35.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("36"))
	{
		while(rst.next()) { 
			z36=rst.getString("Q36");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A36=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A36").equalsIgnoreCase(ans) && z36.equals("0"))
				ss+=20;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A36",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q36=? where TEAM_NAME=?");
    	 	session.setAttribute("Q36",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z36.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("37"))
	{
		while(rst.next()) { 
			z37=rst.getString("Q37");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A37=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A37").equalsIgnoreCase(ans) && z37.equals("0"))
				ss+=10;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A37",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q37=? where TEAM_NAME=?");
    	 	session.setAttribute("Q37",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z37.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("38"))
	{
		while(rst.next()) { 
			z38=rst.getString("Q38");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A38=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A38").equalsIgnoreCase(ans) && z38.equals("0"))
				ss+=5;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A38",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q38=? where TEAM_NAME=?");
    	 	session.setAttribute("Q38",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();   
    	
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z38.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("39"))
	{
		while(rst.next()) { 
			z39=rst.getString("Q39");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A39=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A39").equalsIgnoreCase(ans) && z39.equals("0"))
				ss+=15;
		}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A39",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q39=? where TEAM_NAME=?");
    	 	session.setAttribute("Q39",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z39.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("40"))
	{
		while(rst.next()) { 
			z40=rst.getString("Q40");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A40=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A40").equalsIgnoreCase(ans) && z40.equals("0"))
				ss+=15;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A40",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q40=? where TEAM_NAME=?");
    	 	session.setAttribute("Q40",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z40.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("41"))
	{
		while(rst.next()) { 
			z41=rst.getString("Q41");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A41=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A41").equalsIgnoreCase(ans) && z41.equals("0"))
				ss+=10;
		
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A41",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q41=? where TEAM_NAME=?");
    	 	session.setAttribute("Q41",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z41.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("42"))
	{
		while(rst.next()) { 
			z42=rst.getString("Q42");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A42=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A42").equalsIgnoreCase(ans) && z42.equals("0"))
				ss+=10;
				}
				
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A42",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q42=? where TEAM_NAME=?");
    	 	session.setAttribute("Q42",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	    
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z42.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("43"))
	{
		while(rst.next()) { 
			z43=rst.getString("Q43");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A43=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A43").equalsIgnoreCase(ans) && z43.equals("0"))
				ss+=20;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A43",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q43=? where TEAM_NAME=?");
    	 	session.setAttribute("Q43",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	    
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z43.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("44"))
	{
		while(rst.next()) { 
			z44=rst.getString("Q44");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A1=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A1").equalsIgnoreCase(ans) && z44.equals("0"))
				ss+=20;
		}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A44",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q44=? where TEAM_NAME=?");
    	 	session.setAttribute("Q44",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	  
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z44.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("45"))
	{
		while(rst.next()) { 
			z45=rst.getString("Q45");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A5=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A45").equalsIgnoreCase(ans) && z45.equals("0"))
				ss+=10;
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A45",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q45=? where TEAM_NAME=?");
    	 	session.setAttribute("Q45",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
   	    
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z45.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else if(answer.equals("46"))
	{
		while(rst.next()) { 
			z46=rst.getString("Q46");}
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A46=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A46").equalsIgnoreCase(ans) && z46.equals("0"))
				ss+=5;
	
				}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A46",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q46=? where TEAM_NAME=?");
    	 	session.setAttribute("Q46",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
    	   
     }
		if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0 && z46.equals("0"))
		{
			PreparedStatement o=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
			ss-=5;
		 	session.setAttribute("SCORE",ss);
		 	o.setInt(1,ss);
		 	o.setString(2,name);
		 	
		 	int l=o.executeUpdate();
		 	
		}

	}
	else
		out.print(ans);
}
catch(Exception e)
{
	out.print(e);
}
%>
</body>
</html>