
package br.com.fatecpg.quiz;

import java.util.ArrayList;

/**
 *
 * @author rodrigo
 */
public class Jogador {
    private String name;
    public static ArrayList<Jogador> jogadores;

    public Jogador(String nome){
        this.setName(nome);
    }

    public static ArrayList<Jogador> getJogadores() {
        return jogadores;
    }

    public static void setJogadores(Jogador p) {
        jogadores.add(p);
    }

    //métodos getters e setters
    public String getNome() {
        return name;
    }

    public void setName(String nome) {
        this.name = nome;
    }    
}
