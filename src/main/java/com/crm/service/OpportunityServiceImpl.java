package com.crm.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.crm.model.Opportunity;
import com.crm.model.User;
import com.crm.repository.OpportunityDao;
import com.crm.validation.OpportunityValidator;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor // Generates constructor for final fields at compile time
@Service
public class OpportunityServiceImpl implements OpportunityService {

	// Using final fields and a constructor is generally considered best practise
	// for autowiring dependencies
	private final OpportunityDao opportunityDaoImpl;

	@Override
	public boolean addOpportunity(Opportunity opportunity, User user) {
		return opportunityDaoImpl.addOpportunity(opportunity, user);
	}

	@Override
	public List<Opportunity> getOpportunitiesByUserId(User user) {
		return opportunityDaoImpl.getOpportunitiesByUserId(user.getUserId());
	}
	
	@Override
	public void validate(Opportunity opportunity, BindingResult results) {
		new OpportunityValidator().validate(opportunity, results);
	}
}
