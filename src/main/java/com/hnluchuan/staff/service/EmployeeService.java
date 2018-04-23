package com.hnluchuan.staff.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hnluchuan.staff.dao.EmployeeDAO;
import com.hnluchuan.staff.model.Employee;
import com.hnluchuan.staff.dto.EmployeeDTO;
import com.hnluchuan.core.support.Page;
import com.hnluchuan.utils.common.BeanMapper;

@Service
public class EmployeeService extends BaseService {
	
	@Autowired
	private EmployeeDAO employeeDAO;
	@Autowired
	private UserService userService;

	public List<EmployeeDTO> find(EmployeeDTO query, Page page) {
		List<Employee> models = employeeDAO.find(query, page);
		List<EmployeeDTO> dtos = toDTOs(models);
		return dtos;
	}
	
	public List<EmployeeDTO> findAll() {
		return this.find(new EmployeeDTO(), null);
	}
	
	public List<EmployeeDTO> findAll(EmployeeDTO query) {
		return this.find(query, null);
	}
	
	public List<EmployeeDTO> find(Page page) {
		return this.find(new EmployeeDTO(), page);
	}
	
	public List<EmployeeDTO> find(int count) {
		Page page = new Page();
		page.setPage(1);
		page.setPageSize(count);
		return this.find(new EmployeeDTO(), page);
	}

	public List<EmployeeDTO> view(List<EmployeeDTO> dtos){
	    List<EmployeeDTO> list = new ArrayList<>();
		for (EmployeeDTO dto : dtos ) {
			if (! dto.getUser().getDeleted()){
				list.add(dto);
			}
		}
		return list;
	}
	
	public Long create(EmployeeDTO dto) {
		Employee model = new Employee();
		toModel(model, dto);
		return employeeDAO.create(model);
	}
	
	public EmployeeDTO load(Long id) {
	    Employee model = employeeDAO.load(id);
	    return toDTO(model);
    }

    public EmployeeDTO loadEmployeeByUserID(Long id){
		Employee model = employeeDAO.loadEmployeeByUserID(id);
		return toDTO(model);
	}

	public void updateAllFields(EmployeeDTO dto) {
		Employee model = employeeDAO.load(dto.getId());
		toModel(model, dto);
		employeeDAO.update(model);
    }

	public void deleteByIds(Long[] ids) {
		if (ids != null) {
			Long[] user_ids = new Long[ids.length];
			for (int i=0; i<ids.length; i++) {
				Employee dto = employeeDAO.load(ids[i]);
				user_ids[i] = dto.getUser().getId();
			}
			userService.deleteByIds(user_ids);
		}
    }
	
	public void deleteById(Long id) {
		this.deleteByIds(new Long[] {id});
	}

	public EmployeeDTO findOne(EmployeeDTO query) {
		Employee model = employeeDAO.findOne(query);
		return toDTO(model);
	}
	
	private List<EmployeeDTO> toDTOs(List<Employee> models) {
		if (CollectionUtils.isEmpty(models)) {
			return new ArrayList<EmployeeDTO>(0);
		}
		List<EmployeeDTO> dtos = new ArrayList<EmployeeDTO>(models.size());
		for (Employee model : models) {
	        EmployeeDTO dto = toDTO(model);
	        dtos.add(dto);
        }
	    return dtos;
    }
    
    private EmployeeDTO toDTO(Employee model) {
		if (model == null) {
			return null;
		}
		EmployeeDTO dto = BeanMapper.map(model, EmployeeDTO.class);
		
		return dto;
	}
	
	private void toModel(Employee model, EmployeeDTO dto) {
		BeanMapper.copy(dto, model);
    }
	
	@SuppressWarnings("unused")
	private List<Employee> toModels(List<EmployeeDTO> dtos) {
		if (CollectionUtils.isEmpty(dtos)) {
			return new ArrayList<Employee>(0);
		}
		List<Employee> models = new ArrayList<Employee>(dtos.size());
		for (EmployeeDTO dto : dtos) {
	        Employee model = new Employee();
	        toModel(model, dto);
	        models.add(model);
        }
		return models;
	}
}
