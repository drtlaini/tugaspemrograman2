/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package per2;

/**
 *
 * @author durotul aini
 */
public class MHS {
    private String nim, nama;
    private Float uts, uas;
    private static double nilakhir;
    private static String grade;

    public String getNim() {
        return nim;
    }

    public void setNim(String nim) {
        this.nim = nim;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public Float getUts() {
        return uts;
    }

    public void setUts(Float uts) {
        this.uts = uts;
    }

    public Float getUas() {
        return uas;
    }

    public void setUas(Float uas) {
        this.uas = uas;
    }
    public double getNilAkhir(){
        nilakhir= (uts + uas)/2;
        return nilakhir;
    }
    public String getGrade(){
        if (nilakhir<50)
            grade="E";
        else if(nilakhir<60)
            grade="D";
        else if(nilakhir<70)
            grade="C";
        else if(nilakhir<80)
            grade="B";
        else
            grade="A";
        return grade;
    }
}


