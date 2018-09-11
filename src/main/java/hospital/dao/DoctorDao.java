package hospital.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import hospital.enity.Doctor;
import hospital.enity.Yuyue;

public interface DoctorDao {

	Doctor queryDoctorInfo(@Param(value="name")String name, @Param(value="password")String password);

	void saveDoctorInfo(Map<String, Object> map);

	List<Yuyue> allYy(@Param(value="name")String name, @Param(value="isok")String isok);

	void yuyueSuccess(@Param(value="yybh")String yybh,@Param(value="isok")String isok);

	void yuyueFail(@Param(value="yybh")String yybh,@Param(value="isok")String isok);

	List<Yuyue> searchYyBydt(@Param(value="name")String name,@Param(value="date") String date);

	List<Yuyue> allJz(@Param(value="name")String name, @Param(value="isok")String isok);

	List<Yuyue> allJiuJz(@Param(value="name")String name,@Param(value="isok") String isok, @Param(value="isok2")String isok2);

	List<Doctor> queryByDepartment(@Param(value="department")String department);

}
