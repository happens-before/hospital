package hospital.service;

import java.util.List;

import hospital.enity.Doctor;
import hospital.enity.Yuyue;

public interface DoctorService {

	Doctor queryDoctorInfo(String name, String password);

	void saveDoctorInfo(String department, String position, String phone, int age, String email, String name,
			String password);

	List<Yuyue> allYy(String name, String isok);

	void yuyueSuccess(String yybh, String isok);

	void yuyueFail(String yybh, String isok);

	List<Yuyue> searchYyBydt(String name, String date);

	List<Yuyue> allJz(String name, String isok);

	List<Yuyue> allJiuJz(String name, String isok, String isok2);

	List<Doctor> queryByDepartment(String department);

}
