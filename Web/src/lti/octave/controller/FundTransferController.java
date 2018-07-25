package lti.octave.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lti.octave.bean.AccountBean;
import lti.octave.bean.FundTransferBean;
import lti.octave.repo.BalanceException;
import lti.octave.repo.InvalidAccountException;
import lti.octave.service.BankService;

@Controller
public class FundTransferController {
	
	@Autowired
	private BankService service;
	
	
	@RequestMapping(value = "fundTransfer.bank", method = RequestMethod.POST)
	public ModelAndView fundTransfer(FundTransferBean fund, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		System.out.println(session.getAttribute("account"));
		long accountTo = Long.parseLong(session.getAttribute("account").toString());
		AccountBean account = (AccountBean) session.getAttribute("User");
		long acntNo = account.getAccountNo();
				
		try {
			AccountBean acnt = service.withdraw(fund, acntNo);
			session.setAttribute("User", acnt);
		} catch (BalanceException e) {
			e.printStackTrace();
			mav.addObject("fund", e.getMessage());
			mav.setViewName("fundtransfer");
			return mav;
			
		}	
		
		try {
			service.deposit(fund, accountTo);
		} catch (InvalidAccountException iae) {
			iae.printStackTrace();
			mav.addObject("accountIncorrect", iae.getMessage());
			mav.setViewName("fundtransfer");
			return mav;
		}
		
		mav.addObject("success", "Transaction done sucessfully!!");
		mav.setViewName("profile");
		return mav;
	}

}
