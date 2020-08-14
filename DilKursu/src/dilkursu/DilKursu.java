/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dilkursu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DilKursu {

    /**
     * @param args the command line arguments
     */
    private static final String db_adres = "jdbc:postgresql://localhost:5432/DilKursu";
    private static final String db_users = "postgres";
    private static final String db_pass = "admin";



    public static void main(String[] args) {
//        try (Connection con = DriverManager.getConnection(db_adres, db_users, db_pass);) {
//            // TODO code application logic here
//            ResultSet rs;
//            Statement s;
//            s = con.createStatement();
//            rs = s.executeQuery("SELECT * FROM public.ogretmen");
//            while (rs.next()) {
//                System.out.println(rs.getString("id"));
//            }
//        } catch (SQLException ex) {
//            System.out.println("Bağlanamadık abi");
//        }
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT   \"public\".\"acilanKurslar\".\"id\",\"public\".\"kurs\".\"id\" as \"kurs_id\",\"public\".\"kurs\".\"kurs_adi\", \"public\".\"kurs\".\"kur_seviyesi\", \"public\".\"ogretmen\".\"adi\", \"public\".\"ogretmen\".\"soyadi\", \"public\".\"acilanKurslar\".\"ders_gunu\", \"public\".\"acilanKurslar\".\"ders_saati\", \"public\".\"acilanKurslar\".\"derslik_id\"\n");
        sql.append("FROM     \"public\".\"acilanKurslar\"\n");
        sql.append("INNER JOIN \"public\".\"ogretmen\"  ON \"public\".\"acilanKurslar\".\"ogretmen_id\" = \"public\".\"ogretmen\".\"id\"\n");
        sql.append("INNER JOIN \"public\".\"derslik\"  ON \"public\".\"acilanKurslar\".\"derslik_id\" = \"public\".\"derslik\".\"id\"\n");
        sql.append("INNER JOIN \"public\".\"kurs\"  ON \"public\".\"acilanKurslar\".\"kurs_id\" = \"public\".\"kurs\".\"id\"");
        sql.append("INNER JOIN \"public\".\"sube\"  ON \"public\".\"derslik\".\"sube_id\" = \"public\".\"sube\".\"id\"\n");
        sql.append("WHERE public.sube.id = ");
        sql.append(1);
        System.out.println(sql);

        }
    

}
