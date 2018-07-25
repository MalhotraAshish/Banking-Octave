package lti.octave.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lti.octave.bean.AccountBean;
import lti.octave.bean.AddBeneficiaryBean;
import lti.octave.repo.NoBeneficiaryExistException;
import lti.octave.service.BankService;

@Controller
public class BeneficiaryController {

	@Autowired
	private BankService service;

	@RequestMapping(value = "beneficiary.bank")
	public ModelAndView getBeneficiary(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		AccountBean account = (AccountBean) session.getAttribute("User");

		List<AccountBean> list = null;
		try {
			list = service.getBeneficiary(account.getAccountNo());
			mav.setViewName("beneficiary");
			mav.addObject("beneficiaries", list);
			return mav;
		} catch (NoBeneficiaryExistException e) {
			e.printStackTrace();
			mav.addObject("doesNotExist", e.getMessage());
			mav.setViewName("beneficiary");
			return mav;
		}
	}
	
	@RequestMapping(value = "account.bank")
	public ModelAndView getAccountNo(@RequestParam("accountNo") long accountNo, HttpSession session) {
		session.setAttribute("account", accountNo);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("fundtransfer");
		 return mav;
	}
}
