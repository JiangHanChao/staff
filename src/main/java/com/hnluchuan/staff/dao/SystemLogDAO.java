package com.hnluchuan.staff.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Repository;

import com.hnluchuan.core.dao.BaseDAO;
import com.hnluchuan.core.support.Page;
import com.hnluchuan.staff.dto.SystemLogDTO;
import com.hnluchuan.staff.model.SystemLog;

/**
 * dao的实现类必须加上@Repository
 * 继承自GenericDAOHibernate，以重用基本的增删改方法。
 * @author Kewen.Zhu
 *
 */
@Repository
public class SystemLogDAO extends BaseDAO<SystemLog> {

    /**
     * 查询方法，传入一个dto是为了灵活构建查询条件，避免创建多个查询方法。
     * page对象是用来分页的，一般可以不用管
     * @param dto
     * @param page
     * @return
     */
    public List<SystemLog> find(SystemLogDTO dto, Page page) {
        StringBuilder hql = new StringBuilder();
        List<Object> paras = new ArrayList<Object>();
        hql.append("From SystemLog n where 1 = 1 ");
        if (dto.getId() != null) {
            hql.append(" and n.id = ? ");
            paras.add(dto.getId());
        }
        if (StringUtils.isNotBlank(dto.getModule())) {
            hql.append(" and n.module = ? ");
            paras.add(dto.getModule());
        }
        if (StringUtils.isNotBlank(dto.getOperation())) {
            hql.append(" and n.operation = ? ");
            paras.add(dto.getOperation());
        }
        if (dto.getDate() != null) {
            hql.append(" and n.date = ? ");
            paras.add(dto.getDate());
        }

        if (dto.getStartDate() != null) {
        	hql.append(" and n.date >= ? ");
        	paras.add(dto.getStartDate());
        }
        if (dto.getEndDate() != null) {
        	hql.append(" and n.date <= ? ");
        	paras.add(dto.getEndDate());
        }
        if (dto.getIsSuccess() != null) {
        	hql.append(" and n.isSuccess = ? ");
        	paras.add(dto.getIsSuccess());
        }
        hql.append(" order by n.date desc ");
        return super.find(hql.toString(), paras.toArray(), page);
    }
    
    /**
     * 只找出一条符合条件的记录
     * @param dto
     * @return
     */
    public SystemLog findOne(SystemLogDTO dto) {
		Page page = new Page();
		page.setPageSize(1);
		page.setPage(1);
		
		List<SystemLog> list = this.find(dto, page);
	    return CollectionUtils.isEmpty(list) ? null : list.get(0);
    }
    @Override
    public Long create(SystemLog t) {
        if (t.getParams() != null) {
            if (t.getParams().length() > 1024) {
                t.setParams(t.getParams().substring(1000));
            }
        }
        return super.create(t);
    }
}
