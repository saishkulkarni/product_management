package pm.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pm.dto.MyProduct;

@Repository
public class ProductDao {
	@Autowired
	EntityManager manager;

	public void save(MyProduct product) {
		manager.getTransaction().begin();
		manager.persist(product);
		manager.getTransaction().commit();
	}

	public List<MyProduct> findProducts() {
		return manager.createNativeQuery("select * from myproduct",MyProduct.class).getResultList();
	}

	public void delete(int id) {
		manager.getTransaction().begin();
		manager.remove(findProduct(id));
		manager.getTransaction().commit();
	} 
	
	public MyProduct findProduct(int id) {
		return manager.find(MyProduct.class, id);
	}

	public void update(MyProduct product) {
		manager.getTransaction().begin();
		manager.merge(product);
		manager.getTransaction().commit();
	}
	
	

}
