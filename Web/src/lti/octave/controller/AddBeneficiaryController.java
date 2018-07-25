package lti.octave.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import lti.octave.bean.AccountBean;
import lti.octave.bean.AddBeneficiaryBean;
import lti.octave.repo.AccountAlreadyExistException;
import lti.octave.repo.InvalidAccountException;
import lti.octave.service.BankService;

@Controller
public class AddBeneficiaryController {
	@Autowired
	private BankService service;
	
	@RequestMapping(value = "doCheckBeneficiary.bank", method = RequestMethod.POST)
	public ModelAndView checkBeneficiary(AddBeneficiaryBean beneficiary, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		AccountBean checkedBeneficiary = null;
		
		AccountBean user = (AccountBean) session.getAttribute("User");
		beneficiary.setAccountNo(user.getAccountNo());
		
		try {
			checkedBeneficiary = service.checkBeneficiary(beneficiary);
			session.setAttribute("Beneficiary", beneficiary);
		} catch (InvalidAccountException e) {
			e.printStackTrace();
			mav.addObject("fail", e.getMessage());
			mav.setViewName("addbeneficiary");
			return mav;
		} catch (AccountAlreadyExistException e) {
			e.printStackTrace();
			mav.addObject("fail", e.getMessage());
			mav.setViewName("addbeneficiary");
			return mav;
		}
		mav.addObject("Checked", checkedBeneficiary);
		mav.setViewName("confirmbenef");
		return mav;
	}
	
	@RequestMapping(value = "doAddBeneficiary.bank", method = RequestMethod.GET)
	public ModelAndView addBeneficiary(HttpSession session) {
		AddBeneficiaryBean beneficiary = (AddBeneficiaryBean) session.getAttribute("Beneficiary");
		service.addBeneficiary(beneficiary);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("addSuccess", "Your Benificiary is added successfully");
		mav.setViewName("profile");
		
		return mav;
	}
}