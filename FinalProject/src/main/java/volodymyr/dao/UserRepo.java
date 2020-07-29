package volodymyr.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import volodymyr.domain.User;

public interface UserRepo extends JpaRepository<User, Integer> {

	Optional<User> findByEmail(String email);
}