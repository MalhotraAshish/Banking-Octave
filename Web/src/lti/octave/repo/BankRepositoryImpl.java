package lti.octave.repo;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lti.octave.bean.AadharBean;
import lti.octave.bean.AccountBean;
import lti.octave.bean.AddBeneficiaryBean;
import lti.octave.bean.DateBean;
import lti.octave.bean.ForgetBean;
import lti.octave.bean.FundTransferBean;
import lti.octave.bean.LoginBean;
import lti.octave.bean.TransactionBean;

/**
 * 
 * @author Ashish,Yash,Pradyuman,Vanita
 *
 */

@Repository
public class BankRepositoryImpl implements BankRepository {

	@Autowired
	private SessionFactory factory;

	@Override
	public AadharBean validate(long aadharNo) throws AccountAlreadyExistException {
		Session session = factory.openSession();

		/* Checking if the aadhar number is a valid aadhar number */
		String sql = "select acnt_no from account where aadharNo=" + aadharNo;
		SQLQuery query = session.createSQLQuery(sql);

		/* Validating Aadhar Number with the help of Exception Handling */
		if (query.uniqueResult() != null) {
			throw new AccountAlreadyExistException("Existing account found with same aadhar");
		} else {
			AadharBean aadharBean = (AadharBean) session.get(AadharBean.class, aadharNo);

			if (aadharBean != null) {

				return aadharBean;
			} else
				return null;
		}
	}

	/* Getting User Details from Aadhar Table */
	@Override
	public List<AadharBean> getDetails(int aadharNo) {
		String hql = "from AadharBean where aadharNo = :id";
		Session session = factory.openSession();
		AadharBean register = (AadharBean) session.get(AadharBean.class, aadharNo);

		Query query = session.createQuery(hql);
		query.setParameter("id", register.getAadharNo());
		return null;
	}

	/* Storing Registration Details in the Database */
	@Override
	public boolean save(AccountBean account) {

		Session session = factory.openSession();
		Transaction txn = session.getTransaction();

		try {
			txn.begin();
			session.save(account);
			txn.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			txn.rollback();
			return false;
		}
	}

	/*
	 * Validating Email and Password during Login Process with the help of Exception
	 * Handling
	 */
	@Override
	public AccountBean authenticate(LoginBean login) throws PasswordDoesnotExistException {
		Session session = factory.openSession();

		AccountBean user = (AccountBean) session.bySimpleNaturalId(AccountBean.class).load(login.getEmail());
		if (user != null && user.getPassword().equals(login.getPassword())) {
			return user;
		}

		else if (user != null && user.getPassword() != login.getPassword()) {
			throw new PasswordDoesnotExistException("Incorrect password, Please try again!!!");
		} else {
			return null;
		}
	}

	/* Validating Email and MobileNo during ForgetPassword Process */
	@Override
	public boolean check(ForgetBean forget) {

		Session session = factory.openSession();

		System.out.println("readched repo");
		List<Object> list = session.createSQLQuery(
				"SELECT account.email FROM account	INNER JOIN aadhar ON account.aadharNo = aadhar.aadharNo	WHERE email = '"
						+ forget.getEmail() + "' AND mobileNo = " + forget.getMobileNo())
				.list();
		if (list.size() != 0) {

			System.out.println("true repo");
			return true;
		} else {
			System.out.println("false repo");
			return false;
		}
	}

	/* Updating New Password in the Database */
	@Override
	public void upadatePassword(String newPassword, ForgetBean forget) {
		Session session = factory.openSession();
		Transaction txn = session.getTransaction();

		String sql = "UPDATE account SET password = '" + newPassword + "' WHERE email='" + forget.getEmail() + "'";

		SQLQuery query = session.createSQLQuery(sql);
		query.executeUpdate();

	}

	@Override
	public void depositAmount(FundTransferBean fund, long accountNo) throws InvalidAccountException {
		Session session = factory.openSession();
		Transaction txn = session.getTransaction();
		// String sql = "SELECT * from account where acnt_no = " + fund.getAccountTo();
		// SQLQuery query = session.createSQLQuery(sql);
		txn.begin();
		AccountBean account = (AccountBean) session.load(AccountBean.class, accountNo);

		// if(query.uniqueResult() != null) {
		if (account != null) {
			try {

				double balance = account.getCurrentBalance();
				account.setCurrentBalance(balance + fund.getAmount());
				TransactionBean transaction = new TransactionBean("Credit", fund.getAmount(),
						account.getCurrentBalance());
				transaction.setAccount(account);
				session.save(transaction);

				txn.commit();
			} catch (Exception e) {
				txn.rollback();
				e.printStackTrace();
			}
		} else {
			throw new InvalidAccountException("Sorry !! The value entered in Account To field is WORNG");
		}

	}

	@Override
	public AccountBean withdrawAmount(FundTransferBean fund, long acntNo) throws BalanceException {
		Session session = factory.openSession();
		Transaction txn = session.getTransaction();
		// String sql = "SELECT * from account where acnt_no = " + acntNo;
		// SQLQuery query = session.createSQLQuery(sql);
		txn.begin();
		AccountBean account = (AccountBean) session.load(AccountBean.class, acntNo);

		// if(query.uniqueResult() != null) {

		if (account != null) {
			double amount = account.getCurrentBalance();

			if (fund.getAmount() < amount) {
				try {
					double balance = amount - fund.getAmount();
					account.setCurrentBalance(balance);
					TransactionBean transaction = new TransactionBean("Debit", fund.getAmount(),
							account.getCurrentBalance());
					transaction.setAccount(account);
					session.save(transaction);
					txn.commit();

				} catch (Exception e) {
					txn.rollback();
					e.printStackTrace();
				}
			} else {
				throw new BalanceException("Sorry !! Insufficient Funds");
			}

		}
		return account;

	}

	@Override
	public List<TransactionBean> fetchDetails(AccountBean user) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		// AccountBean bean = (AccountBean) session.get(AccountBean.class,
		// user.getAccountNo());
		List<TransactionBean> details = session
				.createSQLQuery("Select * from (Select* from Transaction where acnt_no = " + user.getAccountNo()
						+ "order by txnDate desc) where rownum<=10")
				.addEntity(TransactionBean.class).list();
		txn.commit();
		return details;
	}

	@Override
	public AadharBean getUserDetails(AccountBean user) {
		AadharBean aadharNo = user.getAadhar();
		return aadharNo;
	}

	@Override
	public List<TransactionBean> getAccountStatement(AccountBean user, DateBean date) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		List<TransactionBean> details = session.createSQLQuery(
				"Select * from Transaction where txnDate between TO_DATE('" + date.getStartDate() + "','mm/dd/yyyy')"
						+ " and TO_DATE('" + date.getEndDate() + "', 'mm/dd/yyyy') and acnt_no=" + user.getAccountNo())
				.addEntity(TransactionBean.class).list();

		txn.commit();
		return details;
	}

	@Override
	public AccountBean checkBeneficiary(AddBeneficiaryBean beneficiary)
			throws InvalidAccountException, AccountAlreadyExistException {
		Session session = factory.openSession();
		

		AccountBean account = (AccountBean) session.get(AccountBean.class, beneficiary.getBeneficiaryAccNo());
		System.out.println(beneficiary.getBeneficiaryAccNo());
		if (account != null) {
			String sql = "select * from BENEFICIARY where ACCOUNTNO = " + beneficiary.getAccountNo()
					+ " AND BENEFICIARYACCNO = " + beneficiary.getBeneficiaryAccNo();
			SQLQuery query = session.createSQLQuery(sql);
			if (query.uniqueResult() == null) {
				return account;
			} else {
				throw new AccountAlreadyExistException("Sorry !! the account number entered already exists");
			}
		} else {
			throw new InvalidAccountException(
					"Sorry!! the provided account does not match with our bank database.");
		}
	}

	@Override
	public List<AccountBean> getBeneficiary(long accountNo) throws NoBeneficiaryExistException {
		Session session = factory.openSession();
		String sql = "from AddBeneficiaryBean where accountNo = " + accountNo;
		List<AddBeneficiaryBean> list = session.createQuery(sql).list();
		if (list.size() > 0) {
			List<AccountBean> beneficiaries = new ArrayList<>();
			for (AddBeneficiaryBean bean : list) {
				AccountBean acnt = (AccountBean) session.get(AccountBean.class, bean.getBeneficiaryAccNo());
				beneficiaries.add(acnt);
			}
			return beneficiaries;
		} else {
			throw new NoBeneficiaryExistException(
					"Sorry!! No Beneficiary Exist Please Add Beneficiary to proceed to Fund Transfer");
		}
	}

	@Override
	public void addBeneficiary(AddBeneficiaryBean beneficiary) {
		Session session = factory.openSession();
		Transaction txn = session.getTransaction();
		
		txn.begin();
		session.save(beneficiary);
		txn.commit();
	}

}
