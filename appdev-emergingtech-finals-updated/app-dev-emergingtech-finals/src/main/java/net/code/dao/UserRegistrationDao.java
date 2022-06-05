package net.code.dao;

import java.util.List;

import net.code.model.User;
//import net.code.model.Students;

public interface UserRegistrationDao {
	public User validateStudent(String emailAddress);
	public int saveRegistration(User students);
	public User findByEmail(String emailAddress);
	public List<User> listStudentInfo(String emailAddress);
	public User findByStudID(int studID);
	public User retrieveStudentData(String emailAddress);
	public void updateStudRegistration(User user);
	public void deleteStudRegistration(int studID);
	public void savePassword(String recipient, String hpassword);
}
