package pm.dto;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;

import lombok.Data;

@Data
@Entity
public class MyUser {
	private String name;
	@Id
	private String username;
	private String password;
	@Transient
	private String cpassword;
}
