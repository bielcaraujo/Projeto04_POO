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
            Questao q1 = new Questao("Cidade brasileira onde está o Rio Tietê", "Sao Paulo", new String[]{"Rio de Janeiro", "Sao Paulo", "Recife"});
            teste.add(q1);
            Questao q2 = new Questao("Nome do navegador português que, conforme a lenda oficial, descobriu o Brasil", "Pedro Alvares Cabral", new String[]{"Vasco da Gama", "Cristóvão Colombo", "Pedro Alvares Cabral"});
            teste.add(q2);
            Questao q3 = new Questao("Nome que se dá a uma porção de terra cercada de água por todos os lados", "Ilha", new String[]{"Ilha", "Lagoa", "Istmo"});
            teste.add(q3);
            Questao q4 = new Questao("Metal precioso de cor amarela, muito usado no fabrico de alianças, anéis, brincos, e até moedas", "Ouro", new String[]{"Estanho", "Ouro", "Aço Inoxidável"});
            teste.add(q4);
            Questao q5 = new Questao("Estação do ano que antecede a Primavera", "Inverno", new String[]{"Inverno", "Verão", "Outono"});
            teste.add(q5);
            Questao q6 = new Questao("Cidade da Europa onde está localizada a Torre Eiffel", "Paris", new String[]{"Berlim", "Londres", "Paris"});
            teste.add(q6);
            Questao q7 = new Questao("Cidade brasileira conhecida como \"A Cidade Maravilhosa\"", "Rio de Janeiro", new String[]{"Sao Paulo", "Recife", "Rio de Janeiro"});
            teste.add(q7);
            Questao q8 = new Questao("Nome do brasileiro conhecido como \"O Pai da Aviação\"", "Alberto Santos Dumont", new String[]{"Alberto Santos Dumont", "José de Alencar", "Osvaldo Cruz"});
            teste.add(q8);
            Questao q9 = new Questao("Frase atribuída a Dom Pedro I ao dar o Grito de Independência do Brasil", "Independencia ou Morte", new String[]{"Pelo bem do povo e felicidade geral da nação, diga ao povo que grito", "Portugueses, é chegada a hora de voltarem para casa", "Independencia ou Morte"});
            teste.add(q9);
            Questao q10 = new Questao("Nome do Monte avistado pela esquadra de Cabral ao se aproximar da costa brasileira", "Monte Pascoal", new String[]{"Monte Pedrogoso", "Monte Santo", "Monte Pascoal"});
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
