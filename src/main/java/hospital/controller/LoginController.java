package hospital.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;

import hospital.enity.News;
import hospital.enity.User;
import hospital.service.LoginService;

@Controller
@RequestMapping("/Login")
public class LoginController {

	@Autowired
	private LoginService loginService;

	private Gson gson;

	@RequestMapping("/login")
	public void login(HttpServletRequest request, HttpServletResponse response, HttpSession session, User user) {

		String msg = "";

		String name = request.getParameter("name").toString();
		String password = request.getParameter("password").toString();

		try {

			List<User> list = loginService.logincheck(name, password);

			if (list.isEmpty()) {
				msg = "0";
			} else {

				user.setId(list.get(0).getId());
				user.setName(list.get(0).getName().toString());
				user.setPassword(list.get(0).getPassword().toString());
				user.setRoleId(list.get(0).getRoleId());
				user.setDefinition(list.get(0).getDefinition().toString());
				user.setTname(list.get(0).getTname().toString());
				user.setSex(list.get(0).getSex().toString());
				user.setPhone(list.get(0).getPhone().toString());
				user.setAge(list.get(0).getAge());
				user.setEmail(list.get(0).getEmail().toString());

				session.setAttribute("User", user);

				if (list.get(0).getRoleId() == 1) {
					response.getWriter().print(1 + "");
				}
				if (list.get(0).getRoleId() == 2) {
					response.getWriter().print(2 + "");
				}
				if (list.get(0).getRoleId() == 3) {
					response.getWriter().print(3 + "");
				}

			}

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@RequestMapping("/index")
	public String index() {
		return "login";
	}

	@RequestMapping("/loginInCustomer")
	public String loginInCustomer() {
		return "customer/customerMain";
	}

	@RequestMapping("/loginInDoctor")
	public String loginInDoctor() {
		return "doctor/doctorMain";
	}

	@RequestMapping("/loginInAdmin")
	public String loginInAdmin() {
		return "admin/adminMain";
	}

	@RequestMapping("/register")
	public void register(HttpServletRequest request, HttpServletResponse response) {

		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String password2 = request.getParameter("password2");
		String definition = request.getParameter("definition");

		int roleId = 0;

		if (definition.equals("用户")) {
			roleId = 1;
		}
		if (definition.equals("医生")) {
			roleId = 2;
		}
		if (definition.equals("管理员")) {
			roleId = 3;
		}

		if (!password.equals(password2)) {
			try {
				response.getWriter().print(0 + "");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			loginService.registerUser(name, password, roleId, definition);
			try {
				response.getWriter().print(1 + "");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	@RequestMapping("/publishNews")
	public void publishNews(HttpServletRequest request, HttpServletResponse response) {

		String title = request.getParameter("title");
		String publisher = request.getParameter("publisher");
		String body = request.getParameter("newsbody");

		Date day = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = df.format(day);

		int newsId = (int) ((Math.random() * 9 + 1) * 100000);

		try {
			loginService.insertNews(title, publisher, body, time, newsId);
			response.getWriter().print("1" + "");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	@RequestMapping("/quitNews")
	public void quitNews(HttpServletResponse response) {
		try {
			response.getWriter().print("1" + "");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/AllInfo")
	public String AllInfo(Model model,HttpServletResponse response) {
		
		List<News> list=loginService.allInfo();
		
		model.addAttribute("tabledata", list);
		
		return "titleTable";
	}
	
	@RequestMapping("/watchNews")
	public String watchNews(HttpServletRequest request,Model model) {
		
		String newsId=request.getParameter("newsId");
		
		List<News> list=loginService.watchNews(newsId);
		
		model.addAttribute("tabledata", list);
		
		return "newsTable";
	}
}
