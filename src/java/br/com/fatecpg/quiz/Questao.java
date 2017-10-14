package br.com.fatecpg.quiz;

/**
 *
 * @author rodrigo
 */

public class Questao {
    private String questao;
    private String resposta;
    private String[] alternativa;

    public Questao(String questao, String resposta, String[] alternativa) {
        this.questao = questao;
        this.resposta = resposta;
        this.alternativa = alternativa;
    }

    public String getQuestao() {
        return questao;
    }

    public void setQuestao(String questao) {
        this.questao = questao;
    }

    public String getResposta() {
        return resposta;
    }

    public void setResposta(String resposta) {
        this.resposta = resposta;
    }

    public String[] getAlternativa() {
        return alternativa;
    }

    public void setAlternativa(String[] alternativa) {
        this.alternativa = alternativa;
    }
    
}