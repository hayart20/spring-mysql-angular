package am.developer.repo;

import am.developer.entity.Task;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by hayk on 21/06/2016.
 */
public interface TaskRepository extends CrudRepository<Task, Integer> {
}
