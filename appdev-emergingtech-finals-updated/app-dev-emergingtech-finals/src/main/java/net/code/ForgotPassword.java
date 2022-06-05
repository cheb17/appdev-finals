package net.code;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class ForgotPassword {
	public static void sendMessage(String recipient) {
		Properties prop = new Properties();
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.starttls.enable", "true");
		prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.port", "587");
		
		String myEmail = "cmcbanez.mnl@eac.edu.ph";
		String password="ofxalkepbpyyhtuv";
		
		Session session = Session.getInstance(prop, new Authenticator(){
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(myEmail, password);
			}
			
		});
		
		   System.out.println("Preparing to send link");
		 		Message msg = prepareMessage(session, myEmail, password, recipient);
		try {
			Transport.send(msg);
		} catch (MessagingException e) {
			e.printStackTrace();
		}

	}

	private static Message prepareMessage(Session session, String myEmail, String password, String recipient) {
		Message msg = new MimeMessage(session);
		try {
			msg.setFrom(new InternetAddress(myEmail));
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
			msg.setSubject("Request to change password");
			msg.setText("http://localhost:8080/resetpasswd/" + recipient);
			return msg;
		}
		catch(AddressException e){
			e.printStackTrace();
		}
		catch(MessagingException e){
			e.printStackTrace();
		}
		return null;
	}

}
