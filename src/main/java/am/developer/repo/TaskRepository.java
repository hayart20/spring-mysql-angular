package am.developer.repo;

import am.developer.entity.Task;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by hayk on 21/06/2016.
 */
@Repository
public interface TaskRepository extends CrudRepository<Task, Integer> {
}
