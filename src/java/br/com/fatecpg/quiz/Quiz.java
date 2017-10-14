package br.com.fatecpg.quiz;
import br.com.fatecpg.quiz.Questao;
import java.util.ArrayList;
import java.util.Random;
/**
 *
 * @author rodrigo
 */
public class Quiz {
    
    private static ArrayList<Questao> teste;
    private static int contaTeste = 0;
    private static double somaNota = 0.0;
    private static double ultNota = 0.0;
    private static boolean[] jaUsado = new boolean[20];
    
    
    public static ArrayList<Questao> getTeste(){
        if(teste == null){
            teste = new ArrayList<>();
            Questao q1 = new Questao("Pergunta", "Rssposta  ", new String[]{"quest1  ", "quest2  ", "quest3  "});
            teste.add(q1);
            Questao q2 = new Questao("Pergunta", "Rssposta  ", new String[]{"quest1  ", "quest2  ", "quest3  "});
            teste.add(q2);
            Questao q3 = new Questao("Pergunta", "Rssposta  ", new String[]{"quest1  ", "quest2  ", "quest3  "});
            teste.add(q3);
            Questao q4 = new Questao("Pergunta", "Rssposta  ", new String[]{"quest1  ", "quest2  ", "quest3  "});
            teste.add(q4);
            Questao q5 = new Questao("Pergunta", "Rssposta  ", new String[]{"quest1  ", "quest2  ", "quest3  "});
            teste.add(q5);
            Questao q6 = new Questao("Pergunta", "Rssposta  ", new String[]{"quest1  ", "quest2  ", "quest3  "});
            teste.add(q6);
            Questao q7 = new Questao("Pergunta", "Rssposta  ", new String[]{"quest1  ", "quest2  ", "quest3  "});
            teste.add(q7);
            Questao q8 = new Questao("Pergunta", "Rssposta  ", new String[]{"quest1  ", "quest2  ", "quest3  "});
            teste.add(q8);
            Questao q9 = new Questao("Pergunta", "Rssposta  ", new String[]{"quest1  ", "quest2  ", "quest3  "});
            teste.add(q9);
            Questao q10 = new Questao("Pergunta", "Rssposta  ", new String[]{"quest1  ", "quest2  ", "quest3  "});
            teste.add(q10);
        }
        return teste;
    }
    
        public static double validaTeste(String[] us_pergunt){ // se certo soma
            int count = 0;
            for(int i=0; i<10; i++){
                if(teste.get(i).getResposta().equals(us_pergunt[i])){
                    count++;
                }
            }
            double nota  = (double)count / 10;
            Quiz.ultNota = nota;
            Quiz.somaNota += nota;
            Quiz.contaTeste++;
            return nota;
         }
        
         public static double getUltNota(){
            return Quiz.ultNota;
         }
    
        public static double getGradeAverage(){
           return Quiz.somaNota / (double)Quiz.contaTeste;
    }
    
    public static int geraAleatorio(){
        Random r = new Random();
        int numeroAleatorio;
        while(true){
            numeroAleatorio = r.nextInt(20);
            if(jaUsado[numeroAleatorio] != true ){
                jaUsado[numeroAleatorio] = true;
                break;
            }
        }
        return numeroAleatorio;
    }
    
    public static void reiniciaFoiUsado(){
        for(int i = 0; i < 20; i++){
            if(jaUsado[i] == true)
                jaUsado[i] = false;
        }
    }
    
}
