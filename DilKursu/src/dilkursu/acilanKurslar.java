/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dilkursu;


public class acilanKurslar {

    int id;
    int derslik_id;
    int kurs_id;
    String kurs_adi;
    String kurs_seviyesi;
    String ogretmen_adi;
    String ogretmen_soyadi;
    int ders_gunu;
    int ders_saati;

    public acilanKurslar(int id, int kurs_id,String ogretmen_adi, String ogretmen_soyadi, int derslik_id, int ders_gunu, int ders_saati, String kurs_adi,String kurs_seviyesi) {
        this.id = id;
        this.kurs_id = kurs_id;
        this.ogretmen_adi = ogretmen_adi;
        this.ogretmen_soyadi = ogretmen_soyadi;
        this.kurs_adi = kurs_adi;
        this.kurs_seviyesi = kurs_seviyesi;
        this.derslik_id = derslik_id;
        this.ders_gunu = ders_gunu;
        this.ders_saati = ders_saati;
    }

    @Override
    public String toString() {
        return ogretmen_adi.trim()+" "+ogretmen_soyadi.trim()+"-"+kurs_adi.trim()+" "+kurs_seviyesi.trim();
    }

}
