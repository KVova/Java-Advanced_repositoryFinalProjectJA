package volodymyr.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import volodymyr.domain.User;
import volodymyr.domain.UserRole;
import volodymyr.repository.UserRepo;

@Service
public class UserService {

	private Logger logger = LoggerFactory.getLogger(UserService.class);
	
	@Autowired
	private UserRepo userRepo;

	@Autowired
	private PasswordEncoder bCryptPasswordEncoder;

	public void save(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setRole(UserRole.ROLE_USER);
		userRepo.save(user);
		logger.debug("Adding a new user " + user);
	}

	public User findByEmail(String email) {
		logger.debug("Selecting user with email " + email);
		return userRepo.findByEmail(email).get();
	}
}