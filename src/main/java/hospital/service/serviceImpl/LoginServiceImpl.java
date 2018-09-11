package hospital.service.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hospital.dao.LoginDao;
import hospital.enity.News;
import hospital.enity.User;
import hospital.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	private LoginDao loginDao;

	@Override
	public List<User> logincheck(String name, String password) {
		
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("name", name);
		map.put("password", password);
		
		return loginDao.logincheck(map);
	}

	@Override
	public void registerUser(String name, String password, int roleId, String definition) {
		
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("name",name );
		map.put("password",password );
		map.put("roleId",roleId );
		map.put("definition", definition);
		
		loginDao.registerUser(map);
	}

	@Override
	public void insertNews(String title, String publisher, String body, String time, int newsId) {
		// TODO Auto-generated method stub
		Map<String, Object> map=new HashMap<String, Object>();
		
		map.put("title",title );
		map.put("publisher",publisher );
		map.put("body",body );
		map.put("time", time);
		map.put("newsId", newsId);
		
		loginDao.insertNews(map);
	}

	@Override
	public List<News> allInfo() {
		// TODO Auto-generated method stub
		return loginDao.allInfo();
	}

	@Override
	public List<News> watchNews(String newsId) {
		// TODO Auto-generated method stub
		return loginDao.watchNews(newsId);
	}

}
