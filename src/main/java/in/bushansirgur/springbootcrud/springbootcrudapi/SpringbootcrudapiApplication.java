package in.bushansirgur.springbootcrud.springbootcrudapi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
//public class SpringbootcrudapiApplication extends SpringBootServletInitializer {
public class SpringbootcrudapiApplication  {
	
//	@Override
//	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
//		try {
//			openHomePage();
//		} catch (Exception e) { 
//			// TODO Auto-generated catch block e.printStackTrace();
//		}
//		return application.sources(SpringbootcrudapiApplication.class); }
//	 
	
	
	public static void main(String[] args) throws Exception {
		SpringApplication.run(SpringbootcrudapiApplication.class, args);
	}	
	
//	private void openHomePage() throws Exception {
//		try {
//			Runtime rt = Runtime.getRuntime();
//			rt.exec("rundll32 url.dll,FileProtocolHandler " + "http://localhost:8080/toysHome");
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//	}
	

	
}

