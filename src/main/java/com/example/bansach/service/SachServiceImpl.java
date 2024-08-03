package com.example.bansach.service;

import com.example.bansach.dao.SachDAO;
import com.example.bansach.entity.Sach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class SachServiceImpl implements SachService {

    @Autowired
    private SachDAO sachDAO;

    @Override
    @Transactional
    public List<Sach> getSachs() {
        return sachDAO.getSachs();
    }

    @Override
    @Transactional
    public void saveSach(Sach theSach) {
        sachDAO.saveSach(theSach);
    }

    @Override
    @Transactional
    public Sach getSach(int theId) {
        return sachDAO.getSach(theId);
    }

    @Override
    @Transactional
    public void deleteSach(int theId) {
        sachDAO.deleteSach(theId);
    }

    @Override
    @Transactional
    public void updateSach(Sach theSach) {
        sachDAO.updateSach(theSach);
    }
}
