package pm.dao;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pm.dto.MyUser;

@Repository
public class UserDao {

	@Autowired
	EntityManager manager;

	public void save(MyUser user) {
		manager.getTransaction().begin();
		manager.persist(user);
		manager.getTransaction().commit();
	}

	public boolean checkUsername(String username) {
		if (findUser(username) == null)
			return false;
		else
			return true;
	}

	public MyUser findUser(String username) {
		return manager.find(MyUser.class, username);
	}
	
}
