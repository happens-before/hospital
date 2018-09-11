package hospital.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import hospital.enity.News;
import hospital.enity.User;


public interface LoginDao {

	List<User> logincheck(Map map);

	void registerUser(Map map);

	void insertNews(Map<String, Object> map);

	List<News> allInfo();

	List<News> watchNews(@Param(value="newsId")String newsId);

}
