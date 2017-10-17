<%-- 
    Document   : home
    Created on : 12/10/2017, 15:56:08
    Author     : Gabriel
--%>

<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Collections"%>
<%@page import="br.com.fatecpg.quiz.Organizar"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatecpg.quiz.Ranking"%>
<%@page import="br.com.fatecpg.quiz.Ranking"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
    DecimalFormat ff1 = new DecimalFormat("#");
    DecimalFormat ff = new DecimalFormat("0");
    double lastGrade = 100.0 * Quiz.getUltNota();
    %>
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
         
                <h1>Notas pessoais</h1> 
                
                <div>
                    <table border="1">
                        <thead>  
                            <th>Pontuação</th>
                        </thead>  
                        <tbody>    
                            <%
                                ArrayList<Ranking> ranking = Ranking.ranking;
                                Collections.sort(ranking, new Organizar());  
                                for (Ranking pontos : ranking) {%>
                            <tr>
                                <td>
                                    
                                    <%= ff.format(pontos.getPontos())%> <!--//pontuação atual-->
                                </td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                        
        <form>
            <center><<<<<<< HEAD
            <input type="submit" name="btnSair" value="Sair"/>
            <input type="submit" name="btnTeste" value="Teste"/>
            >>>>>>> origin/master</center>
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
                if (request.getParameter("btnTeste") != null){
                    response.sendRedirect("teste.jsp");


                    }
             %>
      
        
        
        
        
    </body>
</html>
