/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.m2i.charron.service;

import com.m2i.charron.hibernet.Employer;
import com.m2i.charron.hibernet.NewHibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Formation
 */
public class EmployerService {

    static public boolean AjouterEmployer(String eNom, String eNumber) {

        try {
            Employer employee = new Employer(eNom, eNumber);

            Session session = NewHibernateUtil.getSessionFactory().openSession();
            Transaction transaction = session.beginTransaction();
            session.save(employee);
            transaction.commit();
            session.close();
        } catch (Exception e) {
            System.out.println("Erreur inconue");
            System.out.println(e.getMessage());
            e.printStackTrace();
            return false;
        }
        return true;
    }
    static public List<Employer> showAllEmployees() {
        List<Employer> employeeList = new ArrayList<Employer>();
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery("from Employer");
        System.out.println("nb :"+query.list().size());
        employeeList = query.list();
        return employeeList;
    }

}
