package hospital.service.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hospital.dao.AdminDao;
import hospital.enity.Hospital;
import hospital.enity.News;
import hospital.enity.Yuyue;
import hospital.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminDao adminDao;

	@Override
	public Hospital queryHospitalInfo() {
		// TODO Auto-generated method stub
		return adminDao.queryHospitalInfo();
	}

	@Override
	public void updateHospitalInfo(String name, String address, String email, String telephone, String youbian,
			String header, String buildTime) {
		// TODO Auto-generated method stub
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("name", name);
		map.put("address", address);
		map.put("email", email);
		map.put("telephone", telephone);
		map.put("youbian", youbian);
		map.put("header", header);
		map.put("buildTime", buildTime);
		
		adminDao.updateHospitalInfo(map);
	}

	@Override
	public List<Yuyue> huanzheGuanli() {
		// TODO Auto-generated method stub
		return adminDao.huanzheGuanli();
	}

	@Override
	public List<Yuyue> queryBySelect(String isok, String department) {
		// TODO Auto-generated method stub
		return adminDao.queryBySelect(isok,department);
	}

	@Override
	public List<Yuyue> searchByDt(String date) {
		// TODO Auto-generated method stub
		return adminDao.searchByDt(date);
	}

	@Override
	public List<Yuyue> queryByIsok(String isok) {
		// TODO Auto-generated method stub
		return adminDao.queryByIsok(isok);
	}

	@Override
	public List<Yuyue> queryByIsD(String isok, String date) {
		// TODO Auto-generated method stub
		return adminDao.queryByIsD(isok,date);
	}

	@Override
	public List<Yuyue> queryByAll(String isok, String date,String department) {
		// TODO Auto-generated method stub
		return adminDao.queryByAll(isok,date,department);
	}

	@Override
	public List<Yuyue> queryByDepartment(String department) {
		// TODO Auto-generated method stub
		return adminDao.queryByDepartment(department);
	}

	@Override
	public List<Yuyue> queryByDeD(String department,String date) {
		// TODO Auto-generated method stub
		return adminDao.queryByDeD(department,date);
	}

	@Override
	public List<News> newsInfo() {
		// TODO Auto-generated method stub
		return adminDao.newsInfo();
	}

	@Override
	public void deleteNews(int newsId) {
		// TODO Auto-generated method stub
		adminDao.deleteNews(newsId);
	}

}
