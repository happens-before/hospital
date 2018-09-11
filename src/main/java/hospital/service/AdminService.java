package hospital.service;

import java.util.List;

import hospital.enity.Hospital;
import hospital.enity.News;
import hospital.enity.Yuyue;

public interface AdminService {

	Hospital queryHospitalInfo();

	void updateHospitalInfo(String name, String address, String email, String telephone, String youbian, String header,
			String buildTime);

	List<Yuyue> huanzheGuanli();

	List<Yuyue> queryBySelect(String isok, String department);

	List<Yuyue> searchByDt(String date);

	List<Yuyue> queryByIsok(String isok);

	List<Yuyue> queryByIsD(String isok, String date);

	List<Yuyue> queryByAll(String isok, String date,String department);

	List<Yuyue> queryByDepartment(String department);

	List<Yuyue> queryByDeD(String department,String date);

	List<News> newsInfo();

	void deleteNews(int newsId);

}
