<%-- 
    Document   : teste
    Created on : 13/10/2017, 13:04:19
    Author     : Rodrigo
--%>

<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatecpg.quiz.Questao"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page import="br.com.fatecpg.quiz.Jogador"%>
<%@page import="br.com.fatecpg.quiz.Ranking"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    try {
        if (request.getParameter("teste") != null) {
            //para o quiz
            Quiz.validaTeste(new String[]{
                request.getParameter("0"),
                request.getParameter("1"),
                request.getParameter("2"),
                request.getParameter("3"),
                request.getParameter("4"),
                request.getParameter("5"),
                request.getParameter("6"),      
                request.getParameter("7"),        
                request.getParameter("8"),        
                request.getParameter("9"),
                request.getParameter("10"),
                request.getParameter("11"),
                request.getParameter("12"),
                request.getParameter("13"),
                request.getParameter("14"),
                request.getParameter("15"),
                request.getParameter("16"),      
                request.getParameter("17"),        
                request.getParameter("18"),        
                request.getParameter("19"),
            });
            double pontosJogador = Quiz.getGradeAverage() * 10;
            String nome = session.getAttribute("teste").toString();
            
            //criando jogador
            Jogador p = new Jogador(nome);
            p.setName(nome);

            //criando pontuaçao(paca cada jogador)
            Ranking pontos = new Ranking();
            pontos.setJogador(p);
            pontos.setPontos(pontosJogador);
            pontos.ranking.add(pontos);
            
            Quiz.reiniciaFoiUsado();
            response.sendRedirect("ranking.jsp");
        }
    } catch (Exception e) {
    }

%>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <a hef="ranking.jsp">Ranking</a>
        <div>
        <div>            
        <h1>Teste</h1>
        <hr>
        <form>
            <%ArrayList<Questao> test = Quiz.getTeste();%>
            <%Collections.shuffle(test);%>
            <%for(int i = 0; i < 10; i++){%>
                <%Questao q = Quiz.getTeste().get(i);%>
                <h4><%= q.getQuestao() %></h4>
                <%for(String alternative: q.getAlternativa()){%>
                    <input type="radio" name="<%=test.indexOf(q)%>"
                        value="<%=alternative%>"/><%=alternative%>
                <%}%>
            <hr/>
            <%}%>
            <input type="submit" name="teste" value="Concluir"/>
            <input type="hidden" name="name" value=<%=request.getParameter("name")%> />
        </form>
        <br/><br/><br/>
        </div>
        </div>
    </body>
</html>
