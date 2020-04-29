package pizza.vo;

import java.util.Date;

public class Pizza {
	private String pno;
	private String pmenu;
	private int pprice;
	private Date pdate;
	private String pimg;
	
	
	public String getPno() {
		return pno;
	}
	public void setPno(String pno) {
		this.pno = pno;
	}
	public String getPmenu() {
		return pmenu;
	}
	public void setPmenu(String pmenu) {
		this.pmenu = pmenu;
	}
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	public String getPimg() {
		return pimg;
	}
	public void setPimg(String pimg) {
		this.pimg = pimg;
	}
	
	
}
