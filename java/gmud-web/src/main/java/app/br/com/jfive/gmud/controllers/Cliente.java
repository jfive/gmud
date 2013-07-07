package app.br.com.jfive.gmud.controllers;

/**
 * Created with IntelliJ IDEA.
 * User: rodrigoalmeida
 * Date: 18/05/13
 * Time: 01:32
 * To change this template use File | Settings | File Templates.
 */
public class Cliente {

    private String nome;
    private Endereco endereco = new Endereco();

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
