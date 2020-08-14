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


public class Database {
    
    private static final String db_adres = "jdbc:postgresql://localhost:5432/DilKursu";
    private static final String db_users = "postgres";
   // private static final String db_pass = "admin";
    private static final String db_pass = "Develop.90";
    private static ArrayList<Object> list;
    
    static public ArrayList acilanKursDon(int subeId) {
        list = new ArrayList<>();
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT   \"public\".\"acilanKurslar\".\"id\",\"public\".\"kurs\".\"id\" as \"kurs_id\",\"public\".\"kurs\".\"kurs_adi\", \"public\".\"kurs\".\"kur_seviyesi\", \"public\".\"ogretmen\".\"adi\", \"public\".\"ogretmen\".\"soyadi\", \"public\".\"acilanKurslar\".\"ders_gunu\", \"public\".\"acilanKurslar\".\"ders_saati\", \"public\".\"acilanKurslar\".\"derslik_id\"\n");
        sql.append("FROM     \"public\".\"acilanKurslar\"\n");
        sql.append("INNER JOIN \"public\".\"ogretmen\"  ON \"public\".\"acilanKurslar\".\"ogretmen_id\" = \"public\".\"ogretmen\".\"id\"\n");
        sql.append("INNER JOIN \"public\".\"derslik\"  ON \"public\".\"acilanKurslar\".\"derslik_id\" = \"public\".\"derslik\".\"id\"\n");
        sql.append("INNER JOIN \"public\".\"kurs\"  ON \"public\".\"acilanKurslar\".\"kurs_id\" = \"public\".\"kurs\".\"id\"");
        sql.append("INNER JOIN \"public\".\"sube\"  ON \"public\".\"derslik\".\"sube_id\" = \"public\".\"sube\".\"id\"\n");
        sql.append("WHERE public.sube.id = ");
        sql.append(subeId);
        try (Connection con = DriverManager.getConnection(db_adres, db_users, db_pass);
                Statement s = con.createStatement();
                ResultSet rs = s.executeQuery(sql.toString())) {
            while (rs.next()) {
                int id = rs.getInt("id");
                int derslik_id = rs.getInt("derslik_id");
                int kurs_id = rs.getInt("kurs_id");
                String kurs_adi = rs.getString("kurs_adi");
                String kurs_seviyesi = rs.getString("kur_seviyesi");
                String ogretmen_adi = rs.getString("adi");
                String ogretmen_soyadi = rs.getString("soyadi");
                int ders_gunu = rs.getInt("ders_gunu");
                int ders_saati = rs.getInt("ders_saati");
                list.add(new acilanKurslar(id, kurs_id, ogretmen_adi, ogretmen_soyadi, derslik_id, ders_gunu, ders_saati, kurs_adi, kurs_seviyesi));
            }
            
            return list;
        } catch (SQLException e) {
            System.out.println("Bağlanamadi");
            return null;
        }
        
    }
    
    static public ArrayList ogrenciDon() {
        list = new ArrayList<>();
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT *FROM \"public\".\"ogrenci\"\n");
        sql.append("WHERE \"ogrenci\".\"odeme_tipi\" ='Taksit'");
        try (Connection con = DriverManager.getConnection(db_adres, db_users, db_pass);
                Statement s = con.createStatement();
                ResultSet rs = s.executeQuery(sql.toString())) {
            while (rs.next()) {
                list.add(new Ogrenci(rs.getInt("id"), rs.getString("adi"), rs.getString("soyadi"), rs.getString("odeme_tipi")));
            }
            return list;
            
        } catch (SQLException e) {
            System.out.println("Bağlanamadim");
            return null;
        }
    }
    
    static public ArrayList acilanKursDersdenDon(int dersId, int subeId) {
        list = new ArrayList<>();
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT   \"public\".\"acilanKurslar\".\"id\",\"public\".\"kurs\".\"id\" as \"kurs_id\",\"public\".\"kurs\".\"kurs_adi\", \"public\".\"kurs\".\"kur_seviyesi\", \"public\".\"ogretmen\".\"adi\", \"public\".\"ogretmen\".\"soyadi\", \"public\".\"acilanKurslar\".\"ders_gunu\", \"public\".\"acilanKurslar\".\"ders_saati\", \"public\".\"acilanKurslar\".\"derslik_id\"\n");
        sql.append("FROM     \"public\".\"acilanKurslar\"\n");
        sql.append("INNER JOIN \"public\".\"ogretmen\"  ON \"public\".\"acilanKurslar\".\"ogretmen_id\" = \"public\".\"ogretmen\".\"id\"\n");
        sql.append("INNER JOIN \"public\".\"derslik\"  ON \"public\".\"acilanKurslar\".\"derslik_id\" = \"public\".\"derslik\".\"id\"\n");
        sql.append("INNER JOIN \"public\".\"kurs\"  ON \"public\".\"acilanKurslar\".\"kurs_id\" = \"public\".\"kurs\".\"id\"");
        sql.append("INNER JOIN \"public\".\"sube\"  ON \"public\".\"derslik\".\"sube_id\" = \"public\".\"sube\".\"id\"\n");
        sql.append("WHERE \"public\".\"acilanKurslar\".\"kurs_id\"= ");
        sql.append(dersId);
        sql.append(" AND public.sube.id = ");
        sql.append(subeId);
        try (Connection con = DriverManager.getConnection(db_adres, db_users, db_pass);
                Statement s = con.createStatement();
                ResultSet rs = s.executeQuery(sql.toString())) {
            while (rs.next()) {
                int id = rs.getInt("id");
                int derslik_id = rs.getInt("derslik_id");
                int kurs_id = rs.getInt("kurs_id");
                String kurs_adi = rs.getString("kurs_adi");
                String kurs_seviyesi = rs.getString("kur_seviyesi");
                String ogretmen_adi = rs.getString("adi");
                String ogretmen_soyadi = rs.getString("soyadi");
                int ders_gunu = rs.getInt("ders_gunu");
                int ders_saati = rs.getInt("ders_saati");
                list.add(new acilanKurslar(id, kurs_id, ogretmen_adi, ogretmen_soyadi, derslik_id, ders_gunu, ders_saati, kurs_adi, kurs_seviyesi));
            }
            
            return list;
        } catch (SQLException e) {
            System.out.println("Bağlanamadi");
            return null;
        }
        
    }
    
    static public ArrayList subeOgretmenListesi(int id) {
        list = new ArrayList<>();
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT   \"public\".\"ogretmen\".*\n");
        sql.append("FROM     \"public\".\"sube_ogretmen\" \n");
        sql.append("INNER JOIN \"public\".\"ogretmen\"  ON \"public\".\"sube_ogretmen\".\"ogretmen_id\" = \"public\".\"ogretmen\".\"id\" \n");
        sql.append("INNER JOIN \"public\".\"sube\"  ON \"public\".\"sube_ogretmen\".\"sube_id\" = \"public\".\"sube\".\"id\"\n");
        sql.append("where sube_id = " + id);
        try (Connection con = DriverManager.getConnection(db_adres, db_users, db_pass);
                Statement s = con.createStatement();
                ResultSet rs = s.executeQuery(sql.toString())) {
            while (rs.next()) {
                list.add(new Ogretmen(rs.getInt("id"), rs.getString("adi"), rs.getString("soyadi"),
                        rs.getString("ev_adresi"), rs.getString("cep_telefonu"), rs.getString("ev_telefonu")));
            }
            return list;
        } catch (SQLException e) {
            
            System.out.println("Database baglanilamadi");
            return null;
        }
    }
    
    static public ArrayList derslikDon(int id) {
        list = new ArrayList<>();
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT *from public.derslik \n");
        sql.append("WHERE sube_id = ");
        sql.append(id);
        try (Connection con = DriverManager.getConnection(db_adres, db_users, db_pass);
                Statement s = con.createStatement();
                ResultSet rs = s.executeQuery(sql.toString())) {
            while (rs.next()) {
                list.add(new Derslik(rs.getInt("id"), rs.getInt("sube_id"), rs.getInt("kapasite")));
            }
            return list;
        } catch (SQLException e) {
            
            System.out.println("Database baglanilamadi");
            return null;
        }
    }
    
    static public ArrayList ogretmenDon() {
        list = new ArrayList<>();
        try (Connection con = DriverManager.getConnection(db_adres, db_users, db_pass);
                Statement s = con.createStatement();
                ResultSet rs = s.executeQuery("SELECT *From ogretmen")) {
            while (rs.next()) {
                list.add(new Ogretmen(rs.getInt("id"), rs.getString("adi"), rs.getString("soyadi"),
                        rs.getString("ev_adresi"), rs.getString("cep_telefonu"), rs.getString("ev_telefonu")));
            }
            return list;
        } catch (SQLException e) {
            
            System.out.println("Database baglanilamadi");
            return null;
        }
    }
    
    static public ArrayList kursDon() {
        list = new ArrayList<>();
        try (Connection con = DriverManager.getConnection(db_adres, db_users, db_pass);
                Statement s = con.createStatement();
                ResultSet rs = s.executeQuery("SELECT *From kurs")) {
            while (rs.next()) {
                list.add(new Kurs(rs.getInt("id"), rs.getString("kurs_adi"), rs.getString("kur_seviyesi")));
            }
            return list;
        } catch (SQLException e) {
            
            System.out.println("Database baglanilamadi");
            return null;
        }
    }
    
    static public ArrayList subeDon() {
        list = new ArrayList<>();
        try (Connection con = DriverManager.getConnection(db_adres, db_users, db_pass);
                Statement s = con.createStatement();
                ResultSet rs = s.executeQuery("SELECT *From sube")) {
            while (rs.next()) {
                list.add(new Sube(rs.getInt("id"), rs.getString("sube_adi"), rs.getString("sube_adres"), rs.getString("sube_ulasim")));
            }
            return list;
        } catch (SQLException e) {
            
            System.out.println("Database baglanilamadi");
            return null;
        }
    }
    
}
