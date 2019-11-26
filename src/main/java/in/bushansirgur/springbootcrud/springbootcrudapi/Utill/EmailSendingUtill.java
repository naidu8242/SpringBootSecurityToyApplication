package in.bushansirgur.springbootcrud.springbootcrudapi.Utill;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import in.bushansirgur.springbootcrud.springbootcrudapi.dto.ToysLoginFormsDTO;



@Service
public class EmailSendingUtill {

	 @Autowired
     JavaMailSender mailSender;
	 
	 @Autowired
     @Qualifier("emailConfigBean")
     private Configuration emailConfig;
	 
	 public void sendEmail(String toEmail,String sendrName) throws IOException {
		    Mail mail = new Mail();
	        mail.setMailFrom("naidu8242@gmail.com");
	        mail.setMailTo("plakshunnaidu@gmail.com");
	        mail.setMailSubject("Spring Boot - Email Example");
	        mail.setMailContent("Hello");
	        MimeMessage mimeMessage = mailSender.createMimeMessage();
	        try {
	            MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true);
	            mimeMessageHelper.setSubject(mail.getMailSubject());
	            mimeMessageHelper.setFrom(new InternetAddress(mail.getMailFrom(), mail.getSenderName()));
	            mimeMessageHelper.setTo(mail.getMailTo());
	            mimeMessageHelper.setText(mail.getMailContent());
	 
	            mailSender.send(mimeMessageHelper.getMimeMessage());
	        } catch (MessagingException e) {
	            e.printStackTrace();
	        } catch (UnsupportedEncodingException e) {
	            e.printStackTrace();
	        }
	}
	 
	 
	 
	    public void sendEmail(ToysLoginFormsDTO toysLoginFormsDTO) throws MessagingException, IOException, TemplateException {
	        Mail mailModels = new Mail();
	        Map<String, String> mode = new HashMap<String, String>();
	        mode.put("registerName", toysLoginFormsDTO.getRegisterName());
	        mailModels.setModel(mode);
	        MimeMessage message = mailSender.createMimeMessage();
	        MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(message, MimeMessageHelper.MULTIPART_MODE_MIXED_RELATED, StandardCharsets.UTF_8.name());

	        mimeMessageHelper.addInline("logo.png", new ClassPathResource("classpath:/Personal_Budget_Form.pdf"));

	        
	        Template template = emailConfig.getTemplate("registationEmail.html");
	        String html = FreeMarkerTemplateUtils.processTemplateIntoString(template, mailModels.getModel());
	        mimeMessageHelper.setTo(toysLoginFormsDTO.getRegisterEmail());
	        mimeMessageHelper.setText(html, true);
	        mimeMessageHelper.setSubject("Welcome To Toys Home");
	        mimeMessageHelper.setFrom(new InternetAddress("naidu20061989@gmail.com", toysLoginFormsDTO.getRegisterName()) );
	        mailSender.send(message);

	    }
}
