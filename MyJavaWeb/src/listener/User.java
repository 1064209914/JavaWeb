package listener;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

import lombok.Getter;
import lombok.Setter;
@Setter @Getter
public class User implements HttpSessionBindingListener {
			public String name;
			public String password;
	
	@Override
	public void valueBound(HttpSessionBindingEvent arg0) {
		System.out.println("绑定值的名字："+arg0.getName());

	}

	@Override
	public void valueUnbound(HttpSessionBindingEvent arg0) {
		System.out.println("移除的值的名字是："+arg0.getName());

	}

	
}
