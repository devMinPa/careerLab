package com.springCareer.service;

import com.springCareer.company.Company;
import com.springCareer.company.CompanyAdmin;

public interface CompanyService {
	public CompanyAdmin insertAdmin(CompanyAdmin company);
	
//	public CompanyAdmin get(String email);
//	
//	public boolean modify(CompanyAdmin company);
//	
//	public boolean remove(String c_id);
//	
//	public List<CompanyAdmin> getList();

	public CompanyAdmin login(CompanyAdmin admin);

	public void regCompany(CompanyAdmin admin);
}
