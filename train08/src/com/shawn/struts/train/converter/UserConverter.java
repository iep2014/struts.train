package com.shawn.struts.train.converter;

import java.util.Map;
import org.apache.struts2.util.StrutsTypeConverter;
import com.shawn.struts.train.model.User;

public class UserConverter extends StrutsTypeConverter {

	public Object convertFromString(Map context, String[] values, Class toClass) {
		if (values.length > 1) {
			User[] result = new User[values.length];
			for (int i = 0; i < values.length; i++) {
				User user = new User();
				String[] userValues = values[i].split(",");
				user.setName(userValues[0]);
				user.setPass(userValues[1]);
				result[i] = user;
			}
			return result;
		} else {
			User user = new User();
			String[] userValues = values[0].split(",");
			user.setName(userValues[0]);
			user.setPass(userValues[1]);
			return user;
		}

	}

	@Override
	public String convertToString(Map context, Object o) {
		if (o instanceof User) {
			User user = (User) o;
			return "<" + user.getName() + "," + user.getPass() + ">";
		} else if (o instanceof User[]) {
			User[] users = (User[]) o;
			String result = "[";
			for (User user : users) {
				result += "<" + user.getName() + "," + user.getPass() + ">";
			}
			return result + "]";
		} else {
			return "";
		}

	}

}