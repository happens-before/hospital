package hospital.service;

import java.util.List;

import hospital.enity.Doctor;
import hospital.enity.User;
import hospital.enity.Yuyue;

public interface CustomerService {

	void saveUserInfo(String tname, String sex, String phone, int age, String email, String name, String password);

	User queryUserInfo(String name, String password);

	List<Doctor> showdirector();

	List<Doctor> searchDoctor(String department);

	List<Doctor> searchAllDoctor();

	List<Doctor> yuyueSearchDoctor(String dname);

	List<Doctor> queryDoc(int jnumber);

	void insertYuyue(int jnumber, String dname, String cname, String ydate, String ytime, String sex, String phone,
			String isok, int age, int yyh);

	List<Yuyue> searchAllYuyue(String cname);

	List<Yuyue> searchYuyueOne(String cname, String isok);

	List<Yuyue> searchByDate(String cname, String date);

}
