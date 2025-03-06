package com.pack;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class Main {
	public static void main(String[] args) {
		Employee emp1=new Employee();
		emp1.setEmid(3);
		emp1.setName("Hell");
		emp1.setDesig("Training");
		Configuration config=new Configuration();
		config.addAnnotatedClass(com.pack.Employee.class);
		config.configure();
		SessionFactory factory=config.buildSessionFactory();
		Session session=factory.openSession();
		Transaction transaction=session.beginTransaction();
		session.persist(emp1);
		transaction.commit();
		session.close();
		factory.close();
	}
}
