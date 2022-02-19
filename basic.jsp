<HTML>
    <HEAD>
<body bgcolor='black'>
    </HEAD>
<%@ page errorPage="errorpage.jsp" %> 
    <BODY>
        <H2 style="background-color:white;">

            <CENTER>
               <button> <a href="data.jsp" style="text-decoration:underline overline;"> Cookie details </button>
                <br>
                <br>
                <%
              
                double a = Double.parseDouble(request.getParameter("num1"));
                double b = Double.parseDouble(request.getParameter("num2"));
                double c=0; 

                if(request.getParameter("submit").equals("+")){
                   c= a+b;
                    out.println(c);
                }
                else if (request.getParameter("submit").equals("-")){
                    c=a-b;
                    out.println(c);
                }
                else if (request.getParameter("submit").equals("*")){
                    c=a*b;
                    out.println(c);
                }
                else if (request.getParameter("submit").equals("/")){
                
               
                    c=a/b;
                
                
                    out.println(c);
                 
                    
                
            }
            

        
                       
                %>
                <br>
                
            </CENTER>
        </H2>
    </BODY>
</HTML>