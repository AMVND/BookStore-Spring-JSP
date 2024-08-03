package com.example.bansach.dao;

import com.example.bansach.entity.Sach;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SachDAOImpl implements SachDAO {
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public List<Sach> getSachs() {
        List<Sach> result = entityManager.createQuery("Select s from Sach s", Sach.class).getResultList();
        return result;
    }

    @Override
    public void saveSach(Sach theSach) {
        entityManager.merge(theSach);
    }

    @Override
    public Sach getSach(int theId) {
        Sach theSach = entityManager.find(Sach.class, theId);
        return theSach;
    }

    @Override
    public void deleteSach(int theId) {
        Sach theSach = entityManager.find(Sach.class, theId);
        entityManager.remove(theSach);
    }

    @Override
    public void updateSach(Sach theSach) {
        entityManager.merge(theSach);
    }
}
