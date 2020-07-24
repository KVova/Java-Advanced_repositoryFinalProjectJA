package volodymyr.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import volodymyr.domain.User;

public interface UserRepo extends JpaRepository<User, Integer> {

	User findByEmail(String email);
}