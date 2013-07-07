package app.br.com.jfive.gmud.controllers;

/**
 * Created with IntelliJ IDEA.
 * User: rodrigoalmeida
 * Date: 18/05/13
 * Time: 02:31
 * To change this template use File | Settings | File Templates.
 */
public class Endereco {

    private String rua = "Rua 1 ";
    private String estado = "São Paulo";

    public String getRua() {
        return rua;
    }

    public void setRua(String rua) {
        this.rua = rua;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
}
