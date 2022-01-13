package com.spring.boot.mapper;

import java.util.List;

import com.spring.boot.dto.TermsDTO;

public interface TermsService {
	
	public int maxNum() throws Exception;
	
	public void insertData(TermsDTO dto) throws Exception;
	
	public List<TermsDTO> getLists(TermsDTO termsDTO) throws Exception;
	
	public TermsDTO getReadData(int t_num) throws Exception;

}
