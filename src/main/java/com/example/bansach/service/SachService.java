package com.example.bansach.service;

import com.example.bansach.entity.Sach;

import java.util.List;

public interface SachService {
    public List<Sach> getSachs();

    public void saveSach(Sach theSach);

    public Sach getSach(int theId);

    public void deleteSach(int theId);

    public void updateSach(Sach theSach);
}
