package com.cmpe281.app05;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
@Repository
public class ReviewDao {
	@Autowired private SessionFactory sessionFactory;
	
	@Transactional
	public List<Review> Phones(int productID)
	{	
		//String hql = "Select count(*) from Mobile";
		//Query q = sessionFactory.openSession().createQuery(hql);
		
		List<Review> rev = sessionFactory.getCurrentSession().createQuery("from Review where modelno="+productID).list();
	//	return ((Long) q.uniqueResult()).intValue();
		System.out.println("Check Review"+ rev.size());
		//System.out.println("Reviews String"+ rev.get(0).getMessage());
		return rev;
	}
	@Transactional
	public boolean saveReviewsToProduct(Review rev)
	{
		System.out.println("Its inside SaveReviewToProduct");
		Session session = sessionFactory.getCurrentSession();
		//Transaction txn = session.beginTransaction();
		System.out.println("Inside Review Dao " + rev.getModelno());
		System.out.println("Email"+rev.getEmail() +"Firstname" +rev.getFirstname()+ "Lastname"+rev.getLastname()+ "Message"+rev.getMessage());
		System.out.println();
		boolean success = false;
		
		
		System.out.println(":::::Savig FIRSTNAME::::"+rev.getFirstname());
		session.save(rev);
		// txn.commit();
		 
		success  = true;
		return success;
	}
	
}
