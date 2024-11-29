package pm.configuration;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan("pm")
public class MyClass1 {

	@Bean
	EntityManager manager() {
		return Persistence.createEntityManagerFactory("dev").createEntityManager();
	}
}
