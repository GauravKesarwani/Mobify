package com.cmpe281.app05;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;


/**
 * Handles requests for the application home page.
 */

@Controller
@SessionAttributes("companyName")

public class HomeController 
{
	@Autowired CustDao custDao;
	@Autowired VendorDao vendordao;
	@Autowired MobileShopDAO mobileDAO;
	@Autowired ReviewDao revDAO;
	@Autowired OrderDao ordDao;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String hello()
	{
		return "login";
	}

	@RequestMapping(value = "/register")
	public String inputUser(Model model)
	{
	logger.info("Inside register request mapping will return registration page");
	model.addAttribute("tenant", new Tenant());
	return "registration";
	}
	
	@RequestMapping(value = "/user_save")
	public ModelAndView saveUser(Tenant tenant,Model m)
	{	
		ModelAndView mav = new ModelAndView("login");
		System.out.println("Tenant"+tenant);
		if(tenant != null)
	
		vendordao.registerTenant(tenant);
		logger.info("Saving User");
	/**	List<String> teams = new ArrayList<String>();
		teams.add("Track Your Order");
		teams.add("Find A Reatiler");
		teams.add("Buy Accessories");
		teams.add("Review Blog or Feedback");
		teams.add("Compare Phones");
		mav.addObject("featureList", teams);
		mav.addObject("Variants", new Variants());
		mav.addObject("companyName",tenant.getTenantCompany());**/
		//m.addAttribute("companyname", tenant.getTenantCompany());
		return mav;
	}
	

	@RequestMapping(value="/custsignup")
	public String signup(Model model)
	{
		model.addAttribute("customer",new Customer());
		return "custsignup";
	}
	
	@RequestMapping(value="/register_cust")
 /*	public ModelAndView register_cust(@RequestParam("fname") String fname, @RequestParam("lname") String lname, 
		@RequestParam("address") String address, @RequestParam("emailid") String emailid,
		@RequestParam("phoneno") String phoneno, @RequestParam("password") String password, @RequestParam("cpassword")
		String cpassword, Customer customer, Model model)
*/	
	public ModelAndView register_cust(Customer customer, HttpSession session )
	{
		
		logger.info(" " + customer);
		ModelAndView mav = new ModelAndView("login");
		if(customer != null)
			customer.setTenant((Integer)session.getAttribute("tenantID"));
		    custDao.registerCust(customer);
	    	return mav;
	}

	@RequestMapping(value = "/sign_in")
	public String custVerification(Model m,HttpServletRequest request, HttpServletResponse response,HttpSession session)
	{
		String username = request.getParameter("custID");
		System.out.println("Customer user name : "+username);
		String password = request.getParameter("password");
		//verify if customer exists already in database
		String result = custDao.verifyCust(username,password);
		
		if(result.equals("user does not exist"))
		{
			System.out.println("Prompt customer to sign up");
			return "home";
			
			
		}else
			if(result.equals("user exist"))
			{
				System.out.println("Sign In succsessful");
				session.setAttribute("cust_signedin", username);
				return "home";
			}
			else
				if(result.equals("invalid password"))
				{
					System.out.println("password invalid");
				}	return "home";
	}
	
	@RequestMapping(value="/phones",method=RequestMethod.GET)
	public String buyPhones(@RequestParam("category") String category, Model model, HttpSession session)
	{
		int tenantID = (Integer) session.getAttribute("tenantID");
		System.out.println(" Samsung Category");
		List<Mobile> MobilesCat = mobileDAO.Phones(tenantID,category);
		model.addAttribute("Category", MobilesCat);
		return "list";
	}
	
	
	 @RequestMapping(value="/Cart")
	 public String ShowmeCart(HttpServletRequest request,Model model)
	 {
		 HttpSession session=request.getSession();
		  if(null!=session.getAttribute("cart"))
		  {
			  ArrayList<cartBean> shopCart=(ArrayList<cartBean>) session.getAttribute("cart");
			  if(shopCart.size()>0)
			  {
				  System.out.println("inside cart method and now its gonig to redirect");
				cartBean cb=shopCart.get(0);
				model.addAttribute("product_id",cb.getProduct_id());
				model.addAttribute("product_name",cb.getProduct_name());
				model.addAttribute("price",cb.getPrice());
				model.addAttribute("tenantid",cb.getTenantid());
				return "shoppingCart";
			  }
			  else{
				  return "EmptyCart";
			  }
		  }
		 
		 return "EmptyCart";
	 }
	 
	
	
	 @RequestMapping(value="/shoppingCart")
	 public String shoppingCart(@RequestParam("product_id") int product_id,@RequestParam("product_name") String product_name, @RequestParam("price") String price, @RequestParam("tenantid") int tenantid,Model model,HttpServletRequest request)
	 {
		 logger.info("Rohit---inside the shoppingCart");
		 model.addAttribute("product_id",product_id);
		 model.addAttribute("product_name",product_name);
		 model.addAttribute("price",price);
		 model.addAttribute("tenantid", tenantid);
		
		HttpSession session=request.getSession();
		if(null==request.getAttribute("cart")){
			ArrayList<cartBean> shopCart=new ArrayList<cartBean>();
		cartBean cb=new cartBean();
		cb.setProduct_id(product_id);
		cb.setProduct_name(product_name);
		cb.setPrice(price);
		cb.setTenantid(tenantid);
		shopCart.add(cb);
		session.setAttribute("cart", shopCart);
		}
		else
		{
			ArrayList<cartBean> shopCart=new ArrayList<cartBean>();
			shopCart=(ArrayList<cartBean>) session.getAttribute("cart");
			cartBean cb=new cartBean();
			cb.setProduct_id(product_id);
			cb.setProduct_name(product_name);
			cb.setPrice(price);
			cb.setTenantid(tenantid);
			shopCart.add(cb);
			session.setAttribute("cart", shopCart);
		}
		
		
	// will need to have customer information as well.
		 return "shoppingCart";
	 }
	
	
	// for specifications...
	
		@RequestMapping(value="/Buy Accesories",method=RequestMethod.GET)
		public String showAccessories(Model model, HttpSession session)
		{
			System.out.println("Inside ShowAccessories");
			List<Accesories> accessories = mobileDAO.getAccessories((Integer)session.getAttribute("tenantID"));
		
			model.addAttribute("accessories", accessories);
		
			return "accessories";
		}
	
	@RequestMapping(value="/tablets", method=RequestMethod.GET)
	public String buyTablets(Model model){
	System.out.println("Inside buy Tablets method");
	List<Mobile> TabletsCat = mobileDAO.Tablets();
	System.out.println(TabletsCat);
	model.addAttribute("Category", TabletsCat);
	return "list";
		
	}
	
	 @RequestMapping(value = "/ProductDetails")
	 //   public String ProductDetails(@RequestParam("product_id") String product_id, @RequestParam("product_name") String product_name, @RequestParam("product_spec") String product_spec, @RequestParam("price") int price, @RequestParam("tenantid") int tenantid, @RequestParam("category") String prod_category, @RequestParam("image") String image, Model model) 
	    public String ProductDetails(@RequestParam("product_id") int product_id, @RequestParam("product_name") String product_name, @RequestParam("price") String price, @RequestParam("tenantid") int tenantid,@RequestParam("prod_category") String category, @RequestParam("image") String image, Model model)   
	    {
	     	model.addAttribute("product_id", product_id);
	    	model.addAttribute("product_name", product_name);
	    
	    	model.addAttribute("price", price);
	    	model.addAttribute("tenantid", tenantid);
	    	model.addAttribute("prod_category", category);
	 
	    	model.addAttribute("prod_image", image);
			return "productDetails";
	    }
	
	 @RequestMapping(value = "/accesoriesDetails", method = RequestMethod.POST)
	 public String accesoriesDetails(@RequestParam("accessid") int accessid,@RequestParam("accessImage") String accessImage, @RequestParam("accessname") String accessname, @RequestParam("accessSpecs") String accessSpecs, @RequestParam("accessprice") String accessprice,@RequestParam("tenantid") int tenantid, Model model)
	 {
		 System.out.println("image ");
		 model.addAttribute("accessImage", accessImage);
		 model.addAttribute("accessid", accessid);
		 model.addAttribute("accessname", accessname);
		 model.addAttribute("accessSpecs", accessSpecs);
		 model.addAttribute("accessprice", accessprice);
		 model.addAttribute("tenantid", tenantid);
		 
		 return "accessoriesDetail";
	 }
	 

	@RequestMapping(value="/search_phone", method = RequestMethod.POST)
	public String SearchPhone(Mobile mobile, Model model, HttpSession session)
	{
		
		String searchString = mobile.getProd_name();
		System.out.println("Product Name"+ searchString);
		int tenantId = (Integer)session.getAttribute("tenantID");
		System.out.println("tenant Id:::::"+ tenantId);
		List<Mobile> SearchResults = mobileDAO.Dosearch(searchString,tenantId);
		model.addAttribute("searchresults",SearchResults);
		return "search_results";
	}
		
	
	@RequestMapping(value="/Track Your Order")
	public String TrackOrder()
	{
		logger.info("Inside track your order");
		
		return "TrackOrder";
	}
	@RequestMapping(value="/home.html")
	public String processVariants(@ModelAttribute Variants variants, Mobile mobile, Tenant tenant, Model m,HttpSession session)
	{
		int tenantId = (Integer) session.getAttribute("tenantID");
		String company=mobileDAO.getJsp(tenantId);
		System.out.println("Selected Variants" + variants.getFeatureList());
		boolean sucess = vendordao.insertVariants(variants, tenantId);
		m.addAttribute("companyname", tenant.getTenantCompany());
	    ArrayList<String> variantme= vendordao.getTenantVariants(tenantId);
		session.setAttribute("variants", variantme);
		ArrayList<String> teams=vendordao.getVariants();
		System.out.println("TEAM  "+teams.size());
		session.setAttribute("team", teams);
		session.setAttribute("companyname", "google");
		m.addAttribute("variants", variantme);
		m.addAttribute("companyName", "google");
		m.addAttribute("teams",teams);
		System.out.println("m.variants "+m.containsAttribute("variants"));
		
		return "redirect:"+company.toLowerCase();
}
	
	
	@RequestMapping(value="/payment")
	 public String payment(Model model,HttpServletRequest request)
	 {
		 HttpSession session=request.getSession();
		ArrayList<cartBean> cbean=(ArrayList<cartBean>)session.getAttribute("cart");
		for(int i=0;i<cbean.size();i++)
		{
		    System.out.println("bean is "+cbean.get(i).getProduct_id());
		    System.out.println("bean is "+cbean.get(i).getProduct_name());
		    System.out.println("bean is "+cbean.get(i).getTenantid());
		    System.out.println("bean is "+cbean.get(i).getPrice());
		}
		
		 return "payment";
		 
	 }
	
	
	//Login
	
	@RequestMapping(value = "/verify_user")
	public String userVerification(@ModelAttribute Variants variants,Model m,HttpServletRequest request, HttpServletResponse response,HttpSession session)
	{
		String username = request.getParameter("tenantID");
		System.out.println("Tenant user name : "+username);
		String password = request.getParameter("password");
		Tenant tenant = vendordao.verifyUser(username, password);
		
		if(tenant != null)
		{
		System.out.println("validuser :"+tenant.getTenantCompany());
		m.addAttribute("validuser", tenant.getTenantCompany());
        session.setAttribute("tenantID", tenant.getTenant_id());
        
       List<String> teams =  vendordao.getVariants();
       System.out.println("vendorDao result"+teams);		
		m.addAttribute("featureList",teams);
		m.addAttribute("Variants", new Variants());
		return "index";
		}else
			return "login";
		
	}
	
	//changes done
		@RequestMapping(value="/Compare Phones",method=RequestMethod.GET)
		public String CompareFeatures(Model model, HttpSession session)
		{	int tenant_id= (Integer)session.getAttribute("tenantID");
			//int tenant_id=2;// temporary hard coding the value of tenant_id
			List<Mobile> ProdList = mobileDAO.productList(tenant_id);
			//System.out.println("checkkkkk"+ProdList.get(0).getProd_name());
			model.addAttribute("productList", ProdList);
			return "compare_home";
		}
		
		@RequestMapping(value = "/compare", method = RequestMethod.GET)
		public String ProductDetails(Model model, HttpServletRequest request, HttpServletResponse response){
			String product_name1=request.getParameter("prod_name1");
			String product_name2=request.getParameter("prod_name2");
			List<prod_spec> productspec1 = mobileDAO.productSpecification(product_name1);
			List<prod_spec> productspec2 = mobileDAO.productSpecification(product_name2);
			model.addAttribute("prod_spec1", productspec1);
			model.addAttribute("prod_spec2", productspec2);
			return "compare";
			
		}	

		
		
		@RequestMapping(value = "/Reviews")
		public String redirect(){
			return "redirect:/phones?category=phone";
		}
		//changes done
	
		

		   @RequestMapping(value = "/review/{id}")

		    public String reviewPhones(Model model, @PathVariable int id,HttpServletRequest request,HttpSession session) {

		System.out.println("inside review makesssssssssss ");
			   List<Review> listReviews = revDAO.Phones(id);
			   session.setAttribute("modelno",id); 
			   model.addAttribute("reviewList", listReviews);
			   	return "reviewMake";
		    }
		
		   @RequestMapping(value="/cancelPayment")
		   public String cancelPayment()
		   {
			   return "redirect:phones"; 
		   }
		   
		   
		   
		   @RequestMapping(value="/review/addreviews")
		   public String addreviews(Model model,@ModelAttribute Review review)
		   {
			  return "review";
		   }
		   
		   @RequestMapping(value="/review/save_review")
		   public String save_review(Review r,Model m,HttpServletRequest request, HttpServletResponse response,HttpSession session){
			   
			   int id = (Integer) session.getAttribute("modelno");
			   System.out.println("MODELNO:: Inside save_review" + id);
			   r.setModelno(id);
			   m.addAttribute("review", new Review());
				System.out.println("ddddddddddddddddddd              "+r.getFirstname());
			   boolean result = revDAO.saveReviewsToProduct(r);
			   if (result){
				   
				   System.out.println(result);
				   
				   return "redirect:/review/"+id;  
			   }
			   else{
				   
				   return  null;
				   
			   }
		   }
		
		
		   @RequestMapping(value="/Find A Retailer", method=RequestMethod.GET)

		    public String findRetailers(Model m, HttpServletRequest request,HttpSession session)

		{

		        session.setAttribute("companyname", vendordao.getCompany((Integer)session.getAttribute("tenantID")));


		        return "findRetailer";

		  }
		   @RequestMapping(value="/Track Your Order",method=RequestMethod.GET)
		    public String TrackOrder(Model model)
		    {
		        logger.info("Inside track your order");
		        
		        return "tracking";
		    }
		    
		    @RequestMapping(value="/orders",method=RequestMethod.GET)
		    public String displayOrders(Model model,@RequestParam("custID") int custId)
		    {
		        List<Order> o = ordDao.Orders(custId);
		        model.addAttribute("orders", o); 
		        
		        return "orders";
		        
		    }
		   
		    @RequestMapping(value="/google")
			public String showgoogle(@ModelAttribute Variants variants, Mobile mobile, Tenant tenant, Model m,HttpSession session)
			{
				int tenanats= mobileDAO.getTenantId("google");
			    ArrayList<String> variantme= vendordao.getTenantVariants(tenanats);
				session.setAttribute("variants", variantme);
				ArrayList<String> teams=vendordao.getVariants();
				session.setAttribute("team", teams);
				session.setAttribute("companyname", "google");
			     m.addAttribute("variants", variantme);
				 m.addAttribute("companyName", "google");
				 m.addAttribute("team",teams);
				return "google";
			}

		@RequestMapping(value="/sony")
				public String showsony(@ModelAttribute Variants variants, Mobile mobile, Tenant tenant, Model m,HttpSession session)
				{
					 int tenanats= mobileDAO.getTenantId("sony");
					 ArrayList<String> variantme= vendordao.getTenantVariants(tenanats);
					 session.setAttribute("variants", variantme);
					
					//Variants variantme= vendordao.getTenantVariants(tenanatId);
					// ArrayList<String> variantme= vendordao.getTenantVariants(tenanats);
					 session.setAttribute("variants", variantme);
					
					 ArrayList<String> teams=vendordao.getVariants();
					 session.setAttribute("teams", teams);
					 session.setAttribute("companyName", "sony");
					 m.addAttribute("variants", variantme);
					 m.addAttribute("companyName", "sony");
					 m.addAttribute("team",teams);
					 
					return "sony";
				}
				
		@RequestMapping(value = "/nokia")
		public String shownokia(@ModelAttribute Variants variants, Mobile mobile,
				Tenant tenant, Model m, HttpSession session) {
			int tenanats = mobileDAO.getTenantId("nokia");

			ArrayList<String> variantme = vendordao.getTenantVariants(tenanats);
			session.setAttribute("variants", variantme);

			ArrayList<String> teams = vendordao.getVariants();
			session.setAttribute("teams", teams);
			session.setAttribute("companyName", "nokia");
			m.addAttribute("variants", variantme);
			m.addAttribute("companyName", "nokia");
			m.addAttribute("team", teams);

			return "nokia";
		}

				@RequestMapping(value="/motorola")
				public String showmotorola(@ModelAttribute Variants variants, Mobile mobile, Tenant tenant, Model m,HttpSession session)
				{
					 int tenanats= mobileDAO.getTenantId("motorola");
					 
					
					
					
					 ArrayList<String> variantme= vendordao.getTenantVariants(tenanats);
					
					 session.setAttribute("variants", variantme);
					
					 ArrayList<String> teams=vendordao.getVariants();
					 session.setAttribute("teams", teams);
					 session.setAttribute("companyName", "motorola");
					 m.addAttribute("variants", variantme);
					 m.addAttribute("companyName", "motorola");
					 m.addAttribute("team",teams);
					 
					return "motorola";
				}
				
				@RequestMapping(value="/apple")
				public String showapple(@ModelAttribute Variants variants, Mobile mobile, Tenant tenant, Model m,HttpSession session)
				{
					 int tenanats= mobileDAO.getTenantId("apple");
					 
								
					 ArrayList<String> variantme= vendordao.getTenantVariants(tenanats);
					 
					 session.setAttribute("variants", variantme);
					
					
					 ArrayList<String> teams=vendordao.getVariants();
					 session.setAttribute("teams", teams);
					 session.setAttribute("companyName", "apple");
					 m.addAttribute("variants", variantme);
					 m.addAttribute("companyName", "apple");
					 m.addAttribute("team",teams);
					 
					return "apple";
				}
				@RequestMapping(value="/samsung")
				public String showsamsung(@ModelAttribute Variants variants, Mobile mobile, Tenant tenant, Model m,HttpSession session)
				{
					 int tenanats= mobileDAO.getTenantId("samsung");
					 
					
					 ArrayList<String> variantme= vendordao.getTenantVariants(tenanats);
					
					 session.setAttribute("variants", variantme);
					
					
					 ArrayList<String> teams=vendordao.getVariants();
					 session.setAttribute("teams", teams);
					 session.setAttribute("companyName", "Samsung");
					 m.addAttribute("variants", variantme);
					 m.addAttribute("companyName", "Samsung");
					 m.addAttribute("team",teams);
					 
					return "samsung";
				}
				@RequestMapping(value="/About")
				public String displayAboutUs(HttpSession session)
				{
					
					System.out.println("INSIDE ABOUT");
					session.setAttribute("companyname", vendordao.getCompany((Integer)session.getAttribute("tenantID")));
					 
					return "about";
				}
				
				
		   
}
