package volodymyr.domain;

public class User {

	private Integer id;
	private String name;
	private String surname;
	private String email;
	private String password;
	private UserRole role;
	
	public User() {}

	public User(String name, String surname, String email, String password, UserRole role) {
		this.name = name;
		this.surname = surname;
		this.email = email;
		this.password = password;
		this.role = role;
	}

	public User(Integer id, String name, String surname, String email, String password, UserRole role) {
		this.id = id;
		this.name = name;
		this.surname = surname;
		this.email = email;
		this.password = password;
		this.role = role;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", surname=" + surname + ", email=" + email + ", password="
				+ password + ", role=" + role + "]";
	}
}