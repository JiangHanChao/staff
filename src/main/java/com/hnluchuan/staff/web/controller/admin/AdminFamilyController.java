package com.hnluchuan.staff.web.controller.admin;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import com.hnluchuan.staff.dto.EmployeeDTO;
import com.hnluchuan.utils.exception.BizException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnluchuan.staff.dto.FamilyDTO;
import com.hnluchuan.staff.service.FamilyService;

import com.hnluchuan.core.support.Page;
import com.hnluchuan.staff.web.controller.BaseController;

@Controller
@RequestMapping(value = "/admin/family", produces="text/html;charset=UTF-8")
public class AdminFamilyController extends BaseController {

	@Autowired
	private FamilyService familyService;

	@RequestMapping(value = "/detail")
	public String detail(Map<String, Object> map, Long id) {
		throw new BizException("无法访问");
	}
	
	@ResponseBody
	@RequestMapping(value = "/save")
	public String save(FamilyDTO dto) throws Exception {
		if (dto == null || dto.getId() == null){
			return failmsg();
		}
//		for (FamilyDTO dto : dtos ) {
			Long id = dto.getId();
			FamilyDTO old = familyService.load(id);
			old.setName(dto.getName());
			old.setRelation(dto.getRelation());
			old.setContact(dto.getContact());
			// 检查 Age 整形
			old.setAge(dto.getAge());
			old.setCompany(dto.getCompany());
			old.setPosition(dto.getPosition());
			familyService.updateAllFields(old);
//		}

		return ok();
	}

	@ResponseBody
	@RequestMapping(value = "/delete") 
	public String delete(Long[] ids) throws IOException {
		familyService.deleteByIds(ids);
		return ok();
	}
	
	@RequestMapping(value = "/list")
	public String list(FamilyDTO dto, Boolean search, Map<String, Object> map, Page page) {
		List<FamilyDTO> dtos = familyService.find(dto, page);
		map.put("list", dtos);
		map.put("query", dto);
		map.put("search", search);
		return "admin/family/family_list";
	}
	
	@RequestMapping(value = "/search")
	public String search(FamilyDTO dto, Map<String, Object> map, Page page) {
		List<FamilyDTO> dtos = familyService.find(dto, page);
		map.put("list", dtos);
		map.put("query", dto);
		return "admin/family/family_search";
	}
	
}
