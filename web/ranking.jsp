<%-- 
    Document   : teste
    Created on : 13/10/2017, 13:04:19
    Author     : Rodrigo
--%>

<%@page import="java.text.DecimalFormat"%>   <!--decimalFF -->
<%@page import="java.util.Collections"%>      <!--ordenaçao-->
<%@page import="br.com.fatecpg.quiz.Ranking"%> <!--classe Ranking -->
<%@page import="br.com.fatecpg.quiz.Organizar"%>  <!--classe Organizar //ordem objts-->
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatecpg.quiz.Jogador"%>   <!--classe jogador-->
<%@page import="br.com.fatecpg.quiz.Quiz"%>       <!--//classe quiz-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>  
<%
    DecimalFormat ff1 = new DecimalFormat("#");
    DecimalFormat ff = new DecimalFormat("0");
    double lastGrade = 100.0 * Quiz.getUltNota();
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ranking</title>
    </head>
    <body>
        <a href="home.jsp">Home</a>
        <div>
            <div>
                <h1>Ranking</h1> 
                <hr>
                <div>
                    <table>
                        <thead>  <!--//tabela cabeçalho-->
                            <th>Pessoa</th>
                            <th>Pontuação</th>
                        </thead>  
                        <tbody>    <!--//tabela corpo-->
                            <%
                                ArrayList<Ranking> ranking = Ranking.ranking;
                                Collections.sort(ranking, new Organizar());  //coloca em ordem ranking pela pontuaçao
                                for (Ranking pontos : ranking) {%>
                            <tr>
                                <td>
                                    <%= pontos.getJogador().getNome()%>
                                </td>
                                <td>
                                    <%= ff.format(pontos.getPontos())%>
                                </td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                </div>    
            </div>
        </div>
    </body>
</html>
