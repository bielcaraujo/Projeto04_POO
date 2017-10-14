
package br.com.fatecpg.quiz;

import java.util.ArrayList;

/**
 *
 * @author rodrigo
 * cria jogador 
 */
public class Ranking {

    private Jogador jogador;
    private double pontos;

    public static ArrayList<Ranking> ranking = new ArrayList<Ranking>();
    
    public Double getPontos() {
        return pontos;
    }

    public void setPontos(Double pontos) {
        this.pontos = pontos;
    }

    public Jogador getJogador() {
        return jogador;
    }

    public void setJogador(Jogador jogador) {
        this.jogador = jogador;
    }

    public static ArrayList<Ranking> getRanking() {
        return ranking;
    }

    public static void setRanking(Ranking pontos) {
        ranking.add(pontos);
    }
}