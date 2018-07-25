package lti.octave.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.NaturalId;

@Entity
@Table(name = "beneficiary")
public class AddBeneficiaryBean {
	@Id
	@GeneratedValue(strategy = GenerationType.TABLE)
	private int BId;
	@Column
	private long accountNo;
	@Column
	private long beneficiaryAccNo;
	
	public int getBId() {
		return BId;
	}
	public void setBId(int bId) {
		BId = bId;
	}
	public long getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(long accountNo) {
		this.accountNo = accountNo;
	}
	public long getBeneficiaryAccNo() {
		return beneficiaryAccNo;
	}
	public void setBeneficiaryAccNo(long beneficiaryAccNo) {
		this.beneficiaryAccNo = beneficiaryAccNo;
	}
	
	
	

}
