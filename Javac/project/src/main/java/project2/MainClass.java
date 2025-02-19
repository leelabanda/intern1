package project2;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class MainClass {
	public static void main(String args[]) {
		SessionFactory sessionFactory=HibernateUtil.getSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		Login obj=new Login();
		obj.setUser("Jin");
		obj.setPassword("aa");
		session.save(obj);
		tx.commit();
		System.out.println("Saved");
		session.close();
	}

}
