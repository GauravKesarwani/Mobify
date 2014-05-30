package com.cmpe281.app05;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository

public class VendorDao
{
	@Autowired private SessionFactory sessionFactory;
	
	@Transactional
	public void registerTenant(Tenant tenant)
	{
		Session session = sessionFactory.getCurrentSession();
		session.save(tenant);
	}
	
	@Transactional
	public Tenant verifyUser(String user, String pass)

	{
		try {

			Query q = (Query) sessionFactory.getCurrentSession().createQuery(
					"from Tenant where username= :user and password= :pass");
			
			// q.setString("username", user);

			// q.setString("password", pass);

			q.setParameter("user", user);

			q.setParameter("pass", pass);

			Tenant queryResult = (Tenant) q.uniqueResult();

			System.out.println(queryResult.getTenant_id());

			if (queryResult != null)

			{

				System.out.println("Database contents delivered..."
						+ queryResult);

				return queryResult;

			}

		} catch (Exception exception) {

			System.out.println("Exception occured..." + exception);

		}

		return null;

	}

	

	@Transactional
	public ArrayList<String> getVariants()
	{
		
		ArrayList<String> teams = new ArrayList<String>();
		List<DbVariants> list = (List<DbVariants>) sessionFactory.getCurrentSession().createQuery("from DbVariants").list();
		for(int i =0;i<list.size();i++)
		{
			
			System.out.println("Variant Name"+ list.get(i).getVname());
			teams.add(list.get(i).getVname());
			
		}
		return teams;
		
	}

	@Transactional
	public String getCompany(int tenantID)
	{
		Query q = (Query) sessionFactory.getCurrentSession().createQuery("from Tenant where tenant_id =:tenant_ID");
		q.setInteger("tenant_ID", tenantID);
		Tenant queryResult = (Tenant) q.uniqueResult();
		String company = queryResult.getTenantCompany();
		System.out.println("In getcompany()  "+queryResult +" "+ company);
		if(queryResult !=null)
		{
		 return company;
		 }
		else 
			return null;
	}
	@Transactional
	public boolean insertVariants(Variants variants, int tenantId) 
	{ 
		Session session = sessionFactory.getCurrentSession();
		
		boolean success = false;
		// TODO Auto-generated method stub
		System.out.println("getCurrentSession  "+sessionFactory.getCurrentSession());
		String Query = "Delete from TenantVariants where tid="+tenantId;
		Query q = session.createQuery(Query);
		int rows = q.executeUpdate();
		
		List<String> items = variants.getFeatureList();
		//Session session = sessionFactory.getCurrentSession();
		
		for (String item: items)
		{
			TenantVariants tv = new TenantVariants();
			tv.setVariantTenantid(tenantId);
			tv.setVariantName(item);
			tv.setVariantSelected("1");
			tv.setTenantvariantId(null);
			session.save(tv);
		}
		success = true;
		return success;
	}

	@Transactional
	public ArrayList<String> getTenantVariants(int tenantId)
	{
		ArrayList<TenantVariants> tvariants =   (ArrayList<TenantVariants>) sessionFactory.getCurrentSession().createQuery("from TenantVariants where variantTenantid="+tenantId+"").list();
		
	      Variants var = new Variants();
	      ArrayList<String> selectedvar=new ArrayList<String>();
	      for(int i=0;i<tvariants.size();i++)
	      {
	    	 
	    	 selectedvar.add(tvariants.get(i).getVariantName());
	      }
	      
	     
		return selectedvar;
	}
	
}
