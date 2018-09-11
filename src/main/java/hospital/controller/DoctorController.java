package hospital.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import hospital.enity.Doctor;
import hospital.enity.User;
import hospital.enity.Yuyue;
import hospital.service.DoctorService;

@Controller
@RequestMapping("/Doctor")
public class DoctorController {

	@Autowired
	private DoctorService doctorService;

	private Gson gson = new Gson();

	@RequestMapping("/queryDoctorInfo")
	public void queryDoctorInfo(HttpServletResponse response, HttpSession session, Model model) {

		User userSession = (User) session.getAttribute("User");
		String name = userSession.getName();
		String password = userSession.getPassword();

		Doctor doc = doctorService.queryDoctorInfo(name, password);

		try {
			/* 设置格式为text/json；字符集为UTF-8 */
			response.setContentType("text/json; charset=utf-8");
			response.getWriter().print(gson.toJson(doc));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@RequestMapping("/saveDoctorInfo")
	public void saveDoctorInfo(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		String department = request.getParameter("department");
		String position = request.getParameter("position");
		String phone = request.getParameter("phone");
		int age = Integer.valueOf(request.getParameter("age"));
		String email = request.getParameter("email");

		User userSession = (User) session.getAttribute("User");
		String name = userSession.getName();
		String password = userSession.getPassword();

		try {
			doctorService.saveDoctorInfo(department, position, phone, age, email, name, password);
			response.getWriter().print("1" + "");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@RequestMapping("/allYy")
	public String allYy(Model model, HttpSession session) {

		User userSession = (User) session.getAttribute("User");
		String name = userSession.getName();

		String isok = "预约中";

		List<Yuyue> list = doctorService.allYy(name, isok);

		model.addAttribute("tabledata", list);

		return "doctor/doctorYyManageTable";
	}

	@RequestMapping("/yySuccess")
	public void yySuccess(HttpServletRequest request, HttpServletResponse response) {

		String yybh = request.getParameter("yybh");
		String isok = "待确诊";

		try {
			doctorService.yuyueSuccess(yybh, isok);

			response.getWriter().print("1" + "");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@RequestMapping("/yyFail")
	public void yyFail(HttpServletRequest request, HttpServletResponse response) {

		String yybh = request.getParameter("yybh");
		String isok = "预约失败";

		try {
			doctorService.yuyueFail(yybh, isok);

			response.getWriter().print("1" + "");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@RequestMapping("/unsureYuyue")
	public String unsureYuyue(Model model, HttpSession session) {

		User userSession = (User) session.getAttribute("User");
		String name = userSession.getName();

		String isok = "预约中";

		List<Yuyue> list = doctorService.allYy(name, isok);

		model.addAttribute("tabledata", list);

		return "doctor/doctorYyManageTable";
	}

	@RequestMapping("/sureYuyue")
	public String sureYuyue(Model model, HttpSession session) {

		User userSession = (User) session.getAttribute("User");
		String name = userSession.getName();

		String isok = "待确诊";

		List<Yuyue> list = doctorService.allYy(name, isok);

		model.addAttribute("tabledata", list);

		return "doctor/doctorYyManageTable";
	}

	@RequestMapping("/searchByDt")
	public String searchByDt(HttpServletRequest request, Model model, HttpSession session) {

		User userSession = (User) session.getAttribute("User");
		String name = userSession.getName();

		String date = request.getParameter("dt");

		List<Yuyue> list = doctorService.searchYyBydt(name, date);

		model.addAttribute("tabledata", list);

		return "doctor/doctorYyManageTable";

	}

	@RequestMapping("/allJz")
	public String allJz(Model model, HttpSession session) {

		User userSession = (User) session.getAttribute("User");
		String name = userSession.getName();

		String isok = "待确诊";

		List<Yuyue> list = doctorService.allJz(name, isok);

		model.addAttribute("tabledata", list);

		return "doctor/doctorJzManageTable";
	}

	@RequestMapping("/sureJz")
	public void sureJz(HttpServletRequest request, HttpServletResponse response) {

		String yybh = request.getParameter("yybh");
		String isok = "已就诊";

		try {
			doctorService.yuyueSuccess(yybh, isok);

			response.getWriter().print("1" + "");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@RequestMapping("/needFz")
	public void needFz(HttpServletRequest request, HttpServletResponse response) {

		String yybh = request.getParameter("yybh");
		String isok = "已就诊，需复诊";

		try {
			doctorService.yuyueFail(yybh, isok);

			response.getWriter().print("1" + "");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@RequestMapping("/unJz")
	public String unJz(Model model, HttpSession session) {

		User userSession = (User) session.getAttribute("User");
		String name = userSession.getName();

		String isok = "待确诊";

		List<Yuyue> list = doctorService.allJz(name, isok);

		model.addAttribute("tabledata", list);

		return "doctor/doctorJzManageTable";
	}

	@RequestMapping("/jz")
	public String jz(Model model, HttpSession session) {

		User userSession = (User) session.getAttribute("User");
		String name = userSession.getName();

		String isok = "已就诊";
		String isok2 = "已就诊，需复诊";

		List<Yuyue> list = doctorService.allJiuJz(name, isok, isok2);

		model.addAttribute("tabledata", list);

		return "doctor/doctorJzManageTable";
	}

	@RequestMapping("/searchJzByDt")
	public String searchJzByDt(HttpServletRequest request, Model model, HttpSession session) {

		User userSession = (User) session.getAttribute("User");
		String name = userSession.getName();

		String date = request.getParameter("dt");

		List<Yuyue> list = doctorService.searchYyBydt(name, date);

		model.addAttribute("tabledata", list);

		return "doctor/doctorJzManageTable";

	}

	@RequestMapping("/allFz")
	public String allFz(Model model, HttpSession session) {

		User userSession = (User) session.getAttribute("User");
		String name = userSession.getName();

		String isok = "已就诊，需复诊";

		List<Yuyue> list = doctorService.allJz(name, isok);

		model.addAttribute("tabledata", list);

		return "doctor/doctorFzManageTable";
	}

	@RequestMapping("/sureFz")
	public void sureFz(HttpServletRequest request, HttpServletResponse response) {

		String yybh = request.getParameter("yybh");
		String isok = "已复诊，确诊完毕";

		try {
			doctorService.yuyueSuccess(yybh, isok);

			response.getWriter().print("1" + "");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@RequestMapping("/unFz")
	public String unFz(Model model, HttpSession session) {

		User userSession = (User) session.getAttribute("User");
		String name = userSession.getName();

		String isok = "已就诊，需复诊";

		List<Yuyue> list = doctorService.allJz(name, isok);

		model.addAttribute("tabledata", list);

		return "doctor/doctorFzManageTable";
	}

	@RequestMapping("/fz")
	public String fz(Model model, HttpSession session) {

		User userSession = (User) session.getAttribute("User");
		String name = userSession.getName();

		String isok = "已复诊，确诊完毕";

		List<Yuyue> list = doctorService.allJz(name, isok);

		model.addAttribute("tabledata", list);

		return "doctor/doctorFzManageTable";
	}

	@RequestMapping("/searchFzByDt")
	public String searchFzByDt(HttpServletRequest request, Model model, HttpSession session) {

		User userSession = (User) session.getAttribute("User");
		String name = userSession.getName();

		String date = request.getParameter("dt");

		List<Yuyue> list = doctorService.searchYyBydt(name, date);

		model.addAttribute("tabledata", list);

		return "doctor/doctorFzManageTable";

	}

	@RequestMapping("/departmentMembers")
	public String departmentMembers(Model model, HttpSession session) {

		User userSession = (User) session.getAttribute("User");
		String name = userSession.getName();
		String password = userSession.getPassword();

		Doctor doc = doctorService.queryDoctorInfo(name, password);
		String department = doc.getDepartment();

		List<Doctor> list = doctorService.queryByDepartment(department);
		model.addAttribute("tabledata", list);

		return "doctor/departmentTable";
	}

}
