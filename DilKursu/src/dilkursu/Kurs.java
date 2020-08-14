/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dilkursu;


public class Kurs {

    int id;
    String kurs_adi;
    String kurs_seviyesi;

    public Kurs(int id, String kurs_adi, String kurs_seviyesi) {
        this.id = id;
        this.kurs_adi = kurs_adi;
        this.kurs_seviyesi = kurs_seviyesi;
    }

    @Override
    public String toString() {
        return this.kurs_adi.trim() + " " + this.kurs_seviyesi.trim();
    }

}
