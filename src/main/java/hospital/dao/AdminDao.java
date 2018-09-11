package hospital.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import hospital.enity.Hospital;
import hospital.enity.News;
import hospital.enity.Yuyue;

public interface AdminDao {

	Hospital queryHospitalInfo();

	void updateHospitalInfo(Map map);

	List<Yuyue> huanzheGuanli();

	List<Yuyue> queryBySelect(@Param(value="isok")String isok,@Param(value="department") String department);

	List<Yuyue> searchByDt(@Param(value="date")String date);

	List<Yuyue> queryByIsok(@Param(value="isok")String isok);

	List<Yuyue> queryByIsD(@Param(value="isok")String isok, @Param(value="date")String date);

	List<Yuyue> queryByAll(@Param(value="isok")String isok,@Param(value="date") String date, @Param(value="department")String department);

	List<Yuyue> queryByDepartment(@Param(value="department")String department);

	List<Yuyue> queryByDeD(@Param(value="department")String department,@Param(value="date")String date);

	List<News> newsInfo();

	void deleteNews(@Param(value="newsId")int newsId);

}
