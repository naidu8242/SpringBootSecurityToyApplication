package in.bushansirgur.springbootcrud.springbootcrudapi.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import in.bushansirgur.springbootcrud.springbootcrudapi.model.Employee;
import in.bushansirgur.springbootcrud.springbootcrudapi.service.EmployeeService;


@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
		
	
	@RequestMapping("/openEmployeeView")
	public ModelAndView openEmployeeAboutView() {
		ModelAndView mav = new ModelAndView("employeesAdd");
		mav.addObject("employee", new Employee());
		return mav;
	}
	
	
	@RequestMapping("/save")
	public ModelAndView save(@ModelAttribute("employee") Employee employeeObj) {
		ModelAndView mav = new ModelAndView("employeesList");
		employeeService.save(employeeObj);
		List<Employee> list = employeeService.get();
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping("/employee/{id}")
	public ModelAndView get(@PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView("employeesAdd");
		Employee employeeObj = employeeService.get(id);
		if(employeeObj == null) {
			throw new RuntimeException("Employee not found"+id);
		}
		mav.addObject("employee", employeeObj);
		return mav;
	}
	
	@RequestMapping("/delete/{id}")
	public ModelAndView delete(@PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView("employeesList");
		employeeService.delete(id);
		List<Employee> list = employeeService.get();
		mav.addObject("list", list);
		return mav;
	}
	
	
//	=========================================================================================================
	
	@RequestMapping("/about")
	public ModelAndView toysAbout() {
		ModelAndView mav = new ModelAndView("about");
		mav.addObject("aboutActive", "active");
		return mav;
	}
	
	@RequestMapping("/contact")
	public ModelAndView toysContact() {
		ModelAndView mav = new ModelAndView("contact");
		mav.addObject("contactActive", "active");
		return mav;
	}
	
	@RequestMapping(value = {"/", "/home", "/index"})
	public ModelAndView get() {
		System.out.println("home page");
		ModelAndView mav = new ModelAndView("toysHome");
		return mav;
	}
	
	
	@RequestMapping(value = {"/login"})
	public ModelAndView getLogin() {
		ModelAndView mav = new ModelAndView("login");
		
		return mav;
	}
	
	
	@RequestMapping("/toysHome")
	public ModelAndView toysHome(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("toysHome");
		mav.addObject("homeActive", "active");
		mav.addObject("errorMsg", request.getSession().getAttribute("errorMsg"));
		
		return mav;
	}
	
	@RequestMapping("/service")
	public ModelAndView toysService() {
		ModelAndView mav = new ModelAndView("service");
		mav.addObject("serviceActive", "active");
		return mav;
	}
	
	@RequestMapping("/shop")
	public ModelAndView toysShop() {
		ModelAndView mav = new ModelAndView("shop");
		mav.addObject("shopActive", "active");
		return mav;
	}
	
	
	@RequestMapping("/icons")
	public ModelAndView toysIcons() {
		ModelAndView mav = new ModelAndView("icons");
		mav.addObject("iconActive", "active");
		return mav;
	}
	@RequestMapping("/product")
	public ModelAndView toysProduct() {
		ModelAndView mav = new ModelAndView("product");
		mav.addObject("productActive", "active");
		return mav;
	}
	
	@RequestMapping("/single")
	public ModelAndView toysSingle() {
		ModelAndView mav = new ModelAndView("single");
		mav.addObject("singleActive", "active");
		return mav;
	}
	
	@RequestMapping("/403")
	public ModelAndView accessDenidePage() {
		ModelAndView mav = new ModelAndView("persmissionDenied");
		return mav;
	}
	
	
}
