package org.ymgy.transwins.restful;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "api")
public class ApiController {
	@RequestMapping("restful")
	@ResponseBody
	public Map<String, String> list() {
		Map<String, String> map = new HashMap<String, String>();
		map.put("responseCode", "00000000");
		map.put("responseMessage", "操作成功");
		return map;
	}

	@RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, String> getLogin(@PathVariable("id") String id) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("responseCode", "00000000");
		map.put("responseMessage", "操作成功");
		map.put("userid", id);
		return map;
	}
    @RequestMapping("xml")  
    public Person getPerson(){  
        Person person = new Person();  
        person.setId(1);  
        person.setName("test");   
        return person;  
    }  
}
