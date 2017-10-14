
package br.com.fatecpg.quiz;

import java.util.Comparator;
/**
 *
 * @author rodrigo
 * coloca os objts em ordem 
 */
public class Organizar implements Comparator<Ranking>{ //comparator é uma interface
    //Implementa interface (metodo)da classe Comparator
    //compara o dois objt da classe ranking
    @Override //limpa
    public int compare(Ranking result1, Ranking result2) {
        return result2.getPontos().compareTo(result1.getPontos());
    }
    
}
