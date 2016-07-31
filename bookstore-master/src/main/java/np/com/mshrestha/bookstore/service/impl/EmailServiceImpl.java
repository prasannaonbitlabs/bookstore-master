package np.com.mshrestha.bookstore.service.impl;

import java.util.Map;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;

import np.com.mshrestha.bookstore.service.EmailService;


@Service
public class EmailServiceImpl implements EmailService {

	
	public String sendMail(Map<?, ?> map) {
		

		      
		final String username = "samartcabs@gmail.com";
		final String password = "2198592pp";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("samartcabs@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse("samartcabs@gmail.com"));
			message.setSubject("Account Details for "+ map.get("name") +" at Smart Cabs Online Booking");
			message.setText("Hello "+ map.get("name") +" , \n\n"
							+ "Thank you for registering at Smart Cabs Online Booking. Your account is created and must be activated before you can use it.  "
							+ "To activate the account click on the following link or copy-paste it in your browser: "
							+ "http://localhost:8080/bookstore/person/activeUser?token="+map.get("sessionId")+" \n\n"
							
							+ "After activation you may login to http://localhost:8080/bookstore/ using the following username and password: \n\n \n\n "
							+ "Username: prasannaprathiba \n\n "
							+ "Password: 2198592 ");

			Transport.send(message);

			System.out.println("Done");
			return "sucsses";

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}

}
