package net.code.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
//import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import net.code.model.User;
//import net.code.model.Students;

@Repository
public class UserRegistrationDaoImpl implements UserRegistrationDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public User validateStudent(String emailAddress) {
		String sql = "SELECT * FROM students WHERE emailAddress= '"+ emailAddress + "'";
		return jdbcTemplate.queryForObject(sql, BeanPropertyRowMapper.newInstance(User.class));
	}

	@Override
	public int saveRegistration(User students) {
		String sql="INSERT INTO students(emailAddress, studentName, course, city, password) VALUES('" + students.getEmailAddress() + "','" + students.getStudentName() + "','" + students.getCourse() + "','" + students.getCity() + "','" + students.getPassword() + "')";
		return jdbcTemplate.update(sql);
	}
	
	@Override 
	public User findByEmail(String emailAddress) {
		String sql = "SELECT * FROM students WHERE emailAddress= '"+ emailAddress + "'";
		return jdbcTemplate.query(sql, new ResultSetExtractor<User>(){

			@Override
			public User extractData(ResultSet rs) throws SQLException, DataAccessException {
				if(rs.next()) {
					User user = new User();
					user.setStudID(rs.getInt("studID"));
					user.setEmailAddress(rs.getString("emailAddress"));
					user.setStudentName(rs.getString("studentName"));
					user.setCourse(rs.getString("course"));
					user.setCity(rs.getString("city"));
					user.setPassword(rs.getString("password"));
				return user;
				}
			return null;
			}
		});
	}
	
	@Override
	public List<User> listStudentInfo(String emailAddress){
//		String sql = "SELECT * FROM students";
//		String sql = "SELECT * FROM students where studID= '" + studID + "'" + "LIMIT 1 ";
		String sql = "SELECT * FROM students where emailAddress= '" + emailAddress + "'";
//		try {
		List<User> listOfStudents = jdbcTemplate.query(sql, new RowMapper<User>() {

			@Override
			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
					User user = new User();
					user.setStudID(rs.getInt("studID"));
					user.setEmailAddress(rs.getString("emailAddress"));
					user.setStudentName(rs.getString("studentName"));
					user.setCourse(rs.getString("course"));
					user.setCity(rs.getString("city"));
					user.setPassword(rs.getString("password"));
					return user;
				}
		});
			return listOfStudents;
//		}
//		catch (EmptyResultDataAccessException e) {
//			return null;
//		}			
	}

	@Override
	public User findByStudID(int studID) {
		String sql = "SELECT * FROM students where studID= '" + studID + "'";
		return jdbcTemplate.queryForObject(sql,BeanPropertyRowMapper.newInstance(User.class));
	}

	@Override
	public void updateStudRegistration(User user) {
		String sql = "UPDATE students SET emailAddress=?, studentName=?, course=?, city=? WHERE studID=?";
		jdbcTemplate.update(sql, user.getEmailAddress(), user.getStudentName(), user.getCourse(), user.getCity(), user.getStudID());	
	}

	@Override
	public void deleteStudRegistration(int studID) {
		String sql ="DELETE FROM students WHERE studID=?";
		jdbcTemplate.update(sql, studID);	
	}

	@Override
	public User retrieveStudentData(String emailAddress) {
		String sql = "SELECT studID, emailAddress, studentName, course, city FROM students WHERE emailAddress= '"+ emailAddress + "'";
		return jdbcTemplate.queryForObject(sql, BeanPropertyRowMapper.newInstance(User.class));
	}

	@Override
	public void savePassword(String recipient, String hpassword) {
		String sql="UPDATE students SET password=? WHERE emailAddress=?";
		jdbcTemplate.update(sql, hpassword, recipient);	
	}
}