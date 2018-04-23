package com.hnluchuan.staff.web.controller.admin;

import com.hnluchuan.core.support.Page;
import com.hnluchuan.staff.common.UserType;
import com.hnluchuan.staff.dto.*;
import com.hnluchuan.staff.model.Education;
import com.hnluchuan.staff.model.Employee;
import com.hnluchuan.staff.service.EmployeeService;
import com.hnluchuan.staff.web.controller.BaseController;
import com.hnluchuan.utils.exception.BizException;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/admin/employee", produces="text/html;charset=UTF-8")
public class AdminEmployeeController extends BaseController {

	@RequestMapping(value = "/detail")
	public String detail(Map<String, Object> map, Long id) {
		if (id == null) {
			return "admin/employee/employee_increase";
		}
		EmployeeDTO empdto = employeeService.load(id);
		map.put("n", empdto);
		Employee employee = new Employee();
		employee.setId(id);

		EmergencyContactDTO emgdto = new EmergencyContactDTO();
		emgdto.setEmployee(employee);
		List<EmergencyContactDTO> emergencyContactDTOS = emergencyContactService.find(emgdto, null);
		map.put("emgs", emergencyContactDTOS);

		EducationDTO edudto = new EducationDTO();
		edudto.setEmployee(employee);
		List<EducationDTO> educationDTOS = educationService.find(edudto, null);
		map.put("edus", educationDTOS);

		ExperienceDTO expdto = new ExperienceDTO();
		expdto.setEmployee(employee);
		List<ExperienceDTO> experienceDTOS = experienceService.find(expdto, null);
		map.put("exps", experienceDTOS);

		FamilyDTO fmydto = new FamilyDTO();
		fmydto.setEmployee(employee);
		List<FamilyDTO> familyDTOS = familyService.find(fmydto, null);
		map.put("fmys", familyDTOS);

		return "admin/employee/employee_detail";
	}
	
	@ResponseBody
	@RequestMapping(value = "/save")
	public String save(EmployeeDTO dto, String[] emgname, String[] emgrelation, String[] emgphone, String[] emgaddress,
					   String[] edustart, String[] eduend, Integer[] edurecord, String[] edumajor, String[] certificate,
					   String[] expcompany, String[] expwork, String[] expposition, String[] expreason, String[] expstart, String[] expend,
					   String[] fmyname, String[] fmyrelation, Integer[] fmyage, String[] fmycontact, String[] fmycompany, String[] fmyposition
					   ) throws Exception {
	// 1. deal dto
		// 检验Weight、Height值
		Long id = dto.getId();
		if (id == null) {    //  新增
			// 1. 新增一个user
			UserDTO userDTO = new UserDTO();
			String name = dto.getName();
			// 应实现 delete=1 的重复创建

			UserDTO oldUserDTO = userService.loadUserByName(name);
			if (oldUserDTO != null) {
				throw new BizException("该用户已存在");
			}
			userDTO.setUsername(name);
			userDTO.setDeleted(false);
			userDTO.setType(UserType.Normal.getValue());
			Long user_id = userService.create(userDTO);
			// 2. 新增一个员工
			EmployeeDTO newEmployeeDTO = new EmployeeDTO();
			newEmployeeDTO.setUser(userService.loadUser(user_id));
			id = employeeService.create(newEmployeeDTO);
		}
		// 3. 新增员工的信息  或者  详情
		EmployeeDTO employeeDTO = employeeService.load(id);
		employeeDTO.setAddress(dto.getAddress());
		employeeDTO.setBirth(dto.getBirth());
		employeeDTO.setEducation(dto.getEducation());
		employeeDTO.setEmail(dto.getEmail());
		employeeDTO.setHeight(dto.getHeight());
		employeeDTO.setIDCard(dto.getIDCard());
		employeeDTO.setInTime(dto.getInTime());
		employeeDTO.setLocation(dto.getLocation());
		employeeDTO.setMajor(dto.getMajor());
		employeeDTO.setMarry(dto.getMarry());
		//  修改用户名应更改 User表
		employeeDTO.setName(dto.getName());
		employeeDTO.setNation(dto.getNation());
		employeeDTO.setPhone(dto.getPhone());
		employeeDTO.setPlace(dto.getPlace());
		employeeDTO.setPosition(dto.getPosition());
		employeeDTO.setSchool(dto.getSchool());
		employeeDTO.setSex(dto.getSex());
		employeeDTO.setStatus(dto.getStatus());
		employeeDTO.setWechat(dto.getWechat());
		employeeDTO.setWeight(dto.getWeight());
		employeeService.updateAllFields(employeeDTO);
		employeeDTO = employeeService.load(id);
	// 2. deal emergency contact DTO
		if(emgname != null && emgname.length != 0){
			for (int i=0; i < emgname.length; i++) {
				EmergencyContactDTO emgdto = new EmergencyContactDTO();
				if (emgaddress != null && emgaddress.length!=0)	emgdto.setAddress(emgaddress[i]);
				if (emgname[i] != null)	emgdto.setName(emgname[i]);
				if (emgphone != null && emgphone.length!=0)	emgdto.setPhone(emgphone[i]);
				if (emgrelation != null&& emgrelation.length!=0)emgdto.setRelation(emgrelation[i]);
				emgdto.setEmployee(employeeDTO);
				emergencyContactService.create(emgdto);
			}
		}
	// 3. deal edudto
		if (edustart != null && edustart.length != 0){
			for (int i = 0; i < edustart.length; i++) {
				EducationDTO edudto = new EducationDTO();
				if (certificate!=null && certificate.length!=0)	edudto.setCertificate(certificate[i]);
				if (eduend != null && eduend.length != 0 && StringUtils.isNotBlank(eduend[i])){
					Date date = String2Date(eduend[i]);
					edudto.setEnd(date);
				}
				if (edumajor != null && edumajor.length != 0)	edudto.setMajor(edumajor[i]);
				if (edurecord != null && edurecord.length != 0)	edudto.setRecord(edurecord[i]);
				if (edustart[i]!=null){
					Date date = String2Date(edustart[i]);
					edudto.setStart(date);
				}
				edudto.setEmployee(employeeDTO);
				educationService.create(edudto);
			}
		}
	// 4. deal expdto
		if (expcompany != null && expcompany.length != 0){
			for (int i = 0; i < expcompany.length; i++) {
				ExperienceDTO expdto = new ExperienceDTO();
				if (expcompany[i] != null)	expdto.setCompany(expcompany[i]);
				if (expend!=null && expend.length != 0){
					Date date = String2Date(expend[i]);
					expdto.setEnd(date);
				}
				if (expposition!=null && expposition.length != 0)	expdto.setPosition(expposition[i]);
				if (expreason!=null && expreason.length!=0)	expdto.setReason(expreason[i]);
				if (expstart!=null && expstart.length!=0){
					Date date = String2Date(expstart[i]);
					expdto.setStart(date);
				}
				if (expwork!=null && expwork.length!=0)	expdto.setWork(expwork[i]);
				expdto.setEmployee(employeeDTO);
				experienceService.create(expdto);
			}
		}
	// 5. deal fmydto
		if (fmyname != null && fmyname.length != 0){
			for (int i = 0; i < fmyname.length; i++) {
				FamilyDTO fmydto = new FamilyDTO();
				if (fmyage!=null && fmyage.length!=0)	fmydto.setAge(fmyage[i]);
				if (fmycompany!=null && fmycompany.length!=0)	fmydto.setCompany(fmycompany[i]);
				if (fmycontact!=null && fmycontact.length!=0)	fmydto.setContact(fmycontact[i]);
				if (fmyname[i] != null && fmyname.length!=0)	fmydto.setName(fmyname[i]);
				if (fmyposition!=null && fmyposition.length!=0)	fmydto.setPosition(fmyposition[i]);
				if (fmyrelation!=null && fmyrelation.length!=0)	fmydto.setRelation(fmyrelation[i]);
				fmydto.setEmployee(employeeDTO);
				familyService.create(fmydto);
			}
		}

		return ok();
	}

	@ResponseBody
	@RequestMapping(value = "/save1")
	public String save1(EmployeeDTO dto) throws Exception{
		if (dto == null || dto.getId() == null){
			return failmsg();
		}
		Long id = dto.getId();
		EmployeeDTO employeeDTO = employeeService.load(id);
		employeeDTO.setAddress(dto.getAddress());
		employeeDTO.setBirth(dto.getBirth());
		employeeDTO.setEducation(dto.getEducation());
		employeeDTO.setEmail(dto.getEmail());
		employeeDTO.setHeight(dto.getHeight());
		employeeDTO.setIDCard(dto.getIDCard());
		employeeDTO.setInTime(dto.getInTime());
		employeeDTO.setLocation(dto.getLocation());
		employeeDTO.setMajor(dto.getMajor());
		employeeDTO.setMarry(dto.getMarry());
		//  修改用户名应更改 User表
		employeeDTO.setName(dto.getName());
		employeeDTO.setNation(dto.getNation());
		employeeDTO.setPhone(dto.getPhone());
		employeeDTO.setPlace(dto.getPlace());
		employeeDTO.setPosition(dto.getPosition());
		employeeDTO.setSchool(dto.getSchool());
		employeeDTO.setSex(dto.getSex());
		employeeDTO.setStatus(dto.getStatus());
		employeeDTO.setWechat(dto.getWechat());
		employeeDTO.setWeight(dto.getWeight());
		employeeService.updateAllFields(employeeDTO);

		return ok();
	}

	@ResponseBody
	@RequestMapping(value = "/delete") 
	public String delete(Long[] ids) throws IOException {
		employeeService.deleteByIds(ids);
		return ok();
	}
	
	@RequestMapping(value = "/list")
	public String list(EmployeeDTO dto, Boolean search, Map<String, Object> map, Page page) {
		List<EmployeeDTO> dtos = employeeService.find(dto, page);
		dtos = employeeService.view(dtos);
		map.put("list", dtos);
		map.put("query", dto);
		map.put("search", search);
		return "admin/employee/employee_list";
	}
	
	@RequestMapping(value = "/search")
	public String search(EmployeeDTO dto, Map<String, Object> map, Page page) {
		List<EmployeeDTO> dtos = employeeService.find(dto, page);
		map.put("list", dtos);
		map.put("query", dto);
		return "admin/employee/employee_search";
	}
	
}
