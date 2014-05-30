package com.cmpe281.app05;

import java.util.List;

import org.hibernate.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class OrderDao {
	@Autowired private SessionFactory sessionFactory;
	
	@Transactional
	public List<Order> Orders(int custid)
	{	

		Query q= (Query) sessionFactory.getCurrentSession().createQuery("from Order where custid= :custid");
		q.setParameter("custid",custid);
		List<Order> orders =  q.list();
				//	return ((Long) q.uniqueResult()).intValue();
		
		return orders;
	}
	
}