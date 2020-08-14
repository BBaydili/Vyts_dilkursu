/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dilkursu;


public class Ogretmen {
    int id;
    String adi;
    String soyadi;
    String ev_adresi;
    String cep_telefonu;
    String ev_telefonu;

    public Ogretmen(int id, String adi, String soyadi, String ev_adresi, String cep_telefonu, String ev_telefonu) {
        this.id = id;
        this.adi = adi;
        this.soyadi = soyadi;
        this.ev_adresi = ev_adresi;
        this.cep_telefonu = cep_telefonu;
        this.ev_telefonu = ev_telefonu;
    }

    @Override
    public String toString() {
        return this.adi.trim()+" "+this.soyadi.trim();
    }
    
}
