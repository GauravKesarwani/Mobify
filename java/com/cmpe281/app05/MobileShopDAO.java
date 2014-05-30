package com.cmpe281.app05;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.Session;

@Repository

public class MobileShopDAO
{
	@Autowired private SessionFactory sessionFactory;
	
/*	@Transactional
	public List<Mobile> Phones(int tenantid, String category)
	{	
		//String hql = "Select count(*) from Mobile";
		//Query q = sessionFactory.openSession().createQuery(hql);
		
		List<Mobile> mobiles = sessionFactory.getCurrentSession().createQuery("from Mobile where category=' "+ category +"' and tenantid +="'").list();
	//	return ((Long) q.uniqueResult()).intValue();
		System.out.println(mobiles.size());
		
		return mobiles;
	}*/
	
	@Transactional
    public List<Mobile> Phones(int tenantid, String category)
    {    
        List<Mobile> mobiles = sessionFactory.getCurrentSession().createQuery("from Mobile where category = '" + category + "' AND tenantid= '" + tenantid + "'").list();
    //    return ((Long) q.uniqueResult()).intValue();
        System.out.println("Mobile"+ mobiles.size());
        //System.out.println("Mobile String"+ mobiles.get(0).getPrice());
        return mobiles;
    }
	
	@Transactional
	public List<Accesories> getAccessories(int tenant_id)
	{	
		// Please take it from tenanat id session
		System.out.println("Inside getAccessories");
		List<Accesories> accessories = sessionFactory.getCurrentSession().createQuery("from Accesories where tenantid="+tenant_id+"").list();
		System.out.println("accessories = "+ accessories.size());
		//System.out.println("accessories String"+ accessories.get(0).getPrice());
		return accessories;
	}
	
	@Transactional
	public List<Mobile> Tablets(){
		
		List<Mobile> mobiles = sessionFactory.getCurrentSession().createQuery("from Mobile where category='tablet'").list();
		//	return ((Long) q.uniqueResult()).intValue();
			System.out.println("Mobile"+ mobiles.size());
			//System.out.println("Mobile String"+ mobiles.get(0).getPrice());
			return mobiles;
			}
	
	@Transactional
	public List<Mobile> Dosearch(String search,int tenantId){
		
		//Query q = (Query) sessionFactory.openSession().createQuery("from Mobile where prod_name= :search and tenantid =:tenandId");
		//q.setParameter("search", search);
		//q.setParameter("tenantId", tenantId);
		
		List<Mobile> mobiles = sessionFactory.getCurrentSession().createQuery("from Mobile where prod_name='"+search+"'"+ " and tenantid='"+tenantId+"'").list();
		System.out.println("Query Results:"+ mobiles);
		System.out.println("Results size:"+ mobiles.size());
		//System.out.println("Mobile"+mobiles.size());
		//System.out.println(mobiles.get(0).getProd_name());
		return mobiles;
		
		
	}
	
	//changes done
		@Transactional
		public List<prod_spec> productSpecification(String product_name){	
		
		List prodspec = sessionFactory.getCurrentSession().createQuery(" from prod_spec where prod_name='"+product_name+"'").list();
		return prodspec;
		
		}
		@Transactional
		public List<Mobile> productList(int tenant_id){	
		
		List prodList = sessionFactory.getCurrentSession().createQuery(" from Mobile where tenantid='"+tenant_id+"'").list();
		return prodList;
		}	
		// changes done
		@Transactional
		public int getTenantId(String companyname)
		{	
			// Please take it from tenanat id session
			
			//HashMap hm=new HashMap();
			
			int tenantId;
			 //Query q = (Query)sessionFactory.openSession().createQuery("from Tenant where company = :companyname");
			Query q = (Query)sessionFactory.getCurrentSession().createQuery("from Tenant where company = :companyname");
			 q.setParameter("companyname", companyname);
			 Tenant queryResult = (Tenant) q.uniqueResult();
				System.out.println("accessories = "+ queryResult.getTenant_id());
				 tenantId=queryResult.getTenant_id();
				// hm.put(tenantId, companyname);
			return tenantId;
				// return hm;
		}
		@Transactional
		public String getJsp(int tenantId)
		{
			//HashMap hm=new HashMap();
			//System.out.println("Inside GETJSP");
			 Query q = (Query)sessionFactory.getCurrentSession().createQuery("from Tenant where tenant_id = :tenant_id");
			 q.setParameter("tenant_id", tenantId);
			 Tenant queryResult = (Tenant) q.uniqueResult();
			 //hm.put(queryResult.getTenant_id(), queryResult.getTenantCompany());
			 return queryResult.getTenantCompany();
		}
	
}