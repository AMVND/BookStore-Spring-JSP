package com.example.bansach.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "sach")
public class Sach {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int masach;

    @Column(name = "tensach")
    private String tensach;

    @Column(name = "gia")
    private String gia;

    @Column(name = "nxb")
    private String nxb;

    @Column(name = "tacgia")
    private String tacgia;

    public Sach(int masach, String tensach, String gia, String nxb, String tacgia) {
        this.masach = masach;
        this.tensach = tensach;
        this.gia = gia;
        this.nxb = nxb;
        this.tacgia = tacgia;
    }

    public Sach() {
    }

    public int getMasach() {
        return masach;
    }

    public void setMasach(int masach) {
        this.masach = masach;
    }

    public String getTensach() {
        return tensach;
    }

    public void setTensach(String tensach) {
        this.tensach = tensach;
    }

    public String getGia() {
        return gia;
    }

    public void setGia(String gia) {
        this.gia = gia;
    }

    public String getNxb() {
        return nxb;
    }

    public void setNxb(String nxb) {
        this.nxb = nxb;
    }

    public String getTacgia() {
        return tacgia;
    }

    public void setTacgia(String tacgia) {
        this.tacgia = tacgia;
    }

    @Override
    public String toString() {
        return "Sach{" +
                "masach=" + masach +
                ", tensach='" + tensach + '\'' +
                ", gia='" + gia + '\'' +
                ", nxb='" + nxb + '\'' +
                ", tacgia='" + tacgia + '\'' +
                '}';
    }
}
