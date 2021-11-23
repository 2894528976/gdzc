package com.niuys.gdzc.dao;

import com.niuys.gdzc.model.Comployee;

import java.util.List;

public interface IEmployeeDAO {


	public List showAllEmployee();

	public List findPageEmployee(int pageStartRow, int pageCount);

	public List showAlldept();

	public boolean insertEmployee(Comployee comp);

	public boolean deleteEmployee(String eno);

	public List findEmployeebyeno(String eno);

	public boolean updateEmployee(Comployee com);

	public boolean isEmployeebyno(String eno);

	public boolean isEmployeebyname(String name);

}
