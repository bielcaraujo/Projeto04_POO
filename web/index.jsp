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
    <%@include file="WEB-INF/jspf/header.jspf" %>
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
        
                <body>
    <section class="bg-primary" id="about">
        <div class="row">
          <div class="col-lg-2 mx-auto text-center">
            <form>
              <div class="form-group">
              <h1 style="color:white">Nome:</h1>
              <input type="text" class="form-control" id="name" name="name" placeholder="Nome" required><br><br>
                <a href="home.jsp">
                  <input class="btn btn-primary" type="submit" name="btnenvia" value="logar"/>
                </a>
              </div>
            </form>
          </div>
          </div>
      </div>
    </section>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
