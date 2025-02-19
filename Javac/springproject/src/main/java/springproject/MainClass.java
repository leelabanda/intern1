package springproject;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;

public class MainClass {
	private static Message obj1;

	public static void main(String[] args) {
		//XmlBeanFactory context=new XmlBeanFactory(new ClassPathResource("First.xml"));
		ApplicationContext context=new FileSystemXmlApplicationContext("First.xml");
		Message obj=(Message) context.getBean("message");
		obj.setGreeting("Hello");
		
		  Message obj1=(Message) context.getBean("message"); 
		  obj1.setGreeting("Hi");
		 
		System.out.println(obj.getGreeting());
	 	System.out.println(obj1.getGreeting());
	}
}
