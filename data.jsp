<%@ page import = "java.io.*,java.util.*,java.net.*" %>

<html>
	<head>
		<title>JSP Calculator (User Data)</title>
		<style> body{background: hsla(120, 100%, 75%, 0.3)} </style> 
	</head>

	<body>
		<center>
			<h2 align="left" >Information about user : </h2>
         
			<table width = "30%" border = "2" align = "left">
			<tr bgcolor = "white">
				<th>Name</th>
				<th>Value</th>
            </tr>
            <%

         
    		Enumeration headers = request.getHeaderNames();
    		
    		String method = request.getMethod();
String addr =request.getRemoteAddr();

String id =request.getRequestedSessionId();

    		
    		 out.print(" Method: "+ method);

    		 out.println(" || ");
 

    		  out.println("  IP Address :  "+ addr);
    		  out.println(" || ");

    		    out.println(" Session ID:  "+ id);
    		  
    		 


				do {

				        	String name = (String)headers.nextElement();
                  out.print("<tr><td>" + name + "</td>\n");
                  String value = request.getHeader(name);
                  out.println("<td> " + value + "</td></tr>\n");

             
               }
               while(headers.hasMoreElements());
              

				
    		

				
            %>
			</table>
		</center>
    
	</body>
</html>