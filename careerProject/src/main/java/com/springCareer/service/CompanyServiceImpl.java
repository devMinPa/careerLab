package com.springCareer.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springCareer.company.Company;
import com.springCareer.company.CompanyAdmin;
import com.springCareer.mapper.CompanyMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class CompanyServiceImpl implements CompanyService {
	
	private final CompanyMapper mapper;
	
	@Override
	public CompanyAdmin insertAdmin(CompanyAdmin admin) {
		log.info("register......" + admin);
		if(mapper.insert(admin) == 1)
			return admin;
		return null;
		
	}
	
//	@Override
//	public CompanyAdmin get(String email) {
//		log.info("get......" + email);
//		return mapper.read(email);
//	}
//
//	@Override
//	public boolean modify(CompanyAdmin company) {
//		log.info("modify......" + company);
//		return mapper.update(company) == 1;
//	}
//
//	@Override
//	public boolean remove(String c_id) {
//		log.info("remove......" + c_id);
//		return mapper.delete(c_id) == 1;
//	}
//
//	@Override
//	public List<CompanyAdmin> getList() {
//		log.info("getList......");
//		return mapper.getList();
//	}

	@Override
	public CompanyAdmin login(CompanyAdmin admin) {
		return mapper.login(admin);
	}
	

	@Transactional
	@Override
	public void regCompany(CompanyAdmin admin) {
		if(admin != null) {
			mapper.regCompany(admin.getCompany());
			mapper.connAdmin(admin);
		}
	}


}
