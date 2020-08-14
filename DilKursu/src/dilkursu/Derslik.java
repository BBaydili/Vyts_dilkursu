/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dilkursu;


public class Derslik {
    int id;
    int sube_id;
    int kapasite;

    public Derslik(int id, int sube_id, int kapasite) {
        this.id = id;
        this.sube_id = sube_id;
        this.kapasite = kapasite;
    }

    @Override
    public String toString() {
        return "Derslik "+id;
    }
    
}
