package com.cmpe281.app05;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository

public class CustDao {
	
	@Autowired private SessionFactory sessionFactory;
	private int Cust_id;
	
	@Transactional
	public String verifyCust(String user, String password)
	{
		Query q1 = (Query) sessionFactory.getCurrentSession().createQuery("from Customer where username= :user");
		q1.setParameter("user", user);
		Customer queryResult1 = (Customer) q1.uniqueResult();
		if (queryResult1 == null)
		{
			return "user does not exist";
		}
		System.out.println(" Customer id entered " + user);
		Query q = (Query) sessionFactory.getCurrentSession().createQuery("from Customer where username= :user and password= :pass");
		q.setParameter("user", user);
		q.setParameter("pass",password);
		Customer queryResult = (Customer) q.uniqueResult();
	//	System.out.println(queryResult.getTenant_id());
		if (queryResult !=null)
			return "user exist";
		else 
			return "invalid password";
	
	}

	@Transactional
	public void registerCust(Customer cust) {
		Session session = sessionFactory.getCurrentSession();
		session.save(cust);	
	}
	
}
