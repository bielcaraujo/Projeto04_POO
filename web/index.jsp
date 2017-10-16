<%-- 
    Document   : teste
    Created on : 13/10/2017, 13:44:19
    Author     : rodrigo
--%>
<%@page import="br.com.fatecpg.quiz.Jogador"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>WebQuiz</title>
    </head>
    <body>
                        
                        <% try {
            if (request.getParameter ("btnenvia") !=null){
        
                   String nome = request.getParameter("name");
                   
                   HttpSession sessão = request.getSession();
                   sessão.setAttribute("teste", nome);
                   Jogador user2 = new Jogador(nome);
                   response.sendRedirect("home.jsp");
            }
        }catch(Exception ex){
        
        }
        %>
        
                <div>
                    <form>
                    <br/>
                    <h1>NOME</h1>
                    
      
        
                    <input type="text" id="name" name="name" placeholder="nome" required>
                    <br/><br/>
                    <a href="home.jsp">
                        <input type="submit" name="btnenvia" value="iniciar"/>
                    </a>
                    </form>
                </div>
    </body>
</html>
