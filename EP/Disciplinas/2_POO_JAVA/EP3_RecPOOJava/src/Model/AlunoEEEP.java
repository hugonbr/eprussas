/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Hugo
 */
public class AlunoEEEP extends AlunoComum {

    private double notaPOO, notaBD, mediaTec;

    public AlunoEEEP(String nome, int matricula, int idade) {
        super(nome, matricula, idade);
    }

    public double calculaMediaTec() {

        mediaTec = (notaPOO + notaBD) / 2;
        return mediaTec;
    }

    public double getNotaPOO() {
        return notaPOO;
    }

    public void setNotaPOO(double notaPOO) {
        this.notaPOO = notaPOO;
    }

    public double getNotaBD() {
        return notaBD;
    }

    public void setNotaBD(double notaBD) {
        this.notaBD = notaBD;
    }

    public double getMediaTec() {
        return mediaTec;
    }

    public void setMediaTec(double mediaTec) {
        this.mediaTec = mediaTec;
    }

}
