package hospital.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;

import hospital.enity.Hospital;
import hospital.enity.News;
import hospital.enity.User;
import hospital.enity.Yuyue;
import hospital.service.AdminService;

@Controller
@RequestMapping("/Admin")
public class AdminController {

	@Autowired
	private AdminService adminService;

	private Gson gson = new Gson();

	@RequestMapping("/queryHospitalInfo")
	public void queryHospitalInfo(HttpServletResponse response, Model model) {

		Hospital hospital = adminService.queryHospitalInfo();

		try {
			/* 设置格式为text/json；字符集为UTF-8 */
			response.setContentType("text/json; charset=utf-8");
			response.getWriter().print(gson.toJson(hospital));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@RequestMapping("/saveHospitalInfo")
	public void saveHospitalInfo(HttpServletRequest request, HttpServletResponse response) {

		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String telephone = request.getParameter("telephone");
		String youbian = request.getParameter("youbian");
		String header = request.getParameter("header");
		String buildTime = request.getParameter("buildTime");

		try {
			adminService.updateHospitalInfo(name, address, email, telephone, youbian, header, buildTime);
			response.getWriter().print("1" + "");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@RequestMapping("/huanzheGuanli")
	public String huanzheGuanli(Model model) {

		List<Yuyue> list = adminService.huanzheGuanli();

		model.addAttribute("tabledata", list);

		return "admin/huanzheManageTable";
	}

	@RequestMapping("/isokSelect")
	public String isokSelect(HttpServletRequest request, Model model) {

		String isok = request.getParameter("isok");
		String department = request.getParameter("department");
		String date = request.getParameter("date");

		if (department.equals("") && date.equals("")) {
			List<Yuyue> list = adminService.queryByIsok(isok);
			model.addAttribute("tabledata", list);
		}

		if (date.equals("") && !department.equals("")) {
			List<Yuyue> list = adminService.queryBySelect(isok, department);
			model.addAttribute("tabledata", list);
		}

		if (department.equals("") && !date.equals("")) {
			List<Yuyue> list = adminService.queryByIsD(isok, date);
			model.addAttribute("tabledata", list);
		}
		if (!department.equals("") && !date.equals("")) {
			List<Yuyue> list = adminService.queryByAll(isok, date, department);
			model.addAttribute("tabledata", list);
		}

		return "admin/huanzheManageTable";

	}

	@RequestMapping("/departmentSelect")
	public String departmentSelect(HttpServletRequest request, Model model) {

		String isok = request.getParameter("isok");
		String department = request.getParameter("department");
		String date = request.getParameter("date");

		if (isok.equals("") && date.equals("")) {
			List<Yuyue> list = adminService.queryByDepartment(department);
			model.addAttribute("tabledata", list);
		}

		if (isok.equals("") && !date.equals("")) {
			List<Yuyue> list = adminService.queryByDeD(department, date);
			model.addAttribute("tabledata", list);
		}

		if (date.equals("") && !isok.equals("")) {
			List<Yuyue> list = adminService.queryBySelect(isok, department);
			model.addAttribute("tabledata", list);
		}

		if (!date.equals("") && !isok.equals("")) {
			List<Yuyue> list = adminService.queryByAll(isok, date, department);
			model.addAttribute("tabledata", list);
		}

		return "admin/huanzheManageTable";

	}

	@RequestMapping("/searchByDt")
	public String searchByDt(HttpServletRequest request, Model model) {

		String isok = request.getParameter("isok");
		String department = request.getParameter("department");
		String date = request.getParameter("date");

		if (isok.equals("") && department.equals("")) {
			List<Yuyue> list = adminService.searchByDt(date);
			model.addAttribute("tabledata", list);
		}

		if (isok.equals("") && !department.equals("")) {
			List<Yuyue> list = adminService.queryByDeD(department, date);
			model.addAttribute("tabledata", list);
		}

		if (department.equals("") && !isok.equals("")) {
			List<Yuyue> list = adminService.queryByIsD(isok, date);
			model.addAttribute("tabledata", list);
		}

		if (!department.equals("") && !isok.equals("")) {
			List<Yuyue> list = adminService.queryByAll(isok, date, department);
			model.addAttribute("tabledata", list);
		}

		return "admin/huanzheManageTable";
	}

	@RequestMapping("/newsInfo")
	public String newsInfo(Model model) {

		List<News> list = adminService.newsInfo();
		model.addAttribute("tabledata", list);

		return "admin/newsManageTable";
	}

	@RequestMapping("/deleteNews")
	public void deleteNews(HttpServletRequest request, Model model, HttpServletResponse response) {

		int newsId = Integer.parseInt(request.getParameter("newsId"));

		try {
			adminService.deleteNews(newsId);
			response.getWriter().print("1" + "");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
