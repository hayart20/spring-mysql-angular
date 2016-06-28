package am.developer.test;

import am.developer.entity.Task;
import am.developer.repo.TaskRepository;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by hayk on 21/06/2016.
 */


public class TaskTest {

    private static CrudRepository repository;

    public static void main(String[] args) {
        AbstractApplicationContext context = new ClassPathXmlApplicationContext("file:src/main/webapp/WEB-INF/springrest-servlet.xml");
        repository = context.getBean(TaskRepository.class);

        createEmployee(6, "Task1", "Task1 Description", "MEDIUM", "ACTIVE");
        createEmployee(7, "Task2", "Task2 Description", "MEDIUM", "ACTIVE");
        createEmployee(8, "Task3", "Task3 Description", "LOW", "ACTIVE");

        context.close();

    }

    private static void createEmployee(int id, String name, String desc, String priority, String status) {

        Task task = new Task();
        task.setTaskId(id);
        task.setTaskArchived(0);
        task.setTaskName(name);
        task.setTaskDescription(desc);
        task.setTaskPriority(priority);
        task.setTaskStatus(status);
        repository.save(task);
    }

}
