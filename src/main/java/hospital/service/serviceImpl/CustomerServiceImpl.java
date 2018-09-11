package hospital.service.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hospital.dao.CustomerDao;
import hospital.enity.Doctor;
import hospital.enity.User;
import hospital.enity.Yuyue;
import hospital.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService{
	
	@Autowired
	private CustomerDao customerDao;

	@Override
	public void saveUserInfo(String tname, String sex, String phone, int age, String email, String name,
			String password) {
		// TODO Auto-generated method stub
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("tname", tname);
		map.put("sex", sex);
		map.put("phone", phone);
		map.put("age", age);
		map.put("email", email);
		map.put("name", name);
		map.put("password", password);
		
		customerDao.saveUserInfo(map);
	}

	@Override
	public User queryUserInfo(String name, String password) {
		// TODO Auto-generated method stub
		return customerDao.queryUserInfo(name,password);
	}

	@Override
	public List<Doctor> showdirector() {
		// TODO Auto-generated method stub
		return customerDao.showdirector();
	}

	@Override
	public List<Doctor> searchDoctor(String department) {
		// TODO Auto-generated method stub
		return customerDao.searchDoctor(department);
	}

	@Override
	public List<Doctor> searchAllDoctor() {
		// TODO Auto-generated method stub
		return customerDao.searchAllDoctor();
	}

	@Override
	public List<Doctor> yuyueSearchDoctor(String dname) {
		// TODO Auto-generated method stub
		return customerDao.yuyueSearchDoctor(dname);
	}

	@Override
	public List<Doctor> queryDoc(int jnumber) {
		// TODO Auto-generated method stub
		return customerDao.queryDoc(jnumber);
	}

	@Override
	public void insertYuyue(int jnumber, String dname, String cname, String ydate, String ytime, String sex,
			String phone, String isok,int age,int yyh) {
		// TODO Auto-generated method stub
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("jnumber", jnumber);
		map.put("dname", dname);
		map.put("cname", cname);
		map.put("ydate", ydate);
		map.put("ytime", ytime);
		map.put("sex", sex);
		map.put("phone", phone);
		map.put("isok", isok);
		map.put("age", age);
		map.put("yyh", yyh);
		
		customerDao.insertYuyue(map);
	}

	@Override
	public List<Yuyue> searchAllYuyue(String cname) {
		// TODO Auto-generated method stub
		return customerDao.searchAllYuyue(cname);
	}

	@Override
	public List<Yuyue> searchYuyueOne(String cname, String isok) {
		// TODO Auto-generated method stub
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("cname", cname);
		map.put("isok", isok);
		
		return customerDao.searchYuyueOne(map);
	}

	@Override
	public List<Yuyue> searchByDate(String cname, String date) {
		
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("cname", cname);
		map.put("date", date);
		
		return customerDao.searchByDate(map);
	}


}
