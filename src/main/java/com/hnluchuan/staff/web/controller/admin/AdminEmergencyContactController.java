package com.hnluchuan.staff.web.controller.admin;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import com.hnluchuan.utils.exception.BizException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnluchuan.staff.dto.EmergencyContactDTO;
import com.hnluchuan.staff.dto.EmployeeDTO;
import com.hnluchuan.staff.service.EmergencyContactService;

import com.hnluchuan.core.support.Page;
import com.hnluchuan.staff.web.controller.BaseController;

@Controller
@RequestMapping(value = "/admin/emergencyContact", produces="text/html;charset=UTF-8")
public class AdminEmergencyContactController extends BaseController {

	@Autowired
	private EmergencyContactService emergencyContactService;

	@RequestMapping(value = "/detail")
	public String detail(Map<String, Object> map, Long id) {
		throw new BizException("无法访问");
	}

	@ResponseBody
	@RequestMapping(value = "/save")
	public String save(EmergencyContactDTO dto) throws Exception {
		if (dto == null || dto.getId() == null){
			return failmsg();
		}
//		for (EmergencyContactDTO dto : dtos ) {
			EmergencyContactDTO old = emergencyContactService.load(dto.getId());
			old.setName(dto.getName());
			old.setRelation(dto.getRelation());
			old.setPhone(dto.getPhone());
			old.setAddress(dto.getAddress());
			emergencyContactService.updateAllFields(old);
//		}

		return ok();
	}

	@ResponseBody
	@RequestMapping(value = "/delete") 
	public String delete(Long[] ids) throws IOException {
		emergencyContactService.deleteByIds(ids);
		return ok();
	}
	
	@RequestMapping(value = "/list")
	public String list(EmergencyContactDTO dto, Boolean search, Map<String, Object> map, Page page) {
		List<EmergencyContactDTO> dtos = emergencyContactService.find(dto, page);
		map.put("list", dtos);
		map.put("query", dto);
		map.put("search", search);
		return "admin/emergencyContact/emergencyContact_list";
	}
	
	@RequestMapping(value = "/search")
	public String search(EmergencyContactDTO dto, Map<String, Object> map, Page page) {
		List<EmergencyContactDTO> dtos = emergencyContactService.find(dto, page);
		map.put("list", dtos);
		map.put("query", dto);
		return "admin/emergencyContact/emergencyContact_search";
	}
	
}
