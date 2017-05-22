package listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.eclipse.jdt.internal.compiler.ast.ThisReference;

/**
 * Application Lifecycle Listener implementation class SessionDemo
 *
 */
@WebListener
public class SessionDemo implements HttpSessionListener {
		public int count;
    /**
     * Default constructor. 
     */
    public SessionDemo() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent arg0)  { 
         count++;
         System.out.println(count);
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent arg0)  { 
         count--;
         System.out.println(count);
         System.out.println("销毁了");
    }
	
}
