package net.code.Controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.code.ForgotPassword;
import net.code.dao.UserRegistrationDao;
import net.code.model.User;
//import net.code.model.Students;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
public class HomeController {
	@Autowired
	private User user;
//	
//	@Autowired
//	private Students stud;

	@Autowired
	private UserRegistrationDao userRegistration;

	@RequestMapping({ "/", "/studentLogin" })
	public String studentLogin() {
		System.out.println("student");
		return "studentLogin";
	}

	@RequestMapping("/newStudent")
	public String newStudent() {
		System.out.println("Registration");
		return "newStudent";
	}

	@RequestMapping("/saveStudent")
	public String saveNewUser(Model model, @RequestParam("emailAddress") String emailAddress,
			@RequestParam("studentName") String studentName, @RequestParam("course") String course,
			@RequestParam("city") String city, @RequestParam("password") String password) {

		String salt = BCrypt.gensalt(10);
		String hpassword = BCrypt.hashpw(password, salt);

		user.setEmailAddress(emailAddress);
		user.setStudentName(studentName);
		user.setCity(city);
		user.setCourse(course);
		user.setPassword(hpassword);

		int result = userRegistration.saveRegistration(user);
		if (result > 0) {
			System.out.println("saved.....");
		}
		return "studentLogin";
	}

	@RequestMapping("/studAccess")
	public String studentAccess(Model model, 
//			@RequestParam(value = "studID", required = true, defaultValue = "0") int studID
			@RequestParam(value = "emailAddress", required = false) String emailAddress) {
		
		List<User> listOfStudents = userRegistration.listStudentInfo(emailAddress);
		model.addAttribute("listOfStudents", listOfStudents);
		return "studAccess";
	}

	@RequestMapping("/validateStudent")
	public String validateStudent(Model model,
//			@RequestParam(value = "studID", required = true, defaultValue = "0") int studID,
			@RequestParam(value = "emailAddress", required=false) String emailAddress,
			@RequestParam(value = "password", required=false, defaultValue="unknown") String password) {

//		user = userRegistration.findByStudID(studID);
//		model.addAttribute("user", user);
		
		User user = userRegistration.findByEmail(emailAddress);
		if(user==null) {
			model.addAttribute("msg", "Invalid email/password...");
			return "login";
		}
//		// COMPARE
		boolean checkPassword = BCrypt.checkpw(password, user.getPassword());
		if (!checkPassword) {
			model.addAttribute("msg", "Invalid login credentials...");
			return "studentLogin";
		}

		List<User> listOfStudents = userRegistration.listStudentInfo(emailAddress);
		model.addAttribute("listOfStudents", listOfStudents);

		System.out.println("User " + user.getPassword());
		return "studAccess";
	}

	@RequestMapping("/quizPage")
	public String quizPage() {
		System.out.println("This is the quiz page");
		return "quizPage";
	}

	@RequestMapping("/scorePage")
	public String scorePage(Model model) {
		model.addAttribute("score", "congrats");
		System.out.println("This is the score page");
		return "quizPage";
	}

	@RequestMapping("/editStudentList")
	public String editStudentPage(Model model, @RequestParam("studID") int studID) {
		user = userRegistration.findByStudID(studID);
		model.addAttribute("user", user);
		return "editStudent";
	}

	@RequestMapping(value = "/updateStudentList")
	public String updateStudentPage(Model model,
			@RequestParam(value = "emailAddress", required = false) String emailAddress,
			@RequestParam("studentName") String studentName,
			@RequestParam("course") String course,
			@RequestParam("city") String city,
			@RequestParam("studID") int studID) {

		/* user = userRegistration.findByStudID(studID); */
		 user = userRegistration.findByEmail(emailAddress); 
		if (user == null) {
			User user = new User();
			user.setEmailAddress(emailAddress);
			user.setStudentName(studentName);
			user.setCourse(course);
			user.setCity(city);
			user.setStudID(studID);
			userRegistration.updateStudRegistration(user);
			 return "redirect:/studAccess"; 
				/* return "studAccess"; */
		}

		System.out.println(user.getEmailAddress() + " " + emailAddress);
		if (user.getStudID() != studID) {
			model.addAttribute("error", "Email already in use...");
			model.addAttribute("user", user);
			 return "redirect:/editStudentList/{studID}"; 
				/* return "studAccess/{studID}"; */
		}
		user.setEmailAddress(emailAddress);
		user.setStudentName(studentName);
		user.setCourse(course);
		user.setCity(city);
		user.setStudID(studID);
		userRegistration.updateStudRegistration(user);
		model.addAttribute("msg", "Student Data Updated!");
		return "redirect:/studAccess";
	}

	@RequestMapping("/deleteStudentList")
	public String deleteStudentPage(@RequestParam("studID") int studID) {
		userRegistration.deleteStudRegistration(studID);
		return "redirect:/studAccess";
	}

	@RequestMapping("/forgotPassword")
	public String forgotPassword() {
		return "forgotPassword";
	}

	@RequestMapping("/resetPassword")
	public String resetPassword(Model model, @RequestParam("recipient") String recipient) {
		ForgotPassword.sendMessage(recipient);
		return "forgotPassword";
	}

	@RequestMapping("/resetpasswd/{recipient}")
	public String resetpassword(Model model, @PathVariable("recipient") String recipient) {
		user = userRegistration.findByEmail(recipient);
		model.addAttribute("recipient", recipient);
		return "resetPassword";
	}

	@RequestMapping("/newSave")
	public String newSave(Model model, @RequestParam("recipient") String recipient,
			@RequestParam("password") String password) {
		String salt = BCrypt.gensalt(10);
		String hpassword = BCrypt.hashpw(password, salt);
		userRegistration.savePassword(recipient, hpassword);
		return "studentLogin";
	}
}

//@RequestMapping("/studAccess")
//public String listStudent(Model model) {
//	List<User> listOfStudents = userRegistration.listStudentInfo();
//	model.addAttribute("listOfStudents", listOfStudents);
//	return "studAccess";
//}

//@RequestMapping("/profDB")
//public String listProfessor(Model model) {
//	List<User> listOfProfs = userRegistration.listProfessorInfo();
//	model.addAttribute("listOfProfs", listOfProfs);
//	System.out.println("rawr");
//	return "profDB";
//}