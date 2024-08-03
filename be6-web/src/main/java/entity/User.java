package entity;

public class User {
	
	private String username;
	private String password;
	private String gender;
	private String hobbies;
	private String languages;
	private String cities;
	
	
	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", gender=" + gender + ", hobbies=" + hobbies
				+ ", languages=" + languages + ", cities=" + cities + "]";
	}


	public User(String username, String password, String gender, String hobbies, String languages, String cities) {
		super();
		this.username = username;
		this.password = password;
		this.gender = gender;
		this.hobbies = hobbies;
		this.languages = languages;
		this.cities = cities;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getHobbies() {
		return hobbies;
	}


	public void setHobbies(String hobbies) {
		this.hobbies = hobbies;
	}


	public String getLanguages() {
		return languages;
	}


	public void setLanguages(String languages) {
		this.languages = languages;
	}


	public String getCities() {
		return cities;
	}


	public void setCities(String cities) {
		this.cities = cities;
	}
	
	
}