package volodymyr.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import volodymyr.domain.Faculty;

@Repository
public interface FacultyRepo extends JpaRepository<Faculty, Integer> {

}