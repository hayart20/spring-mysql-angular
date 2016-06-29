package am.developer.rest;

import am.developer.entity.Task;
import am.developer.repo.TaskRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(maxAge = 3600)
@RestController
@RequestMapping("/mytaskrest")
public class HomeController {

    @Autowired
    TaskRepository taskRepository;
    
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public ResponseEntity<String> home() {
        System.out.println("barev");
        return new ResponseEntity<String>("bababa", HttpStatus.OK);
        //"{ \"id\":172,\"content\":\"Hello, World!\"}";
    }

    @RequestMapping(value = "/all", method = RequestMethod.GET)//, headers = {"Accept=text/xml, application/json"})
    public ResponseEntity<List<Task>> getAll() {
        //List<String> t = new ArrayList<String>();
        //t.add("ddd");
         
        //List<Task> findByTaskStatus = taskRepository.findByTaskStatus("ACTIVE");
        List<Task> findByTaskStatus = (List<Task>) taskRepository.findAll();
        
        for(Task task : findByTaskStatus){
            System.out.println("task="+task.getTaskName());
        }    
        return new ResponseEntity<List<Task>>(findByTaskStatus, HttpStatus.OK);
    }
}
