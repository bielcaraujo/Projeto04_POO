<%-- 
    Document   : home
    Created on : 12/10/2017, 15:56:08
    Author     : Gabriel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <h1>Home</h1>
        
        <%if(session.getAttribute("teste") !=null){
            String teste = session.getAttribute("teste").toString();
        
        %>
        <h1><center><b>Seja bem vindo <%= teste%>!!</b></center></h1>
        <form>
            <input type="submit" name="btnSair" value="Sair"/>
        </form>
        
      <%}else
            {%>
            <h4><a href="index.jsp">logar!</a></h4>    
                

            <%}
                if (request.getParameter("btnSair") != null)
                    {
                        session.invalidate();
                        response.sendRedirect("home.jsp");

                    }
            
            
            
            
            %>
      
        
        
        
        
    </body>
</html>
