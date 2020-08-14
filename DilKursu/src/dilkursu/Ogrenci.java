/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dilkursu;


public class Ogrenci {
    int id;
    String adi;
    String soyadi;
    String odeme_tipi;

    @Override
    public String toString() {
        return adi.trim()+" "+soyadi.trim();
    }

    public Ogrenci(int id, String adi, String soyadi,String odeme_tipi) {
        this.id = id;
        this.adi = adi;
        this.soyadi = soyadi;
        this.odeme_tipi = odeme_tipi;
    }
    
}
