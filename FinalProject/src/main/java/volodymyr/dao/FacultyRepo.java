package volodymyr.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import volodymyr.domain.Faculty;

public interface FacultyRepo extends JpaRepository<Faculty, Integer> {

}