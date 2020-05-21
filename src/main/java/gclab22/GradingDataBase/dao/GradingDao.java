package gclab22.GradingDataBase.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import gclab22.GradingDataBase.entity.Grade;

@Repository
public class GradingDao {

	@Autowired
	private JdbcTemplate jdbc;
	
	public List<Grade> findAll() {
		String sql = "SELECT * FROM grades";
		return jdbc.query(sql, new BeanPropertyRowMapper<>(Grade.class));
	}
	
	public void create(Grade grade) {
		String sql = "INSERT INTO grades (name, type, score, total) VALUES (?, ?, ?, ?)";
		jdbc.update(sql, grade.getName(), grade.getType(), grade.getScore(), grade.getTotal());
	}
	
	public void removeById(Long id) {
		String sql = "DELETE FROM grades WHERE id = ?";
		jdbc.update(sql, id);
	}
	
	
}
