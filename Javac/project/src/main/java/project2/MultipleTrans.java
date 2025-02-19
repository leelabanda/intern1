package project2;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
public class MultipleTrans {

	public static void main(String[] args) {
		Session session=null;
		 try
		    {
		 SessionFactory factory=HibernateUtil.getSessionFactory();
		  session=factory.openSession(); 
		   
		    Transaction tx=session.beginTransaction();
			 			 
			 Login obj=(Login) session.load(Login.class,1);
		 
			 obj.setPassword("Britto");
			 session.update(obj);
			 tx.commit();
			 tx=null;
			 session.close();
			 
				
				  System.out.println("Login Object now detatched"); //Reattach and update			 
		  }catch(Exception e){
			  System.out.println("exc "+e.getMessage());
			}finally{
				  session.close();
			 
			  }
	}
	
	}
