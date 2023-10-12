package action.user;


import action.BaseAction;
import dao.UserDao;
import entity.User;
import util.Factory;


public class LoginAction extends BaseAction{
	private String username;
	private String password;
	private String imageCode;
	private String error;
	private User user;
	
	public String execute() throws Exception{
		if(!imageCode.equals(session.get("sRand"))){
			error="验证码错误！";
			return "imageCode_error";
		}
		UserDao userDao=(UserDao) Factory.getInstance("UserDao");
		user=userDao.findByUsername(username);
		if(user==null){
			request.put("username_error", "用户名不存在");
			return "username_error";
		}else if(!user.getPassword().equals(password)){
				request.put("password_error", "用户名密码错误");
				return "password_error";
			}else{
				session.put("userInfo", user.getId());
				return "success";
			}
		
	}
	
	

	public String getError() {
		return error;
	}



	public void setError(String error) {
		this.error = error;
	}



	public String getImageCode() {
		return imageCode;
	}



	public void setImageCode(String imageCode) {
		this.imageCode = imageCode;
	}



	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
