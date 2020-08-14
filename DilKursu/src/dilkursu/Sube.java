/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dilkursu;


public class Sube {
    
    int id;
    String sube_adi;
    String sube_adres;
    String sube_ulasim;

    public Sube(int id, String sube_adi, String sube_adres,String sube_ulasim) {
        this.id = id;
        this.sube_adi = sube_adi;
        this.sube_adres = sube_adres;
        this.sube_ulasim = sube_ulasim;
    }

    @Override
    public String toString() {
        return this.sube_adi.trim();
    }
}
