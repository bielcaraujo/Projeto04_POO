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
    <%@include file="WEB-INF/jspf/header.jspf" %>
    <body id="page-top">  
        <%if(session.getAttribute("teste") !=null){
            String teste = session.getAttribute("teste").toString();
        %>
            <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="home.jsp">WebQuiz</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <form><input class="btn btn-primary" type="submit" name="btnSair" value="Sair"/></form>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header class="masthead">
      <div class="header-content">
        <div class="header-content-inner">
          <h1 id="homeHeading">Olá,<%=teste%> </h1><br/>
          <hr>
          <p style="color:white">Clique no botão abaixo para iniciar seu teste!</p>
          <form><input class="btn btn-primary" type="submit" name="btnTeste" value="Iniciar Teste"/></form>
        </div>
      </div>
    </header>
    
    <section class="bg-primary" id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 mx-auto text-center">
            Últimos 10 testes<table class='table' border='1'>
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
    </section>
                        
        
      <%}else
            {%>
                <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="home.jsp">WebQuiz</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#about">Ranking</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#services">Equipe</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header class="masthead">
      <div class="header-content">
        <div class="header-content-inner">
          <h1 id="homeHeading">WebQuiz</h1><br/><h2>Melhor maneira de testar sua experiência!</h2>
          <hr>
          <p style="color:white">Quiz para testar seu conhecimento! Perguntas envolvendo história, geografia e conhecimentos gerais! Clique no botão abaixo para iniciar sua sessão!</p>
          <a class="btn btn-primary btn-xl js-scroll-trigger" href="index.jsp">Iniciar sessão</a>
        </div>
      </div>
    </header>

      <section class="bg-primary" id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 mx-auto text-center">
            Últimos 10 participantes<table class='table' border='1'>
                        <thead>  <!--//tabela cabeçalho-->
                            <th>Pessoa</th>
                            <th>Pontuação</th>
                        </thead>  
                        <tbody>    <!--//tabela corpo-->
                            <%
                                ArrayList<Ranking> ranking1 = Ranking.ranking;
                                for (Ranking pontos : ranking1) {%>
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
			10 melhores participantes<table class='table' border='1'>
                        <thead>  <!--//tabela cabeçalho-->
                            <th>Pessoa</th>
                            <th>Pontuação</th>
                        </thead>  
                        <tbody>    <!--//tabela corpo-->
                             <%
                                ArrayList<Ranking> ranking2 = Ranking.ranking;
                                Collections.sort(ranking2, new Organizar());  //coloca em ordem ranking pela pontuaçao
                                for (Ranking pontos : ranking2) {%>
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
    </section>
                            <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">Equipe</h2>
            <hr class="primary">
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-6 text-center">
            <div class="service-box">
              <img class="img-fluid rounded circle" width="45%" src="res/img/GabrielC.jpg"></i>
              <h3>Gabriel Colombo</h3>
              <p style="color:#008080">Frontend Developer</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 text-center">
            <div class="service-box">
              <img class="img-fluid rounded circle" width="45%" src="res/img/GabrielD.jpg"></i>
              <h3>Gabriel Damico</h3>
              <p style="color:#008080">Backend Developer</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 text-center">
            <div class="service-box">
              <img class="img-fluid rounded circle" width="45%" src="res/img/RodrigoA.jpg"></i>
              <h3>Rodrigo Alvis</h3>
              <p style="color:#008080">Backend Developer</p>
            </div>
          </div>
        </div>
      </div>
    </section>
                

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
      
        
        
        
    <%@include file="WEB-INF/jspf/footer.jspf" %>    
    </body>
</html>
