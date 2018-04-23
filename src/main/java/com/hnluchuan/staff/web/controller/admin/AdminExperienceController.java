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

import com.hnluchuan.staff.dto.ExperienceDTO;
import com.hnluchuan.staff.service.ExperienceService;

import com.hnluchuan.core.support.Page;
import com.hnluchuan.staff.web.controller.BaseController;

@Controller
@RequestMapping(value = "/admin/experience", produces="text/html;charset=UTF-8")
public class AdminExperienceController extends BaseController {

	@Autowired
	private ExperienceService experienceService;

	@RequestMapping(value = "/detail")
	public String detail(Map<String, Object> map, Long id) {
		throw new BizException("无法访问");
	}
	
	@ResponseBody
	@RequestMapping(value = "/save")
	public String save(ExperienceDTO dto) throws Exception {
		if (dto == null || dto.getId() == null){
			return failmsg();
		}
//		for (ExperienceDTO dto : dtos ) {
			Long id = dto.getId();
			ExperienceDTO old = experienceService.load(id);
			old.setReason(dto.getReason());
			old.setCompany(dto.getCompany());
			old.setWork(dto.getWork());
			old.setPosition(dto.getPosition());
			old.setStart(dto.getStart());
			old.setEnd(dto.getEnd());
			experienceService.updateAllFields(old);
//		}

		return ok();
	}

	@ResponseBody
	@RequestMapping(value = "/delete") 
	public String delete(Long[] ids) throws IOException {
		experienceService.deleteByIds(ids);
		return ok();
	}
	
	@RequestMapping(value = "/list")
	public String list(ExperienceDTO dto, Boolean search, Map<String, Object> map, Page page) {
		List<ExperienceDTO> dtos = experienceService.find(dto, page);
		map.put("list", dtos);
		map.put("query", dto);
		map.put("search", search);
		return "admin/experience/experience_list";
	}
	
	@RequestMapping(value = "/search")
	public String search(ExperienceDTO dto, Map<String, Object> map, Page page) {
		List<ExperienceDTO> dtos = experienceService.find(dto, page);
		map.put("list", dtos);
		map.put("query", dto);
		return "admin/experience/experience_search";
	}
	
}
