package gclab22.GradingDataBase;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import gclab22.GradingDataBase.dao.GradingDao;
import gclab22.GradingDataBase.entity.Grade;

@Controller
public class GradingController {
	
	@Autowired
	private GradingDao gradingDao;
	
	@RequestMapping("/")
	public String index() {
		return "redirect:/grades";
	}
	
	@RequestMapping("/grades")
	public String list(Model model) {
		List<Grade> grades = gradingDao.findAll();
		System.out.println(grades);
		model.addAttribute("grades", grades);
		return "grades";
	}
	
	@RequestMapping("/addgrade")
	public String addGrade() {
		return "addgrade";
	}
	
	@PostMapping("/addconfirmation")
	public String submitAddForm(Grade grade, Model model) {
		gradingDao.create(grade);
		model.addAttribute("gradeconf", grade);
		return "addconfirmation";
	}
	
	@RequestMapping("/grades/delete")
	public String deleteGrade(@RequestParam("id") Long id) {
		gradingDao.removeById(id);
		return "redirect:/grades";
	}
	
	

}
