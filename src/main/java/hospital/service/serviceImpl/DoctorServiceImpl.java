package hospital.service.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hospital.dao.DoctorDao;
import hospital.enity.Doctor;
import hospital.enity.Yuyue;
import hospital.service.DoctorService;

@Service
public class DoctorServiceImpl implements DoctorService{
	
	@Autowired
	private  DoctorDao  doctorDao;

	@Override
	public Doctor queryDoctorInfo(String name, String password) {
		// TODO Auto-generated method stub
		return doctorDao.queryDoctorInfo(name,password);
	}

	@Override
	public void saveDoctorInfo(String department, String position, String phone, int age, String email, String name,
			String password) {
		// TODO Auto-generated method stub
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("department", department);
		map.put("position", position);
		map.put("phone", phone);
		map.put("age", age);
		map.put("email", email);
		map.put("name", name);
		map.put("password", password);
		
		doctorDao.saveDoctorInfo(map);
		
	}

	@Override
	public List<Yuyue> allYy(String name,String isok) {
		// TODO Auto-generated method stub
		return doctorDao.allYy(name,isok);
	}

	@Override
	public void yuyueSuccess(String yybh,String isok) {
		// TODO Auto-generated method stub
		doctorDao.yuyueSuccess(yybh,isok);
	}

	@Override
	public void yuyueFail(String yybh, String isok) {
		// TODO Auto-generated method stub
		doctorDao.yuyueFail(yybh,isok);
	}

	@Override
	public List<Yuyue> searchYyBydt(String name, String date) {
		// TODO Auto-generated method stub
		return doctorDao.searchYyBydt(name,date);
	}

	@Override
	public List<Yuyue> allJz(String name, String isok) {
		// TODO Auto-generated method stub
		return doctorDao.allJz(name,isok);
	}

	@Override
	public List<Yuyue> allJiuJz(String name, String isok,String isok2) {
		// TODO Auto-generated method stub
		return doctorDao.allJiuJz(name,isok,isok2);
	}

	@Override
	public List<Doctor> queryByDepartment(String department) {
		// TODO Auto-generated method stub
		return doctorDao.queryByDepartment(department);
	}

}
