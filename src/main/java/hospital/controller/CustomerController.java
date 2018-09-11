package hospital.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder.In;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;

import hospital.enity.Doctor;
import hospital.enity.User;
import hospital.enity.Yuyue;
import hospital.service.CustomerService;

@Controller
@RequestMapping("/Customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	private Gson gson = new Gson();

	@RequestMapping("/queryUserInfo")
	public void queryUserInfo(HttpServletResponse response, HttpSession session, Model model) {

		User userSession = (User) session.getAttribute("User");
		String name = userSession.getName();
		String password = userSession.getPassword();

		User user = customerService.queryUserInfo(name, password);

		try {
			/* 设置格式为text/json；字符集为UTF-8 */
			response.setContentType("text/json; charset=utf-8");
			response.getWriter().print(gson.toJson(user));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@RequestMapping("saveUserInfo")
	public void saveUserInfo(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		String tname = request.getParameter("tname");
		String sex = request.getParameter("sex");
		String phone = request.getParameter("phone");
		int age = Integer.valueOf(request.getParameter("age"));
		String email = request.getParameter("email");

		User userSession = (User) session.getAttribute("User");
		String name = userSession.getName();
		String password = userSession.getPassword();

		try {
			customerService.saveUserInfo(tname, sex, phone, age, email, name, password);
			response.getWriter().print("1" + "");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@RequestMapping("/showPage")
	public String showPage(HttpServletResponse response, Model model) {

		List<Doctor> list = customerService.showdirector();

		model.addAttribute("tabledata", list);

		return "customer/doctorTable";
	}

	@RequestMapping("/searchDoctor")
	public String searchDoctor(HttpServletRequest request, Model model) {

		String department = request.getParameter("department");

		List<Doctor> list = customerService.searchDoctor(department);

		model.addAttribute("tabledata", list);

		return "customer/doctorTable";

	}

	@RequestMapping("/yuyueguahao")
	public String yuyueguahao(Model model) {

		List<Doctor> list = customerService.searchAllDoctor();

		model.addAttribute("tabledata", list);

		return "customer/yuyueguahaoTable";

	}

	@RequestMapping("/yuyueSearchDoctor")
	public String yuyueSearchDoctor(HttpServletRequest request, Model model) {

		String dname = request.getParameter("dname");

		List<Doctor> list = customerService.yuyueSearchDoctor(dname);

		model.addAttribute("tabledata", list);

		return "customer/yuyueguahaoTable";

	}

	@RequestMapping("/yuyue")
	public void yuyue(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		int jnumber = Integer.valueOf(request.getParameter("jnumber"));
		String ydate = request.getParameter("ydate");
		String ytime = request.getParameter("ytime");

		List<Doctor> list = customerService.queryDoc(jnumber);
		String dname = list.get(0).getDname();

		int yyh = (int) ((Math.random() * 9 + 1) * 100000);

		String isok = "预约中";
		User userSession = (User) session.getAttribute("User");
		String cname = userSession.getTname();
		String sex = userSession.getSex();
		String phone = userSession.getPhone();
		int age = userSession.getAge();

		try {
			if (cname.equals("") || sex.equals("") || phone.equals("")) {
				response.getWriter().print("0" + "");
			} else if (ydate.equals("") || ytime.equals("")) {
				response.getWriter().print("2" + "");
			} else {
				customerService.insertYuyue(jnumber, dname, cname, ydate, ytime, sex, phone, isok, age, yyh);

				response.getWriter().print("1" + "");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@RequestMapping("yuyueguanli")
	public String yuyueguanli(Model model, HttpSession session) {

		User userSession = (User) session.getAttribute("User");
		String cname = userSession.getTname();

		List<Yuyue> list = customerService.searchAllYuyue(cname);

		model.addAttribute("tabledata", list);

		return "customer/yyManageTable";
	}

	@RequestMapping("yuyueIng")
	public String yuyueIng(Model model, HttpSession session) {

		User userSession = (User) session.getAttribute("User");
		String cname = userSession.getTname();

		String isok = "预约中";

		List<Yuyue> list = customerService.searchYuyueOne(cname, isok);

		model.addAttribute("tabledata", list);

		return "customer/yyManageTable";
	}

	@RequestMapping("yuyueSuc")
	public String yuyueSuc(Model model, HttpSession session) {

		User userSession = (User) session.getAttribute("User");
		String cname = userSession.getTname();

		String isok = "预约成功";

		List<Yuyue> list = customerService.searchYuyueOne(cname, isok);

		model.addAttribute("tabledata", list);

		return "customer/yyManageTable";
	}

	@RequestMapping("yuyueFai")
	public String yuyueFai(Model model, HttpSession session) {

		User userSession = (User) session.getAttribute("User");
		String cname = userSession.getTname();

		String isok = "预约失败";

		List<Yuyue> list = customerService.searchYuyueOne(cname, isok);

		model.addAttribute("tabledata", list);

		return "customer/yyManageTable";
	}

	@RequestMapping("/searchByDt")
	public String searchByDt(HttpServletRequest request, Model model, HttpSession session) {

		String date = request.getParameter("date");

		User userSession = (User) session.getAttribute("User");
		String cname = userSession.getTname();

		List<Yuyue> list = customerService.searchByDate(cname, date);

		model.addAttribute("tabledata", list);

		return "customer/yyManageTable";

	}

}
